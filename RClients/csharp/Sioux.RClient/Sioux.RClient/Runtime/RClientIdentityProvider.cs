using System.Collections.Generic;
using System.Linq;
using System.Threading;
using Sioux.RClient.Generated.Client;

namespace Sioux.RClient.Runtime
{

    public class RClientIdentityProvider : IdentityProviderBase
    {
        private readonly RServiceModel _service;
        private long _idCounter;
        public RClientIdentityProvider(RServiceModel service) : base(PeerKind.Client)
        {
            _service = service;
            _idCounter = -1; //todo because of a bug this is neccesary, it should be initialized on baseClientId
        }

        public override RId Next()
        {
            //todo: because the server has a bug that it does not reinitialize the id correctly, so the highest id is searched and that is used as an id.
            if (_idCounter < 0)
            {
                _idCounter = _service.Modules.SelectMany(x => x.Models)
                    .SelectMany(x => x.RootNodes)
                    .SelectMany(GetDescendants)
                    .Select(x => x.RId.Maybe.ValueOrDefault.Id)
                    .Where(id => id % 2 == baseClientId)
                    .DefaultIfEmpty(baseClientId)
                    .Max();    
            }
            
            var value = Interlocked.Add(ref _idCounter, 2);
            return new RId(value);
        }
        
        private IEnumerable<RNode> GetDescendants(RNode node)
        {
            yield return node;
            foreach (var rNode in node.Children.SelectMany(GetDescendants))
            {
                yield return rNode;
            }
        }
    }
}