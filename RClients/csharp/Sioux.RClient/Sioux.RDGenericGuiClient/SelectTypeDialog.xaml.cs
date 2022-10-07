using System;
using System.Collections.Immutable;
using System.Windows;
using System.Windows.Controls;

namespace Sioux.RDGenericGuiClient
{
    public partial class SelectTypeDialog : Window
    {
        public string Question { get; }
        public ImmutableList<Type> Types { get; }

        public Type Result { get; private set; } = null;

        public SelectTypeDialog(string question, ImmutableList<Type> types)
        {
            Question = question;
            Types = types;
            InitializeComponent();
            DataContext = this;
        }

        private void btnType_OnClick(object sender, RoutedEventArgs e)
        {
            if(sender is not Button {DataContext: Type type}) return;
            Result = type;
            DialogResult = true;
        }

        private void btnCancel_OnClick(object sender, RoutedEventArgs e)
        {
            DialogResult = false;
        }
    }
}