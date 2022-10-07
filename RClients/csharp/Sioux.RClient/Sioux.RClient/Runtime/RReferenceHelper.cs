using System;
using System.Linq;
using JetBrains.Collections.Viewable;
using JetBrains.Lifetimes;
using Sioux.RClient.Generated.Client;

namespace Sioux.RClient.Runtime
{
    public class RReferenceHelper<T>: IDisposable where T: class, IBaseConcept
    {
        public RReferenceHelper(Lifetime lifetime, IViewableList<RReference> references,
            IRClientRegistry registry, Action<string?>? referenceChangedHandler,
            string rdReferenceName, string? cSharpPropertyName)
        {
            Lifetime = lifetime;
            References = references;
            _registry = registry;
            ReferenceChangedHandler = referenceChangedHandler;
            RdReferenceName = rdReferenceName;
            CSharpPropertyName = cSharpPropertyName;

            References.Advise(lifetime, e =>
            {
                if (e.OldValue == _backEndReference)
                {
                    DeregisterReference();
                }

                if (e.NewValue is not null && e.NewValue.Name.Maybe.ValueOrDefault == RdReferenceName)
                {
                    RegisterNewReference(e.NewValue);
                    ReferenceChangedHandler?.Invoke(CSharpPropertyName);
                }
            });

            var reference = references.FirstOrDefault(x => x.Name.Maybe.ValueOrDefault == RdReferenceName);
            if (reference is not null)
                RegisterNewReference(reference);
        }

        private void RegisterNewReference(RReference newReference)
        {
            DeregisterReference();
            _backendPropertyLifeTimeDefinition = new LifetimeDefinition(Lifetime);
            _backEndReference = newReference;
            _backEndReference.TargetNodeId.Advise(_backendPropertyLifeTimeDefinition.Lifetime, _ =>
            {
                ReferenceChangedHandler?.Invoke(CSharpPropertyName);
            });
        }

        private void DeregisterReference()
        {
            _backendPropertyLifeTimeDefinition?.Terminate();
            _backendPropertyLifeTimeDefinition = null;
            _backEndReference = null;
        }

        private RReference? _backEndReference;
        private LifetimeDefinition? _backendPropertyLifeTimeDefinition;
        private readonly IRClientRegistry _registry;

        private Lifetime Lifetime { get; }
        private IViewableList<RReference> References { get; }
        
        private Action<string?>? ReferenceChangedHandler { get; }
        private string RdReferenceName { get; }
        private string? CSharpPropertyName { get; }
        
        public T? Value
        {
            get
            {
                if (_backEndReference == null) return null;
                return _registry.Resolve(_backEndReference.TargetNodeId.Value) as T;
            }
            set
            {
                if (_backEndReference is null)
                {
                    _backEndReference = new RReference
                    {
                        Name = { Value = RdReferenceName },
                        TargetNodeId = { Value = value?.BackEnd.RId.Value }
                    };
                    References.Add(_backEndReference);
                }
                else
                {
                    _backEndReference.TargetNodeId.Value = value?.BackEnd.RId.Value;
                }
            }
        }

        public void Dispose()
        {
            _backendPropertyLifeTimeDefinition?.Dispose();
        }
    }
}