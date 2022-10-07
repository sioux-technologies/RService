using JetBrains.Collections.Viewable;
using JetBrains.Lifetimes;
using Sioux.RClient.Generated.Client;
using Sioux.RClient.Runtime;

namespace Sioux.RClient.Example.Todos
{
    public class Todo: BaseConcept, INamedConcept
    {
        public Todo(RNode backEnd, IScheduler scheduler, Lifetime lifetime, IRClientRegistry registry) : base(backEnd, scheduler, lifetime, registry)
        {
            _priorityHelper = new RPropertyHelper<Priority>(lifetime, backEnd.Properties, OnPropertyChanged, "priority", nameof(Priority));
            OnDispose(_priorityHelper);
            _nameHelper = new RPropertyHelper<string>(lifetime, backEnd.Properties, OnPropertyChanged, "name", nameof(Name));
            OnDispose(_nameHelper);
            _dependentOnHelper = new RChildSingleHelper<TodoReference>("dependentOn", this, OnPropertyChanged, nameof(DependentOn));
            SubItems = new RCollection<Todo>("subItems", this);
        }
        
        public RCollection<Todo> SubItems { get; }

        private readonly RChildSingleHelper<TodoReference> _dependentOnHelper;
        public TodoReference DependentOn
        {
            get => _dependentOnHelper.Value;
            set => _dependentOnHelper.Value = value;
        }

        private readonly RPropertyHelper<Priority> _priorityHelper;
        public Priority Priority
        {
            get => _priorityHelper.Value;
            set => _priorityHelper.Value = value;
        }

        private readonly RPropertyHelper<string> _nameHelper;
        public string Name
        {
            get => _nameHelper.Value;
            set => _nameHelper.Value = value;
        }
    }
}