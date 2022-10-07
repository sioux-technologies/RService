using System;
using System.ComponentModel;
using System.Runtime.CompilerServices;
using System.Windows.Controls;
using Humanizer;
using JetBrains.Annotations;
using JetBrains.Collections.Viewable;
using JetBrains.Lifetimes;

namespace Sioux.RDGenericGuiClient.ViewModel
{
    public abstract class RdNodePropertyDataViewModel : RdNodePropertyViewModel, IValueEditorViewModel
    {
        public abstract object Value { get; set; }
        
        public abstract Type PropertyType { get; }
    }

    public class RdNodePropertyDataViewModel<T>: RdNodePropertyDataViewModel
    {
        private readonly string _propertyName;
        private readonly IScheduler _scheduler;
        private readonly Lifetime _modelLifetime;
        private readonly IReadonlyProperty<T> _target;
        private readonly Type _definedAs;

        public RdNodePropertyDataViewModel(IScheduler scheduler, Lifetime modelLifetime, IReadonlyProperty<T> target, Type definedAs, string propertyName)
        {
            _scheduler = scheduler;
            _modelLifetime = modelLifetime;
            _target = target;
            _definedAs = definedAs;
            _propertyName = propertyName;
            target.Advise(modelLifetime, x => OnPropertyChanged(nameof(Value)));
            TemplateSelector = new ValueEditorTemplateSelector(PropertyType, IsReadOnly);
        }

        public override string Name => _propertyName.Humanize();

        public override Type PropertyType => typeof(T);

        public override bool IsReadOnly => _definedAs == typeof(IReadonlyProperty<T>);
        
        public override DataTemplateSelector TemplateSelector { get; }

        public override object Value
        {
            get => _target.Maybe.ValueOrDefault;
            set
            {
                if(_target is IViewableProperty<T> writeableTarget)
                    writeableTarget.Value = (T) value;
                else
                    throw new InvalidOperationException("this is a read only property");
            }
        }
    }
    
    
}