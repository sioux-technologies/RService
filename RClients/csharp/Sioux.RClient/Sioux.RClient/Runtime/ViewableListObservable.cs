using System;
using DynamicData;
using JetBrains.Collections.Viewable;
using JetBrains.Lifetimes;

namespace Sioux.RClient.Runtime
{
    public class ViewableListObservable<T>: IObservable<IChangeSet<T>>
    {
        private readonly IViewableList<T> _source;
        private readonly Lifetime _lifetime;
        private readonly IScheduler _scheduler;

        public ViewableListObservable(IViewableList<T> source, Lifetime lifetime, IScheduler scheduler)
        {
            _source = source;
            _lifetime = lifetime;
            _scheduler = scheduler;
        }

        public IDisposable Subscribe(IObserver<IChangeSet<T>> observer)
        {
            var lifetimeDefinition = new LifetimeDefinition(_lifetime);
            _scheduler.Queue(() =>
            {
                _source.Advise(lifetimeDefinition.Lifetime, e =>
                {
                    var result = e.Kind switch
                    {
                        AddUpdateRemove.Add    => new ChangeSet<T>(new[] { new Change<T>(ListChangeReason.Add, e.NewValue, e.Index) }),
                        AddUpdateRemove.Update => new ChangeSet<T>(new[] { new Change<T>(ListChangeReason.Replace, e.NewValue, e.Index) }),
                        AddUpdateRemove.Remove => new ChangeSet<T>(new[] { new Change<T>(ListChangeReason.Remove, e.OldValue, e.Index) }),
                        _ => throw new ArgumentOutOfRangeException()
                    };

                    observer.OnNext(result);
                });
            });
            return lifetimeDefinition;
        }
    }
}