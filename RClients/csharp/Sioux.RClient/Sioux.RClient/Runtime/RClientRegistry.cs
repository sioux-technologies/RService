using System;
using System.Collections.Generic;
using Sioux.RClient.Generated.Client;

namespace Sioux.RClient.Runtime
{
    public class RClientRegistry: IRClientRegistry
    {
        public RClientRegistry(IRClientFactory factory)
        {
            Factory = factory;
        }

        private IRClientFactory Factory { get; }

        private readonly Dictionary<RNode, IBaseConcept> _nodes = new();
        private readonly Dictionary<long, RNode> _nodeIdIndex = new();

        public IBaseConcept Resolve(RNode rNode)
        {
            if (!_nodes.ContainsKey(rNode))
            {
                var baseConcept = Factory.Create(rNode, this);
                RegisterNode(rNode, baseConcept);
            }
            return _nodes[rNode];
        }

        public IBaseConcept? Resolve(RId rId)
        {
            if (!_nodeIdIndex.TryGetValue(rId.Id, out var result))
            {
                return null;
            }

            return Resolve(result);
        }

        public T Create<T>() where T : IBaseConcept
        {
            var baseConcept = Factory.Create<T>(this);
            RegisterNode(baseConcept.BackEnd, baseConcept);
            return baseConcept;
        }

        public IBaseConcept Create(Type t)
        {
            var baseConcept = Factory.Create(t, this);
            RegisterNode(baseConcept.BackEnd, baseConcept);
            return baseConcept;
        }

        private void RegisterNode(RNode rNode, IBaseConcept baseConcept)
        {
            var id = rNode.RId.Value.Id;
            baseConcept.OnDispose(() =>
            {
                if (_nodes.ContainsKey(rNode))
                    _nodes.Remove(rNode);
                if (id >= 0 && _nodeIdIndex.ContainsKey(id))
                    _nodeIdIndex.Remove(id);
            }, true); //this is an unmanaged resource, because the GC does not cull the _nodes dictionary
            _nodes.Add(rNode, baseConcept);
            if (id >= 0) // TODO: Remove this check, since it is correctly implemented nowadays
                _nodeIdIndex.Add(id, rNode);
        }
    }
}