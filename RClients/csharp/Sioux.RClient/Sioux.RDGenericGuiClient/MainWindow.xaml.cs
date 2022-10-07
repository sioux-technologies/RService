using System;
using System.Windows;
using JetBrains.Core;
using Microsoft.Win32;
using Sioux.RDGenericGuiClient.ViewModel;

namespace Sioux.RDGenericGuiClient
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
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
            try
            {
                _viewModel.Connect();
            }
            catch (Exception exception)
            {
                MessageBox.Show(exception.ToString(), "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private void TreeView_OnSelectedItemChanged(object sender, RoutedPropertyChangedEventArgs<object> e)
        {
            _viewModel.SelectedNode = TreeView.SelectedItem as RdNodeViewModel;
        }

        private void btnOpen_OnClick(object sender, RoutedEventArgs e)
        {
            try
            {
                var openFileDialog = new OpenFileDialog
                {
                    Filter = "Dot net assemblies|*.dll"
                };
                if (openFileDialog.ShowDialog() == true)
                {
                    _viewModel.OpenCompiledModel(openFileDialog.FileName, types =>
                    {
                        var typeDialog = new SelectTypeDialog("What type is the root?", types);
                        return typeDialog.ShowDialog() == true ? typeDialog.Result : null;
                    });
                }
            }
            catch (Exception exception)
            {
                MessageBox.Show(exception.ToString(), "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        protected override void OnClosed(EventArgs e)
        {
            _viewModel.Disconnect();
            base.OnClosed(e);
        }

        private void btnDisconnect_OnClick(object sender, RoutedEventArgs e)
        {
            _viewModel.Disconnect();
        }
    }
}