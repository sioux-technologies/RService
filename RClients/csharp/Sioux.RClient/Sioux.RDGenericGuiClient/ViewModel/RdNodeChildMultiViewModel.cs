using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Reactive.Linq;
using DynamicData;
using DynamicData.Binding;
using Humanizer;
using JetBrains.Collections.Viewable;
using JetBrains.Lifetimes;
using JetBrains.Rd.Impl;
using Sioux.RDGenericGuiClient.ViewModel.Commands;

namespace Sioux.RDGenericGuiClient.ViewModel
{
    public class RdNodeChildMultiViewModel<T>: RdNodeChildViewModel
    {
        private readonly string _propertyName;
        private readonly IScheduler _scheduler;
        private readonly Lifetime _modelLifetime;
        private readonly IViewableList<T> _target;
        private readonly Type _definedAs;

        public RdNodeChildMultiViewModel(IScheduler scheduler, Lifetime modelLifetime, IViewableList<T> target, Type definedAs, string propertyName)
        {
            _scheduler = scheduler;
            _modelLifetime = modelLifetime;
            _target = target;
            _definedAs = definedAs;
            _propertyName = propertyName;

            if (target is RdList<T> rdListTarget)
            {
                rdListTarget.ToObservableChangeSet<RdList<T>, T>()
                    .Transform(x => new RdNodeViewModel(_scheduler, modelLifetime, x, this))
                    .Bind(out var tmp)
                    .Subscribe();
                Items = tmp;
            }
        }

        public override string Name => _propertyName.Humanize();

        public override ReadOnlyObservableCollection<RdNodeViewModel> Items { get; }

        public override bool CanAddToList => true;

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
            if(!type.IsAssignableTo(typeof(T))) return;
            T addedItem = (T) Activator.CreateInstance(type);
            _target.Add(addedItem);
        }

        public override void RemoveItem(object item)
        {
            if(!(item is T itemT)) return;
            _target.Remove(itemT);
        }
    }
}