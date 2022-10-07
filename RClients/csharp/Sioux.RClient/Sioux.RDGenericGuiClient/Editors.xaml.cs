using System.Windows;
using Sioux.RDGenericGuiClient.ViewModel;

namespace Sioux.RDGenericGuiClient
{
    public partial class Editors
    {
        private void ButtonSignalFire_OnClick(object sender, RoutedEventArgs e)
        {
            if(sender is not FrameworkElement {DataContext: RdNodePropertySignalViewModel viewModel}) return;
            viewModel.Fire(() =>
            {
                var dialogViewModel = new SignalValueDialogViewModel(viewModel.CallType);
                var dialog = new SignalValueDialog()
                {
                    DataContext = dialogViewModel,
                };
                var success = dialog.ShowDialog() ?? false;
                return (success, dialogViewModel.Value);
            });
        }
    }
}