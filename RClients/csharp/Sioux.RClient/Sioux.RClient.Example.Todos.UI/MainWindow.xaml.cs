using System.Diagnostics;
using System.Linq;
using System.Windows;
using Sioux.RClient.Example.Todos.UI.ViewModel;

namespace Sioux.RClient.Example.Todos.UI
{
    /// <summary>
    ///     Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private ApplicationViewModel _viewModel = new();

        public MainWindow()
        {
            InitializeComponent();
            DataContext = _viewModel;

        }

        private void btnConnect_OnClick(object sender, RoutedEventArgs e)
        {
            _viewModel.Connect();
        }

        private void btnDisconnect_OnClick(object sender, RoutedEventArgs e)
        {
            _viewModel.Disconnect();
        }

        private void btnBreak_OnClick(object sender, RoutedEventArgs e)
        {
            var serviceViewModel = _viewModel.ServiceViewModel;
            var todoViewModels = serviceViewModel.ViewModels;
            var modules = _viewModel.ServiceViewModel.Service.Modules;
            var FirstRootNode = modules.FirstOrDefault()?.Models.FirstOrDefault()?.RootNodes.FirstOrDefault();
            Debugger.Break();
        }
    }
}