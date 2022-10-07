using System;
using System.Collections.ObjectModel;
using System.Reactive.Linq;
using System.Threading;
using DynamicData;
using ReactiveUI;
using Sioux.RClient.Runtime;

namespace Sioux.RClient.Example.Todos.UI.ViewModel
{
    public class TodoViewModel: ReactiveObject
    {
        private readonly IRClientRegistry _registry;
        private readonly ReadOnlyObservableCollection<TodoViewModel> _subItems;

        public TodoViewModel(Todo model, SynchronizationContext synchronizationContext, IRClientRegistry registry)
        {
            _registry = registry;
            Model = model;
            model.SubItems.Connect()
                .Transform(x => new TodoViewModel(x, synchronizationContext, registry))
                .ObserveOn(synchronizationContext)
                .Bind(out _subItems)
                .Subscribe();
            
            AddCommand = new DelegateCommand(Add);
            RemoveCommand = new DelegateCommand(Remove);
        }

        public Todo Model { get; }

        public ReadOnlyObservableCollection<TodoViewModel> SubItems => _subItems;
        
        public DelegateCommand AddCommand { get; }

        public DelegateCommand RemoveCommand { get; }

        public void Add()
        {
            var todo = _registry.Create<Todo>();
            Model.SubItems.Add(todo);
        }
        
        public void Remove()
        {
            Model.Remove();
        }

    }
}