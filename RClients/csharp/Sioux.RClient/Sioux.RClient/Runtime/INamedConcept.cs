namespace Sioux.RClient.Runtime
{
    public interface INamedConcept: IBaseConcept
    {
        string Name { get; set; }
    }
}