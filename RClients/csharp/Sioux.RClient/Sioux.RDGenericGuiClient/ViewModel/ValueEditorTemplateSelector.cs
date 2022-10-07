using System;
using System.Windows;
using System.Windows.Controls;

namespace Sioux.RDGenericGuiClient.ViewModel
{
    internal class ValueEditorTemplateSelector: DataTemplateSelector
    {

        private readonly Type _editorType;
        private readonly bool _isReadOnly;

        public ValueEditorTemplateSelector(Type editorType, bool isReadOnly)
        {
            _editorType = editorType;
            _isReadOnly = isReadOnly;
        }

        public override DataTemplate SelectTemplate(object item, DependencyObject container)
        {
            if (!(container is FrameworkElement contentPresenter)) return null;
                
            //type based template search
            var templateName = $"RdEditor{_editorType.Name}";
                
            if(_isReadOnly)
                templateName = $"RdEditorReadOnly";

            if (contentPresenter.TryFindResource(templateName) is DataTemplate template)
                return template;

            // if failed, then use the unknown template to show there hasn't been found any.
            return contentPresenter.FindResource("RdEditorUnknown") as DataTemplate;
        }
    }
}