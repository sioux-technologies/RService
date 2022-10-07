using System;
using DynamicData;
using JetBrains.Collections.Viewable;
using JetBrains.Lifetimes;

namespace Sioux.RClient.Runtime
{
    public static class ViewableListExtensions
    {
        public static IObservable<IChangeSet<T>> Connect<T>(this IViewableList<T> self, Lifetime lifetime, IScheduler scheduler)
        {
            return new ViewableListObservable<T>(self, lifetime, scheduler);
        }
    }
}