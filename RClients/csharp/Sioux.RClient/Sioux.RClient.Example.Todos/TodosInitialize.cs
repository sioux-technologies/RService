using Sioux.RClient.Runtime;

namespace Sioux.RClient.Example.Todos
{
    public class TodosInitialize: ILanguageInitialization
    {
        public static void Register(IRClientFactory factory)
        {
            factory.Register(typeof(Todo), "eu.sioux.todos.Todo");
            factory.Register(typeof(TodoList), "eu.sioux.todos.TodoList");
        }

        void ILanguageInitialization.Register(IRClientFactory factory)
        {
            Register(factory);
        }
    }
}