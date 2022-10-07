using System.Diagnostics;
using System.Linq;
using System.Net;
using System.Windows;
using System.Windows.Threading;
using JetBrains.Collections.Viewable;
using JetBrains.Lifetimes;
using JetBrains.Rd;
using JetBrains.Rd.Impl;
using ReactiveUI;
using Sioux.RClient.Generated.Client;

namespace Sioux.RClient.Example.Todos.UI.ViewModel
{
    public class ApplicationViewModel : ReactiveObject
    {
        private readonly ObservableAsPropertyHelper<bool> _canConnect;

        private readonly ObservableAsPropertyHelper<string> _connectionStatus;

        private bool _isConnected;
        private Lifetime _modelLifetime;
        private LifetimeDefinition _modelLifetimeDef;
        private int _port = 8888;

        private IProtocol _protocol;
        private IScheduler _scheduler;

        private RServiceModel _service;

        private Lifetime _socketLifetime;
        private LifetimeDefinition _socketLifetimeDef;
        private RNodesViewModel _serviceViewModel;

        public ApplicationViewModel()
        {
            _canConnect = this
                .WhenAnyValue(x => x.IsConnected, isConnected => !isConnected)
                .ToProperty(this, model => model.CanConnect);

            _connectionStatus = this
                .WhenAnyValue(x => x.IsConnected, b => b ? "Connected" : "Not connected")
                .ToProperty(this, model => model.ConnectionStatus);
        }

        public int Port
        {
            get => _port;
            set => this.RaiseAndSetIfChanged(ref _port, value);
        }

        public RServiceModel Service
        {
            get => _service;
            private set => this.RaiseAndSetIfChanged(ref _service, value);
        }

        public bool CanConnect => _canConnect.Value;

        public RNodesViewModel ServiceViewModel
        {
            get => _serviceViewModel;
            private set => this.RaiseAndSetIfChanged(ref _serviceViewModel, value);
        }

        public bool IsConnected
        {
            get => _isConnected;
            private set => this.RaiseAndSetIfChanged(ref _isConnected, value);
        }

        public string ConnectionStatus => _connectionStatus.Value;

        public void Connect()
        {
            _modelLifetimeDef = Lifetime.Eternal.CreateNested();
            _socketLifetimeDef = Lifetime.Eternal.CreateNested();

            _modelLifetime = _modelLifetimeDef.Lifetime;
            _socketLifetime = _socketLifetimeDef.Lifetime;

            _scheduler = SingleThreadScheduler.RunOnSeparateThread(_socketLifetime, "Worker", scheduler =>
            {
                IWire wire = new SocketWire.Client(_modelLifetime, scheduler, new IPEndPoint(IPAddress.Loopback, Port),
                    "TodoListClient");

                var serializers = new Serializers(_modelLifetime, scheduler, null);

                _protocol = new Protocol("TodoListClient", serializers, new Identities(IdKind.Client), scheduler, wire,
                    _socketLifetime);
            });
            _scheduler.Queue(() =>
            {
                Service = new RServiceModel(_modelLifetime, _protocol);
                Application.Current.Dispatcher.InvokeAsync(() =>
                {
                    ServiceViewModel = new RNodesViewModel(_scheduler, _modelLifetime, Service, new DispatcherSynchronizationContext(Application.Current.Dispatcher));
                });
            });
            IsConnected = true;
        }

        public void Disconnect()
        {
            _modelLifetimeDef?.Terminate();
            _socketLifetimeDef?.Terminate();
            _protocol = null;
            _scheduler = null;
            _modelLifetimeDef = null;
            _socketLifetimeDef = null;
            _modelLifetime = default;
            _socketLifetime = default;
            ServiceViewModel = null;
            IsConnected = false;
        }
    }
}