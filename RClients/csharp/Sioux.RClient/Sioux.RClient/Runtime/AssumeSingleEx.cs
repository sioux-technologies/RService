using System;
using System.Linq;
using System.Reactive.Linq;
using DynamicData;

namespace Sioux.RClient.Runtime
{
    public static class AssumeSingleEx
    {
        public static IObservable<T?> AssumeSingle<T>(this IObservable<IChangeSet<T>> collection)
        {
            return collection.Select(x =>
                {
                    var isChange = false;
                    var newValue = default(T);
                    foreach (var change in x)
                    {
                        switch (change.Reason)
                        {
                            case ListChangeReason.Add:
                                isChange = true;
                                newValue = change.Item.Current;
                                break;
                            case ListChangeReason.AddRange:
                                isChange = true;
                                newValue = change.Range.First();
                                break;
                            case ListChangeReason.Replace:
                                isChange = true;
                                newValue = change.Item.Current;
                                break;
                            case ListChangeReason.Remove:
                                isChange = true;
                                newValue = default;
                                break;
                            case ListChangeReason.RemoveRange:
                                isChange = true;
                                newValue = default;
                                break;
                            case ListChangeReason.Refresh:
                                isChange = true;
                                newValue = change.Range.First();
                                break;
                            case ListChangeReason.Moved:
                                isChange = true;
                                newValue = change.Range.First();
                                break;
                            case ListChangeReason.Clear:
                                isChange = true;
                                newValue = default;
                                break;
                        }
                    }

                    return (isChange, newValue);
                })
                .Where(x => x.isChange)
                .Select(x => x.newValue);
        }

    }
}