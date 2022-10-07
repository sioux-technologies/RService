using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Runtime.CompilerServices;
using DynamicData;
using JetBrains.Annotations;
using JetBrains.Collections.Viewable;
using JetBrains.Lifetimes;
using Sioux.RClient.Generated.Client;

namespace Sioux.RClient.Runtime
{
    public class BaseConcept: IBaseConcept
    {
        private bool _disposed;
        private readonly List<Action> _disposeActions = new();
        private readonly List<Action> _unmanagedDisposeActions = new();
        private IBaseConcept? _parent;

        public BaseConcept(RNode backEnd, IScheduler scheduler, Lifetime lifetime, IRClientRegistry registry)
        {
            BackEnd = backEnd;
            Registry = registry;

            Children = backEnd.Children.Connect(lifetime, scheduler)
                .Transform(registry.Resolve)
                .ForEachChange(ChangeInChildrenCollectionSetParent)
                .DisposeMany()
                .AsObservableList();
        }
        
        ~BaseConcept() => Dispose(false);

        public RNode BackEnd { get; }
        public IRClientRegistry Registry { get; }

        public IObservableList<IBaseConcept> Children { get; }

        IBaseConcept? IBaseConcept.Parent
        {
            get => _parent;
            set => _parent = value;
        }

        public void Remove()
        {
            if (_parent != null)
                _parent.BackEnd.Children.Remove(BackEnd);
            else
                throw new NotImplementedException();//this should be implemented that it is removed from the model
        }
        
        public event PropertyChangedEventHandler? PropertyChanged;

        [NotifyPropertyChangedInvocator]
        protected virtual void OnPropertyChanged([CallerMemberName] string? propertyName = null)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
        
        private void ChangeInChildrenCollectionSetParent(Change<IBaseConcept> x)
        {
            switch (x.Reason)
            {
                case ListChangeReason.Add:
                    x.Item.Current.Parent = this;
                    break;
                case ListChangeReason.AddRange:
                    foreach (var child in x.Range)
                    {
                        child.Parent = this;
                    }
                    break;
                case ListChangeReason.Replace:
                    if (x.Item.Previous.HasValue) x.Item.Previous.Value.Parent = null;
                    x.Item.Current.Parent = this;
                    break;
                case ListChangeReason.Remove:
                    if (x.Item.Previous.HasValue) x.Item.Previous.Value.Parent = null;
                    x.Item.Current.Parent = null;
                    break;
                case ListChangeReason.RemoveRange:
                    foreach (var child in x.Range)
                    {
                        child.Parent = null;
                    }
                    break;
                case ListChangeReason.Refresh:
                    break;
                case ListChangeReason.Moved:
                    break;
                case ListChangeReason.Clear:
                    foreach (var child in x.Range)
                    {
                        child.Parent = null;
                    }
                    break;
                default:
                    throw new ArgumentOutOfRangeException();
            }
        }
        
        public void OnDispose(Action action, bool unmanaged = false)
        {
            if (unmanaged)
                _unmanagedDisposeActions.Add(action);
            else
                _disposeActions.Add(action);
        }

        public void OnDispose(IDisposable disposable)
        {
            _disposeActions.Add(disposable.Dispose);
        }

        public void Dispose()
        {
            // Dispose of unmanaged resources.
            Dispose(true);
            // Suppress finalization.
            GC.SuppressFinalize(this);
        }
        
        protected virtual void Dispose(bool disposing)
        {
            if (_disposed)
            {
                return;
            }

            if (disposing)
            {
                //managed resources
                foreach (var action in _disposeActions)
                {
                    action();
                }
                
                foreach (var child in Children.Items)
                {
                    child.Dispose();
                }
            }
            
            //unmanaged resources
            foreach (var action in _unmanagedDisposeActions)
            {
                action();
            }

            _disposed = true;
        }

    }
}