using System;
using System.Collections.Generic;
using System.Collections.Immutable;
using System.Collections.ObjectModel;
using System.Linq;
using System.Net;
using System.Reflection;
using System.Windows;
using JetBrains.Collections.Viewable;
using JetBrains.Lifetimes;
using JetBrains.Rd;
using JetBrains.Rd.Base;
using JetBrains.Rd.Impl;
using ReactiveUI;

namespace Sioux.RDGenericGuiClient.ViewModel
{
    public class ApplicationViewModel : ReactiveObject
    {
        private readonly ObservableAsPropertyHelper<bool> _canConnect;

        private readonly ObservableAsPropertyHelper<string> _connectionStatus;
        private readonly ObservableCollection<RdNodeViewModel> _serviceViewModel = new();
        private IdKind _idKind = IdKind.Client;

        private bool _isConnected;
        private int _port = 8888;

        private RdNodeViewModel _selectedNode;
        private RdExtBase _service;

        private Type _serviceType;
        
        public ApplicationViewModel()
        {
            _canConnect = this
                .WhenAnyValue(x => x.IsConnected, x => x.ServiceType,
                    (isConnected, serviceType) => !isConnected && serviceType != null)
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

        private IProtocol _protocol;
        private IScheduler _scheduler;
        private LifetimeDefinition _modelLifetimeDef;
        private LifetimeDefinition _socketLifetimeDef;
        private Lifetime _modelLifetime;
        private Lifetime _socketLifetime;

        public Type ServiceType
        {
            get => _serviceType;
            private set => this.RaiseAndSetIfChanged(ref _serviceType, value);
        }

        public RdExtBase Service
        {
            get => _service;
            private set => this.RaiseAndSetIfChanged(ref _service, value);
        }

        public IdKind IdKind
        {
            get => _idKind;
            set => this.RaiseAndSetIfChanged(ref _idKind, value);
        }

        public bool CanConnect => _canConnect.Value;

        public IReadOnlyCollection<RdNodeViewModel> ServiceViewModel => _serviceViewModel;

        public RdNodeViewModel SelectedNode
        {
            get => _selectedNode;
            set => this.RaiseAndSetIfChanged(ref _selectedNode, value);
        }

        public bool IsConnected
        {
            get => _isConnected;
            private set => this.RaiseAndSetIfChanged(ref _isConnected, value);
        }

        public string ConnectionStatus => _connectionStatus.Value;

        public void OpenCompiledModel(string filename, Func<ImmutableList<Type>, Type> selectType)
        {
            var loadedAssembly = Assembly.LoadFile(filename);
            var types = loadedAssembly.DefinedTypes.Where(x => x.IsAssignableTo(typeof(RdExtBase))).OfType<Type>()
                .ToImmutableList();
            Type type = null;
            if (types.IsEmpty)
                throw new Exception("No supported RD models in this assembly");
            type = types.Count == 1 ? types.First() : selectType(types);

            ServiceType = type;
        }

        public void Connect()
        {
            if (ServiceType == null) throw new Exception("Should select a type first");
            if (!ServiceType.IsAssignableTo(typeof(RdExtBase)))
                throw new Exception($"Service Type should inherit from {nameof(RdExtBase)}");

            _modelLifetimeDef = Lifetime.Eternal.CreateNested();
            _socketLifetimeDef = Lifetime.Eternal.CreateNested();

            _modelLifetime = _modelLifetimeDef.Lifetime;
            _socketLifetime = _socketLifetimeDef.Lifetime;

            _scheduler = SingleThreadScheduler.RunOnSeparateThread(_socketLifetime, "Worker", scheduler =>
            {
                IWire wire = IdKind switch
                {
                    IdKind.Client => new SocketWire.Client(_modelLifetime, scheduler,
                        new IPEndPoint(IPAddress.Loopback, Port), "GenericClient"),
                    IdKind.Server => new SocketWire.Server(_modelLifetime, scheduler,
                        new IPEndPoint(IPAddress.Loopback, Port), "GenericClient"),
                    _ => throw new ArgumentOutOfRangeException()
                };

                var serializers = new Serializers(_modelLifetime, scheduler, null);

                _protocol = new Protocol("MpsTestServer", serializers, new Identities(IdKind), scheduler, wire,
                    _socketLifetime);
            });
            _scheduler.Queue(() =>
            {
                Service = (RdExtBase) Activator.CreateInstance(ServiceType, _modelLifetime, _protocol);
                Application.Current.Dispatcher.InvokeAsync(() =>
                {
                    var viewModel = new RdNodeViewModel(_scheduler, _modelLifetime, Service);
                    _serviceViewModel.Add(viewModel);
                    SelectedNode = viewModel;
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
            _serviceViewModel.Clear();
            IsConnected = false;
        }
    }
}