using JetBrains.Collections.Viewable;
using JetBrains.Lifetimes;

namespace Sioux.Rd.MultiServer.Synchronization
{
    public abstract class RdNodePropertySynchronization
    {
    }
    
    public class RdNodePropertySynchronization<T>: RdNodePropertySynchronization
    {
        private readonly IScheduler _scheduler;
        private readonly IViewableProperty<T> _primaryTarget;
        private readonly IViewableProperty<T> _secondaryTarget;

        public RdNodePropertySynchronization(IScheduler scheduler, IViewableProperty<T> primaryTarget,
            IViewableProperty<T> secondaryTarget)
        {
            _scheduler = scheduler;
            _primaryTarget = primaryTarget;
            _secondaryTarget = secondaryTarget;

            if(primaryTarget.Maybe.HasValue)
                secondaryTarget.Value = primaryTarget.Maybe.Value;

            primaryTarget.Change.Advise(Lifetime.Eternal, value => { _secondaryTarget.Value = value; });
            secondaryTarget.Change.Advise(Lifetime.Eternal, value => { _primaryTarget.Value = value; });
        }

    }
}