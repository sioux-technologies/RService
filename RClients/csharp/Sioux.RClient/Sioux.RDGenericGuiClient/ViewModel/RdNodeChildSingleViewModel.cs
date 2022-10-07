using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using Dynamitey;
using Humanizer;
using JetBrains.Collections.Viewable;
using JetBrains.Lifetimes;
using ReactiveUI;
using Sioux.RDGenericGuiClient.ViewModel.Commands;

namespace Sioux.RDGenericGuiClient.ViewModel
{
    public class RdNodeChildSingleViewModel<T>: RdNodeChildViewModel
    {
        private readonly string _propertyName;
        private readonly IScheduler _scheduler;
        private readonly Lifetime _modelLifetime;
        private readonly IReadonlyProperty<T> _target;
        private readonly Type _definedAs;
        private readonly ObservableCollection<RdNodeViewModel> _item = new();

        public RdNodeChildSingleViewModel(IScheduler scheduler, Lifetime modelLifetime, IReadonlyProperty<T> target, Type definedAs, string propertyName)
        {
            _scheduler = scheduler;
            _modelLifetime = modelLifetime;
            _target = target;
            _definedAs = definedAs;
            _propertyName = propertyName;
            Update();
            target.Advise(modelLifetime, x =>
            {
                Update();
            });
        }

        private void Update()
        {
            var maybe = _target.Maybe;
            if(_item.FirstOrDefault()?.Target == (object) _target.Maybe.ValueOrDefault) return;
            _item.Clear();
            if (maybe.HasValue)
                _item.Add(new RdNodeViewModel(_scheduler, _modelLifetime, maybe.Value, this));
        }

        public override string Name => _propertyName.Humanize();

        public override IEnumerable<object> Items => _item;

        public override bool CanAddToList => _item.FirstOrDefault() == null && _target is IViewableProperty<T>;
        public override IEnumerable<AddListItem> SupportedListItemTypes
        {
            get
            {
                return AppDomain.CurrentDomain.GetAssemblies().SelectMany(x => x.DefinedTypes)
                    .Where(x => x.IsAssignableTo(typeof(T))).Select(x => new AddListItem(this, x));
            }
        }

        public override void CreateItem(Type type)
        {
            base.CreateItem(type);
            
            if(_target is not IViewableProperty<T> writeableTarget) return;
            if(!type.IsAssignableTo(typeof(T))) return;
            var addedItem = (T) Activator.CreateInstance(type);
            writeableTarget.Value = addedItem;
        }

        public override void RemoveItem(object item)
        {
            base.RemoveItem(item);
            if(_target is not IViewableProperty<T> writeableTarget) return;
            if (item == _item.FirstOrDefault()?.Target)
            {
                writeableTarget.Value = default;
            }
        }
    }
}