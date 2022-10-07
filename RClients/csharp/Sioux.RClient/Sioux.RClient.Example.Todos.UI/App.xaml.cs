using System.Diagnostics;
using System.Windows;

namespace Sioux.RClient.Example.Todos.UI
{
    /// <summary>
    ///     Interaction logic for App.xaml
    /// </summary>
    public partial class App : Application
    {
        protected override void OnStartup(StartupEventArgs e)
        {
            base.OnStartup(e);
            PresentationTraceSources.DataBindingSource.Listeners.Add(new DebugTraceListener());

        }
    }
    
    public class DebugTraceListener : TraceListener
    {

        public DebugTraceListener()
        {
        }

        public override void Write(string message)
        {
        }

        public override void WriteLine(string message)
        {
            Debugger.Break();
        }
    }
}