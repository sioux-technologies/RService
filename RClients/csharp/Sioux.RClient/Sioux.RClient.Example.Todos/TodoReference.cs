using JetBrains.Collections.Viewable;
using JetBrains.Lifetimes;
using Sioux.RClient.Generated.Client;
using Sioux.RClient.Runtime;

namespace Sioux.RClient.Example.Todos
{
    public partial class TodoReference: Sioux.RClient.Runtime.BaseConcept
    {
        public TodoReference(RNode backEnd, IScheduler scheduler, Lifetime lifetime, IRClientRegistry registry) : base(backEnd, scheduler, lifetime, registry)
        {
            _todoHelper = new RReferenceHelper<Todo>(lifetime, backEnd.References, registry, OnPropertyChanged, "todo", nameof(Todo));
            OnDispose(_todoHelper);
        }


        private readonly RReferenceHelper<Todo> _todoHelper;
        public Todo Todo
        {
            get => _todoHelper.Value;
            set => _todoHelper.Value = value;
        }


    }
}