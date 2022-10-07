using System;
using System.Windows.Input;

namespace Sioux.RDGenericGuiClient.ViewModel.Commands
{
    public class DeleteItem: ICommand
    {
        private readonly RdNodeViewModel _target;

        public DeleteItem(RdNodeViewModel target)
        {
            _target = target;
        }
        
        public bool CanExecute(object? parameter) => _target.CanBeRemove;

        public void Execute(object? parameter)
        {
            _target.Remove();
        }

        public event EventHandler? CanExecuteChanged;
    }
}