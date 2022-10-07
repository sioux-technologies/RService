using System;
using System.Linq;
using DynamicData;
using ReactiveUI;
using Sioux.RClient.Generated.Client;

namespace Sioux.RClient.Runtime
{
    public class RChildSingleHelper<T>: ReactiveObject where T: IBaseConcept
    {
        private readonly ObservableAsPropertyHelper<T?> _value;

        public RChildSingleHelper(string role, IBaseConcept owner, Action<string?>? propertyChangedHandler, string? cSharpPropertyName)
        {
            Role = role;
            Owner = owner;

            _value = owner.Children.Connect()
                .Filter(x => x.BackEnd.Role.Maybe.ValueOrDefault == role && x is T)
                .Transform(x => (T)x)
                .AssumeSingle()
                .ToProperty(this, x => x.Value);
            
            PropertyChanged += (sender, args) =>
            {
                propertyChangedHandler?.Invoke(cSharpPropertyName);
            };
        }
        

        public IBaseConcept Owner { get; set; }

        public string Role { get; set; }

        public T? Value
        {
            get => _value.Value;
            set
            {
                foreach (var rNode in Owner.BackEnd.Children.Where(x => x.Role.Maybe.ValueOrDefault == Role).ToList())
                {
                    Owner.BackEnd.Children.Remove(rNode);
                }

                if (value is not null)
                {
                    SetChildBackendProperties(value);
                    Owner.BackEnd.Children.Add(value.BackEnd);
                }
            }
        }
        
        private void SetChildBackendProperties(T item)
        {
            item.BackEnd.Role.Value = Role;
            
            // the next part that updates the model and root are only necessary for the server side, and this properties are not used by the client (this is defined by the structure of the data)
            // Can be removed when they are removed from the model
            item.BackEnd.ParentId.Value = Owner.BackEnd.RId.Value;
            if (Owner.BackEnd.Model.Maybe.HasValue && Owner.BackEnd.RootId.Maybe.HasValue)
            {
                var model = Owner.BackEnd.Model.Value;
                var root = Owner.BackEnd.RootId.Value;

                SetModelAndRoot(item, model, root);    
            }
        }

        private void SetModelAndRoot(IBaseConcept item, string model, RId root)
        {
            item.BackEnd.Model.Value = model;
            item.BackEnd.RootId.Value = root;
            
            foreach (var child in item.Children.Items)
            {
                SetModelAndRoot(child, model, root);
            }
        }


    }
}