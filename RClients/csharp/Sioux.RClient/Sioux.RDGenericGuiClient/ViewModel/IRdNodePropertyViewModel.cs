using System.ComponentModel;
using System.Runtime.CompilerServices;
using System.Windows.Controls;
using JetBrains.Annotations;

namespace Sioux.RDGenericGuiClient.ViewModel
{
    public abstract class RdNodePropertyViewModel: INotifyPropertyChanged
    {
        public abstract string Name { get; }
        public abstract bool IsReadOnly { get; }
        public abstract DataTemplateSelector TemplateSelector { get; }
        
        public event PropertyChangedEventHandler PropertyChanged;

        [NotifyPropertyChangedInvocator]
        protected virtual void OnPropertyChanged([CallerMemberName] string propertyName = null)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
    }
}