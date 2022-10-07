using System;
using System.Windows;
using System.Windows.Controls;
using JetBrains.Collections.Viewable;
using JetBrains.Core;
using JetBrains.Lifetimes;

namespace Sioux.RDGenericGuiClient.ViewModel
{
    public abstract class RdNodePropertySignalViewModel: RdNodePropertyViewModel
    {
        public RdNodePropertySignalViewModel()
        {
            TemplateSelector = new EditorTemplateSelector();
            ValueTemplateSelector = new ValueEditorTemplateSelector(CallType, false);
        }

        public override DataTemplateSelector TemplateSelector { get; }
        public DataTemplateSelector ValueTemplateSelector { get; }
        public abstract object LastValue { get; }
        public abstract DateTime LastCall { get; }
        public abstract Type CallType { get; }

        private class EditorTemplateSelector: DataTemplateSelector
        {
            public override DataTemplate SelectTemplate(object item, DependencyObject container)
            {
                if (container is not FrameworkElement contentPresenter) return null;
                return contentPresenter.TryFindResource("RdSignal") as DataTemplate;
            }
        }

        protected abstract void Fire(object value);

        public void Fire(Func<(bool success, object value)> valueFromUser)
        {
            if (CallType.IsAssignableTo(typeof(Unit)))//Unit == void, and there is a single instance of Unit
                Fire(Unit.Instance);
            else
            {
                var (success, value) = valueFromUser();
                if(success)
                    Fire(value);
            }
        }
    }

    public class RdNodePropertySignalViewModel<T> : RdNodePropertySignalViewModel
    {
        private readonly IScheduler _scheduler;
        private readonly Lifetime _modelLifetime;
        private readonly ISignal<T> _target;
        private readonly Type _definedAs;
        private object _lastValue;
        private DateTime _lastCall;

        public override string Name { get; }

        public override bool IsReadOnly => false;

        public override object LastValue => _lastValue;

        public override DateTime LastCall => _lastCall;

        public override Type CallType => typeof(T);

        public RdNodePropertySignalViewModel(IScheduler scheduler, Lifetime modelLifetime, ISignal<T> target, Type definedAs,
            string propertyName)
        {
            _scheduler = scheduler;
            _modelLifetime = modelLifetime;
            _target = target;
            _definedAs = definedAs;
            Name = propertyName;
            _target.Advise(modelLifetime, obj =>
            {
                _lastValue = obj;
                _lastCall = DateTime.Now;
                OnPropertyChanged(nameof(LastValue));
                OnPropertyChanged(nameof(LastCall));
            });
        }

        protected override void Fire(object value)
        {
            _scheduler.Queue(() => _target.Fire((T)value));
        }


    }
}