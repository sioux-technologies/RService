using System;
using System.Collections;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Linq;
using System.Reactive.Linq;
using DynamicData;
using Sioux.RClient.Generated.Client;

namespace Sioux.RClient.Runtime
{
    public sealed class RCollection<T>: INotifyCollectionChanged, IList<T> where T: IBaseConcept
    {
        //the following properties are interesting for users of this library
        // ReSharper disable once MemberCanBePrivate.Global
        public string Role { get; }
        // ReSharper disable once MemberCanBePrivate.Global
        public IBaseConcept Owner { get; } 

        // ReSharper disable once MemberCanBePrivate.Global
        public IObservableList<T> Items { get; }
        // ReSharper disable once MemberCanBePrivate.Global
        public IObservableList<IBaseConcept> AllItemsInRole { get; }

        public RCollection(string role, IBaseConcept owner)
        {
            Role = role;
            Owner = owner;

            AllItemsInRole = owner.Children.Connect()
                .Filter(x => x.BackEnd.Role.Maybe.ValueOrDefault == role)
                .AsObservableList();
            Items = AllItemsInRole.Connect()
                .Filter(x => x is T)
                .Transform(x => (T)x)
                .ForEachItemChange(x =>
                {
                    switch (x.Reason)
                    {
                        case ListChangeReason.Add:
                            CollectionChanged?.Invoke(this, new NotifyCollectionChangedEventArgs(NotifyCollectionChangedAction.Add, x.Current, x.CurrentIndex));
                            break;
                        case ListChangeReason.Replace:
                            CollectionChanged?.Invoke(this, new NotifyCollectionChangedEventArgs(NotifyCollectionChangedAction.Replace, x.Current, x.Previous, x.CurrentIndex));
                            break;
                        case ListChangeReason.Remove:
                            CollectionChanged?.Invoke(this, new NotifyCollectionChangedEventArgs(NotifyCollectionChangedAction.Remove, x.Current, x.CurrentIndex));
                            break;
                        case ListChangeReason.Clear:
                            CollectionChanged?.Invoke(this, new NotifyCollectionChangedEventArgs(NotifyCollectionChangedAction.Reset));
                            break;
                        default:
                            throw new ArgumentOutOfRangeException();
                    }
                })
                .AsObservableList();
        }

        public IObservable<IChangeSet<T>> Connect()
        {
            return Items.Connect();
        }

        public IEnumerator<T> GetEnumerator()
        {
            return Items.Items.GetEnumerator();
        }

        IEnumerator IEnumerable.GetEnumerator()
        {
            return Items.Items.GetEnumerator();
            
        }

        public event NotifyCollectionChangedEventHandler? CollectionChanged;
        public void Add(T item)
        {
            if (item == null) throw new ArgumentNullException(nameof(item));
            SetPropertiesChild(item);
            Owner.BackEnd.Children.Add(item.BackEnd);
        }

        public void Clear()
        {
            Owner.BackEnd.Children.RemoveMany(Owner.BackEnd.Children.Where(x => x.Role.Maybe.ValueOrDefault == Role));
        }

        public bool Contains(T item)
        {
            return Items.Items.Contains(item);
        }

        public void CopyTo(T[] array, int arrayIndex)
        {
            var i = arrayIndex;
            foreach (var item in Items.Items)
            {
                array[i] = item;
                i++;
            }
        }

        public bool Remove(T? item)
        {
            if (item == null) return true;
            return Owner.BackEnd.Children.Remove(item.BackEnd);
        }

        public int Count => Items.Count;

        public bool IsReadOnly => false;

        public int IndexOf(T item)
        {
            return Items.Items.IndexOf(item);
        }

        public void Insert(int index, T item)
        {
            if (item == null) throw new ArgumentNullException(nameof(item));
            var backendIndex = 0;
            if (index > 0)
                backendIndex = Owner.BackEnd.Children.IndexOf(this[index - 1].BackEnd) + 1;
            
            SetPropertiesChild(item);
            Owner.BackEnd.Children.Insert(backendIndex, item.BackEnd);
        }

        public void RemoveAt(int index)
        {
            Owner.BackEnd.Children.Remove(this[index].BackEnd);
        }

        public T this[int index]
        {
            get => Items.Items.ElementAt(index);
            set
            {
                var backendIndex = Owner.BackEnd.Children.IndexOf(Items.Items.ElementAt(index).BackEnd);
                SetPropertiesChild(value);
                Owner.BackEnd.Children[backendIndex] = value.BackEnd;
            }
        }
        
        private void SetPropertiesChild(T item)
        {
            item.BackEnd.Role.Value = Role;
            
            // the next part that updates the model and root are only necessary for the server side, and this properties are not used by the client (this is defined by the structure of the data)
            // Can be removed when they are removed from the model
            item.BackEnd.ParentId.Value = Owner.BackEnd.RId.Value;
            if (Owner.BackEnd.Model.Maybe.HasValue && Owner.BackEnd.RootId.Maybe.HasValue)
            {
                var model = Owner.BackEnd.Model.Value;
                var root = Owner.BackEnd.RootId.Value;

                SetModelAndRoot(item, model, root);    
            }
        }

        private void SetModelAndRoot(IBaseConcept item, string model, RId root)
        {
            item.BackEnd.Model.Value = model;
            item.BackEnd.RootId.Value = root;
            
            foreach (var child in item.Children.Items)
            {
                SetModelAndRoot(child, model, root);
            }
        }

    }
}