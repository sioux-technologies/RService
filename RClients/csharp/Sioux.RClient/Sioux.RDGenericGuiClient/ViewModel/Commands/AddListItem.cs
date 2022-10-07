using System;
using System.Windows.Input;

namespace Sioux.RDGenericGuiClient.ViewModel.Commands
{
    public class AddListItem: ICommand
    {
        public AddListItem(RdNodeChildViewModel target, Type listItemType)
        {
            Target = target;
            ListItemType = listItemType;
        }

        public RdNodeChildViewModel Target { get; }
        public Type ListItemType { get; }

        public bool CanExecute(object? parameter) => true;

        public void Execute(object? parameter)
        {
            Target.CreateItem(ListItemType);
        }

        public event EventHandler? CanExecuteChanged;
    }
}