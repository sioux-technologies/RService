using System.Collections.ObjectModel;
using DynamicData;
using System;
using System.Reactive.Linq;
using System.Threading;
using System.Windows.Threading;
using ReactiveUI;
using Sioux.RClient.Runtime;

namespace Sioux.RClient.Example.Todos.UI.ViewModel
{
    public class TodoListViewModel: ReactiveObject
    {
        private readonly IRClientRegistry _registry;
        private readonly ReadOnlyObservableCollection<TodoViewModel> _items;

        public TodoListViewModel(TodoList model, SynchronizationContext synchronizationContext, IRClientRegistry registry)
        {
            _registry = registry;
            Model = model;
            model.Items.Connect()
                .Transform(x => new TodoViewModel(x, synchronizationContext, registry))
                .ObserveOn(synchronizationContext)
                .Bind(out _items)
                .Subscribe();

            AddCommand = new DelegateCommand(Add);
        }

        public TodoList Model { get; }

        public ReadOnlyObservableCollection<TodoViewModel> Items => _items;
        
        public DelegateCommand AddCommand { get; }

        public void Add()
        {
            var todo = _registry.Create<Todo>();
            Model.Items.Add(todo);
        }
    }
}