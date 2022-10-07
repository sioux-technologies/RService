using System;
using System.Collections.Generic;
using ReactiveUI;
using Sioux.RDGenericGuiClient.ViewModel.Commands;

namespace Sioux.RDGenericGuiClient.ViewModel
{
    public abstract class RdNodeChildViewModel: ReactiveObject, IRdNodeViewModelParent
    {
        public abstract string Name { get; }

        public abstract IEnumerable<object> Items { get; }
        
        public abstract bool CanAddToList { get; }
        
        public abstract IEnumerable<AddListItem> SupportedListItemTypes { get; }

        public virtual void CreateItem(Type type) { }
        public virtual void RemoveItem(object item) { }
    }
}