using System;
using System.Collections.Generic;
using System.Linq;
using JetBrains.Annotations;
using JetBrains.Collections.Viewable;
using JetBrains.Rd.Base;

namespace Sioux.Rd.MultiServer.Synchronization
{
    public class RdNodeSynchronizer
    {
        private readonly IScheduler _scheduler;
        private readonly object _primaryTarget;
        private readonly object _secondaryTarget;
        private readonly IList<RdNodePropertySynchronization> _properties = new List<RdNodePropertySynchronization>();

        public RdNodeSynchronizer(IScheduler scheduler, [NotNull] object primaryTarget, [NotNull] object secondaryTarget)
        {
            if (primaryTarget == null) throw new ArgumentNullException(nameof(primaryTarget));
            if (secondaryTarget == null) throw new ArgumentNullException(nameof(secondaryTarget));
            if (primaryTarget?.GetType() != secondaryTarget?.GetType()) throw new ArgumentException();
            
            _scheduler = scheduler;
            _primaryTarget = primaryTarget;
            _secondaryTarget = secondaryTarget;
            
            foreach (var propertyInfo in primaryTarget.GetType().GetProperties())
            {
                if (propertyInfo.PropertyType.IsGenericType)
                {
                    var encapsulatedType = propertyInfo.PropertyType.GenericTypeArguments.First();
                    if (propertyInfo.PropertyType.GetGenericTypeDefinition().Name ==
                        typeof(IViewableProperty<string>).GetGenericTypeDefinition().Name)
                    {
                        if (encapsulatedType.IsAssignableTo(typeof(RdBindableBase)))
                        {
                            // var child = (RdNodeChildViewModel) Activator.CreateInstance(typeof(RdNodeChildSingleViewModel<string>).GetGenericTypeDefinition().MakeGenericType(encapsulatedType),
                            //     _scheduler, propertyInfo.GetValue(target), propertyInfo.Name);
                            // _children.Add(child);
                        }
                        else
                        {
                            var property = (RdNodePropertySynchronization) Activator.CreateInstance(typeof(RdNodePropertySynchronization<string>).GetGenericTypeDefinition().MakeGenericType(encapsulatedType), 
                                _scheduler, propertyInfo.GetValue(_primaryTarget), propertyInfo.GetValue(_secondaryTarget));
                            _properties.Add(property);
                        }
                    }
                    else if (propertyInfo.PropertyType.GetGenericTypeDefinition().Name ==
                             typeof(IViewableList<string>).GetGenericTypeDefinition().Name)
                    {
                        // var child = (RdNodeChildViewModel) Activator.CreateInstance(typeof(RdNodeChildMultiViewModel<string>).GetGenericTypeDefinition().MakeGenericType(encapsulatedType),
                        //     _scheduler, propertyInfo.GetValue(target), propertyInfo.Name);
                        // _children.Add(child);

                    }
                }
            }
        }
        
        public IEnumerable<RdNodePropertySynchronization> Properties => _properties;
    }
}