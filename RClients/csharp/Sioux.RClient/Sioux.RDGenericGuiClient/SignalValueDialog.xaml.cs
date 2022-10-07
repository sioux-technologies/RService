using System.Windows;

namespace Sioux.RDGenericGuiClient
{
    public partial class SignalValueDialog : Window
    {
        public SignalValueDialog()
        {
            InitializeComponent();
        }


        private void ButtonCancel_OnClick(object sender, RoutedEventArgs e)
        {
            DialogResult = false;
        }

        private void ButtonOk_OnClick(object sender, RoutedEventArgs e)
        {
            DialogResult = true;
        }
    }
}