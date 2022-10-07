using System;
using System.Windows.Controls;
using ReactiveUI;

namespace Sioux.RDGenericGuiClient.ViewModel
{
    public class SignalValueDialogViewModel: ReactiveObject, IValueEditorViewModel
    {
        public SignalValueDialogViewModel(Type editorType)
        {
            TemplateSelector = new ValueEditorTemplateSelector(editorType, false);
            if(editorType.IsValueType)
                Value = Activator.CreateInstance(editorType);
        }

        public object Value { get; set; }

        public DataTemplateSelector TemplateSelector { get; }

    }
}