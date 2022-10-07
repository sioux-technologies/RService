using System;
using System.Net;
using JetBrains.Collections.Viewable;
using JetBrains.Lifetimes;
using JetBrains.Rd;
using JetBrains.Rd.Impl;
using Sioux.RClient.Generated.Symmetric;

namespace Sioux.Rd.MultiServer
{
    public class Connection
    {
        private IProtocol _protocol;
        private RServiceModel _service;

        private IProtocol Protocol => _protocol;

        private IScheduler Scheduler { get; }
        private LifetimeDefinition ModelLifetimeDef { get; } = Lifetime.Eternal.CreateNested();
        private LifetimeDefinition SocketLifetimeDef { get; } = Lifetime.Eternal.CreateNested();
        private Lifetime ModelLifetime { get; }
        private Lifetime SocketLifetime { get; }

        public RServiceModel Service => _service;

        public IdKind IdKind { get; }
        
        public Connection(SingleThreadScheduler scheduler, IdKind idKind, int port)
        {
            IdKind = idKind;
            
            ModelLifetime = ModelLifetimeDef.Lifetime;
            SocketLifetime = SocketLifetimeDef.Lifetime;

            Scheduler = scheduler;
            
            IWire client = idKind switch
            {
                IdKind.Client => new SocketWire.Client(ModelLifetime, scheduler,
                    new IPEndPoint(IPAddress.Loopback, port)),
                IdKind.Server => new SocketWire.Server(ModelLifetime, scheduler,
                    new IPEndPoint(IPAddress.Loopback, port)),
                _ => throw new ArgumentOutOfRangeException(nameof(idKind), idKind, null)
            };

            var serializers = new Serializers(ModelLifetime, scheduler, null);
            
            _protocol = new Protocol("MpsTestServer", serializers, new Identities(idKind), scheduler, client,
                SocketLifetime);
            
            _service = new RServiceModel(ModelLifetime, Protocol);

        }
    }
}