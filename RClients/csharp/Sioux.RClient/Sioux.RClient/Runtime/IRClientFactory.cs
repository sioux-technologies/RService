using System;
using Sioux.RClient.Generated.Client;

namespace Sioux.RClient.Runtime
{
    /// <summary>
    /// Implementation that registers types of the Meta level and creates the elements of a model. 
    /// </summary>
    public interface IRClientFactory
    {
        /// <summary>
        /// registers a type that can be used in the RClient, with a name that is used in the model.
        /// </summary>
        /// <param name="t">C# type that is an wrapper around RNode</param>
        /// <param name="rConceptName">the name of the concept in the RNode.Concept</param>
        void Register(Type t, string rConceptName);

        /// <summary>
        /// creates an wrapper around RNode with a specific type that is specified in the BackEnd
        /// </summary>
        /// <param name="backEnd">the RNode which the types wraps around</param>
        /// <param name="registry">the registry where all types should register</param>
        /// <returns>the instantiated object with the correct type.</returns>
        IBaseConcept Create(RNode backEnd, IRClientRegistry registry);
        /// <summary>
        /// checks if an rConceptName is supported
        /// </summary>
        /// <param name="rConceptName"></param>
        /// <returns></returns>
        bool Support(string rConceptName);

        /// <summary>
        /// creates a new element, with a new unique id. The same as the new keyword.
        /// </summary>
        /// <param name="registry">The registry it belongs to</param>
        /// <typeparam name="T">The type that should be created</typeparam>
        /// <returns>A newly created item.</returns>
        T Create<T>(IRClientRegistry registry) where T : IBaseConcept;

        /// <summary>
        /// creates a new element, with a new unique id. The same as the new keyword.
        /// </summary>
        /// <param name="t">The type that should be created</param>
        /// <param name="registry">The registry it belongs to</param>
        /// <returns>A newly created item.</returns>
        IBaseConcept Create(Type t, IRClientRegistry registry);
    }
}