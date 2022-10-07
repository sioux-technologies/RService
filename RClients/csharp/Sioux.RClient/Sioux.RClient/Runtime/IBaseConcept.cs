using System;
using System.ComponentModel;
using DynamicData;
using Sioux.RClient.Generated.Client;

namespace Sioux.RClient.Runtime
{
    /// <summary>
    /// the BaseConceptInterface
    /// </summary>
    public interface IBaseConcept: IDisposable, INotifyPropertyChanged
    {
        /// <summary>
        /// The backend of the wrapper
        /// </summary>
        RNode BackEnd { get; }

        /// <summary>
        /// All the children of this node.
        /// </summary>
        IObservableList<IBaseConcept> Children { get; }

        /// <summary>
        /// parent of the element.
        /// </summary>
        /// <remarks>
        /// This is automatically set by it's parent when it is in it's children list
        /// </remarks>
        IBaseConcept? Parent { get; internal set; }

        /// <summary>
        /// Registry that this element belongs to.
        /// </summary>
        /// <remarks>
        /// This is useful for creating new elements.
        /// </remarks>
        IRClientRegistry Registry { get; }

        /// <summary>
        /// When this object disposes, then it should take certain actions
        /// </summary>
        /// <param name="action">the action</param>
        /// <param name="unmanaged">if unmanaged it is also done by the finalizer.</param>
        void OnDispose(Action action, bool unmanaged = false);
        /// <summary>
        /// When this object disposes, then it should also dispose of other objects.
        /// </summary>
        /// <param name="disposable">the object that should also dispose.</param>
        void OnDispose(IDisposable disposable);

        /// <summary>
        /// Remove element from it's parent
        /// </summary>
        void Remove();
    }
}