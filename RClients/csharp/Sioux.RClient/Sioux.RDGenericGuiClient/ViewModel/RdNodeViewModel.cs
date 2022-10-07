using System;
using System.Collections.Generic;
using System.Linq;
using System.Windows.Input;
using JetBrains.Collections.Viewable;
using JetBrains.Lifetimes;
using JetBrains.Rd.Base;
using Sioux.RDGenericGuiClient.ViewModel.Commands;

namespace Sioux.RDGenericGuiClient.ViewModel
{
    public class RdNodeViewModel
    {
        private readonly IScheduler _scheduler;
        private readonly Lifetime _modelLifetime;
        public object Target { get; }
        private readonly IRdNodeViewModelParent _parent;
        private readonly IList<RdNodePropertyViewModel> _properties = new List<RdNodePropertyViewModel>();
        private readonly IList<RdNodeChildViewModel> _children = new List<RdNodeChildViewModel>();

        public RdNodeViewModel(IScheduler scheduler, Lifetime modelLifetime, object target,
            IRdNodeViewModelParent parent = null)
        {
            bool TestType<T>(Type EncapsulatedType, Type PropertyType)
            {
                return typeof(T).GetGenericTypeDefinition().MakeGenericType(EncapsulatedType)
                    .IsAssignableFrom(PropertyType);
            }
            
            _scheduler = scheduler;
            _modelLifetime = modelLifetime;
            Target = target;
            _parent = parent;
            foreach (var propertyInfo in target.GetType().GetProperties())
            {
                if (propertyInfo.PropertyType.IsGenericType)
                {
                    var encapsulatedType = propertyInfo.PropertyType.GenericTypeArguments.First();
                    if(TestType<IReadonlyProperty<string>>(encapsulatedType, propertyInfo.PropertyType))
                    {
                        if (encapsulatedType.IsAssignableTo(typeof(RdBindableBase)))
                        {
                            var child = (RdNodeChildViewModel) Activator.CreateInstance(typeof(RdNodeChildSingleViewModel<string>).GetGenericTypeDefinition().MakeGenericType(encapsulatedType),
                                _scheduler, _modelLifetime, propertyInfo.GetValue(target), propertyInfo.PropertyType, propertyInfo.Name);
                            _children.Add(child);
                        }
                        else
                        {
                            var property = (RdNodePropertyViewModel) Activator.CreateInstance(typeof(RdNodePropertyDataViewModel<string>).GetGenericTypeDefinition().MakeGenericType(encapsulatedType), 
                                _scheduler, _modelLifetime, propertyInfo.GetValue(target), propertyInfo.PropertyType, propertyInfo.Name);
                            _properties.Add(property);
                        }
                    }
                    else if(TestType<IViewableList<string>>(encapsulatedType, propertyInfo.PropertyType))
                    {
                        var child = (RdNodeChildViewModel) Activator.CreateInstance(typeof(RdNodeChildMultiViewModel<string>).GetGenericTypeDefinition().MakeGenericType(encapsulatedType),
                            _scheduler, _modelLifetime, propertyInfo.GetValue(target), propertyInfo.PropertyType, propertyInfo.Name);
                        _children.Add(child);

                    }
                    else if(TestType<ISignal<string>>(encapsulatedType, propertyInfo.PropertyType))
                    {
                        var property = (RdNodePropertyViewModel) Activator.CreateInstance(typeof(RdNodePropertySignalViewModel<string>).GetGenericTypeDefinition().MakeGenericType(encapsulatedType), 
                            _scheduler, _modelLifetime, propertyInfo.GetValue(target), propertyInfo.PropertyType, propertyInfo.Name);
                        _properties.Add(property);

                    }
                }
            }
        }

        public string Name
        {
            get
            {
                var name = Properties.OfType<RdNodePropertyDataViewModel>()
                    .FirstOrDefault(x => x.Name.ToLower() == "name");
                if (name != null && !string.IsNullOrWhiteSpace(name.Value.ToString()))
                {
                    return $"{name.Value} ({Target.GetType().Name})";
                }
                else
                {
                    return Target.GetType().Name;    
                }
            }
        }

        public IEnumerable<RdNodePropertyViewModel> Properties => _properties;
        public IEnumerable<RdNodeChildViewModel> Children => _children;

        public ICommand RemoveCommand => new DeleteItem(this);
        
        public bool CanBeRemove => _parent != null;

        public void Remove()
        {
            _parent.RemoveItem(Target);
        }
            
    }
}