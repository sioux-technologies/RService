using System;
using System.Collections.Generic;
using JetBrains.Collections.Viewable;
using JetBrains.Lifetimes;
using Sioux.RClient.Generated.Client;

namespace Sioux.RClient.Runtime
{
    public class RClientFactory : IRClientFactory
    {
        private readonly Dictionary<string, Type> _rConceptNamesIndex = new();
        private readonly Dictionary<Type, string> _rTypesIndex = new();

        private readonly IScheduler _scheduler;
        private readonly Lifetime _modelLifetime;
        private readonly RClientIdentityProvider _identityManager;

        public RClientFactory(IScheduler scheduler, RClientIdentityProvider identityManager, Lifetime modelLifetime)
        {
            _scheduler = scheduler;
            _modelLifetime = modelLifetime;
            _identityManager = identityManager;
        }

        public void Register(Type t, string rConceptName)
        {
            if (_rTypesIndex.ContainsKey(t)) throw new InvalidOperationException("Type is already registered under a different name");
            if (_rConceptNamesIndex.ContainsKey(rConceptName)) throw new InvalidOperationException("RConcept name is already registered for a different a type");
            if (!typeof(IBaseConcept).IsAssignableFrom(t)) throw new ArgumentException("t should inherit from BaseConcept", nameof(t));
            _rTypesIndex.Add(t, rConceptName);
            _rConceptNamesIndex.Add(rConceptName, t);
        }

        public IBaseConcept Create(RNode backEnd, IRClientRegistry registry)
        {
            if(!backEnd.Concept.Maybe.HasValue)
                throw new ArgumentException("Not correctly instantiated RNode", nameof(backEnd));
            var rConceptName = backEnd.Concept.Maybe.Value;
            if (!_rConceptNamesIndex.ContainsKey(backEnd.Concept.Maybe.ValueOrDefault))
                return new BaseConcept(backEnd, _scheduler, _modelLifetime, registry);//unknown type, so need most generic type is created to keep things working
            return (BaseConcept)Activator.CreateInstance(_rConceptNamesIndex[rConceptName], backEnd, _scheduler, _modelLifetime, registry)!;
        }

        public bool Support(string rConceptName)
        {
            return _rConceptNamesIndex.ContainsKey(rConceptName);
        }

        public T Create<T>(IRClientRegistry registry) where T : IBaseConcept
        {
            return (T)Create(typeof(T), registry);
        }

        public IBaseConcept Create(Type t, IRClientRegistry registry)
        {
            if (!_rTypesIndex.ContainsKey(t))
                throw new ArgumentException($"Type {t} is not supported", nameof(t));

            var backEnd = new RNode
            {
                RId = { Value = _identityManager.Next() },
                Concept = { Value = _rTypesIndex[t]}
            };
            return Create(backEnd, registry);
        }
    }
}