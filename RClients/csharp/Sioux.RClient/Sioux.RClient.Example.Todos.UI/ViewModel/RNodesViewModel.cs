using System;
using System.Collections.ObjectModel;
using System.Collections.Specialized;
using System.Diagnostics;
using System.Reactive.Linq;
using System.Threading;
using System.Windows.Threading;
using DynamicData;
using JetBrains.Collections.Viewable;
using JetBrains.Lifetimes;
using Sioux.RClient.Generated.Client;
using Sioux.RClient.Runtime;

namespace Sioux.RClient.Example.Todos.UI.ViewModel
{
    public class RNodesViewModel
    {
        private readonly IObservableList<IBaseConcept> _knownRoots;
        public IScheduler Scheduler { get; }
        public Lifetime ModelLifetime { get; }
        public RServiceModel Service { get; }

        public ReadOnlyObservableCollection<TodoListViewModel> ViewModels => _viewModels;

        private readonly RClientIdentityProvider _identityManager;
        private readonly IRClientFactory _factory;
        private readonly IRClientRegistry _registry;
        private readonly ReadOnlyObservableCollection<TodoListViewModel> _viewModels;

        public RNodesViewModel(IScheduler scheduler, Lifetime modelLifetime, RServiceModel service,
            SynchronizationContext synchronizationContext)
        {
            Scheduler = scheduler;
            ModelLifetime = modelLifetime;
            Service = service;

            _identityManager = new(service);
            _factory = new RClientFactory(scheduler, _identityManager, modelLifetime);
            TodosInitialize.Register(_factory);
            _registry = new RClientRegistry(_factory);

            //creating the language specific objects (e.g. TodoList)
            _knownRoots = service.Modules.Connect(modelLifetime, scheduler)
                .TransformMany(x => x.Models.Connect(modelLifetime, scheduler).AsObservableList())
                .TransformMany(x => x.RootNodes.Connect(modelLifetime, scheduler).AsObservableList())
                .Filter(x => x.Concept.Maybe.HasValue && _factory.Support(x.Concept.Maybe.Value))
                .Transform(_registry.Resolve)
                .AsObservableList();

            //creating ViewModels
            _knownRoots.Connect()
                .Transform(x => x as TodoList)
                .Filter(x => x is not null)
                .Transform(x => new TodoListViewModel(x, synchronizationContext, _registry))
                .ObserveOn(synchronizationContext)
                .Bind(out _viewModels)
                .Subscribe();
        }
    }
}