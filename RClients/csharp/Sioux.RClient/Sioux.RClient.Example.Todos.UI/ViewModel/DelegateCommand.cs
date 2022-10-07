﻿using System;
using System.Windows.Input;

namespace Sioux.RClient.Example.Todos.UI.ViewModel
{
    public class DelegateCommand: ICommand
    {
        private readonly Action _action;

        public DelegateCommand(Action action)
        {
            _action = action;
        }

        public bool CanExecute(object? parameter)
        {
            return true;
        }

        public void Execute(object? parameter)
        {
            _action();
        }

        public event EventHandler? CanExecuteChanged;
    }
}