using JetBrains.Collections.Viewable;
using JetBrains.Lifetimes;
using Sioux.RClient.Generated.Client;
using Sioux.RClient.Runtime;

namespace Sioux.RClient.Example.Todos
{
    public class TodoList: BaseConcept, INamedConcept
    {
        public TodoList(RNode backEnd, IScheduler scheduler, Lifetime lifetime, IRClientRegistry registry) : base(backEnd, scheduler, lifetime, registry)
        {
            _nameHelper = new RPropertyHelper<string>(lifetime, backEnd.Properties, OnPropertyChanged, "name", nameof(Name));
            OnDispose(_nameHelper);
            Items = new RCollection<Todo>("items", this);
        }

        public RCollection<Todo> Items { get; }

        #region implementation INamedConcept

        private readonly RPropertyHelper<string> _nameHelper;
        public string Name
        {
            get => _nameHelper.Value;
            set => _nameHelper.Value = value;
        }
        
        #endregion
    }
}