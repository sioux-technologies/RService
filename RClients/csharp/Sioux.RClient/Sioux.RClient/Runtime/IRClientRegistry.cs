using System;
using Sioux.RClient.Generated.Client;

namespace Sioux.RClient.Runtime
{
    /// <summary>
    /// basic interface for resolving wrappers around RNodes
    /// </summary>
    public interface IRClientRegistry
    {
        /// <summary>
        /// Resolves the wrapper around the RNode. 
        /// </summary>
        /// <param name="rNode">the specific RNode</param>
        /// <returns>the wrapper around the RNode</returns>
        /// <remarks>
        /// The implementation should make sure that there is always a single wrapper around an RNode, and not multiple.
        /// So it is always an 1 RNode on 0-1 IBaseConcept relation. 
        /// </remarks>
        IBaseConcept Resolve(RNode rNode);

        /// <summary>
        /// resolved a node based on a node id. 
        /// </summary>
        /// <param name="rId"></param>
        /// <returns>the node that has the id given, or null if the node is not known in this registry.</returns>
        /// <remarks>
        /// For performance reasons this resolve should finish in constant time.
        /// Every time a reference is followed this method is called.
        /// </remarks>
        IBaseConcept? Resolve(RId rId);

        /// <summary>
        /// Creates a new instance of a certain type.
        /// </summary>
        /// <remarks>
        /// This new instance is registered in this registry.
        /// Also this instance should have an unique id, for the instance of this registry.
        /// An new RNode should be created in the implementation.
        /// </remarks>
        /// <typeparam name="T">the type that is instantiated.</typeparam>
        /// <returns>An new instance of the type T</returns>
        T Create<T>() where T : IBaseConcept;

        /// <summary>
        /// Creates a new instance of a certain type.
        /// </summary>
        /// <remarks>
        /// This new instance is registered in this registry.
        /// Also this instance should have an unique id, for the instance of this registry.
        /// An new RNode should be created in the implementation.
        /// </remarks>
        /// <param name="t">the type that is instantiated.</param>
        /// <returns>An new instance of the type T</returns>
        IBaseConcept Create(Type t);
    }
}