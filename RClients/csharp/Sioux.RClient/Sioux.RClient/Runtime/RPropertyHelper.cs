using System;
using System.Linq;
using JetBrains.Collections.Viewable;
using JetBrains.Lifetimes;
using Sioux.RClient.Generated.Client;

namespace Sioux.RClient.Runtime
{
    public sealed class RPropertyHelper<T>: IDisposable
    {
        public RPropertyHelper(Lifetime lifetime, IViewableList<RProperty> properties, Action<string?>? propertyChangedHandler, string rdPropertyName, string? cSharpPropertyName)
        {
            Lifetime = lifetime;
            Properties = properties;
            PropertyChangedHandler = propertyChangedHandler;
            RdPropertyName = rdPropertyName;
            CSharpPropertyName = cSharpPropertyName;

            Properties.Advise(lifetime, e =>
            {
                if (e.OldValue == _backEndProperty)
                {
                    DeregisterProperty();
                }

                if (e.NewValue is not null && e.NewValue.Name.Maybe.ValueOrDefault == RdPropertyName)
                {
                    RegisterNewProperty(e.NewValue);
                    PropertyChangedHandler?.Invoke(CSharpPropertyName);
                }
            });

            var property = properties.FirstOrDefault(x => x.Name.Maybe.ValueOrDefault == RdPropertyName);
            if (property is not null)
                RegisterNewProperty(property);
        }

        private void RegisterNewProperty(RProperty newProperty)
        {
            DeregisterProperty();
            _backendPropertyLifeTimeDefinition = new LifetimeDefinition(Lifetime);
            _backEndProperty = newProperty;
            _backEndProperty.Value.Advise(_backendPropertyLifeTimeDefinition.Lifetime, _ =>
            {
                PropertyChangedHandler?.Invoke(CSharpPropertyName);
            });
        }

        private void DeregisterProperty()
        {
            _backendPropertyLifeTimeDefinition?.Terminate();
            _backendPropertyLifeTimeDefinition = null;
            _backEndProperty = null;
        }

        private RProperty? _backEndProperty;
        private LifetimeDefinition? _backendPropertyLifeTimeDefinition;

        private Lifetime Lifetime { get; }
        private IViewableList<RProperty> Properties { get; }
        
        private Action<string?>? PropertyChangedHandler { get; }
        private string RdPropertyName { get; }
        private string? CSharpPropertyName { get; }

        public T? Value
        {
            get
            {
                if (typeof(T).IsEnum)
                {
                    try
                    {
                        if (RawValue is null) return default;
                        //TryParse is a generic, which needs a Struct requirement for T. This is not possible because T can be a string.
                        return (T)Enum.Parse(typeof(T), RawValue, false); 
                    }
                    catch (Exception)
                    {
                        return default;    
                    }
                }
                try
                {
                    return (T?)Convert.ChangeType(RawValue, typeof(T));
                }
                catch (InvalidCastException)
                {
                    return default;
                }
                catch (FormatException)
                {
                    return default;
                }
                catch (OverflowException)
                {
                    return default;
                }
                catch (ArgumentNullException)
                {
                    return default;
                }
            }
            set
            {
                if (value != null)
                {
                    RawValue = (value is bool) 
                        ? value.ToString().ToLowerInvariant() 
                        : value.ToString();
                }
                else
                {
                    RawValue = "";
                }
            }
        }

        private string? RawValue
        {
            get => _backEndProperty?.Value.Maybe.ValueOrDefault;
            set
            {
                if (_backEndProperty is null)
                {
                    _backEndProperty = new RProperty
                    {
                        Name = { Value = RdPropertyName },
                        Value = { Value = value }
                    };
                    Properties.Add(_backEndProperty);
                }
                else
                {
                    _backEndProperty.Value.Value = value;
                }
            }
        }

        public void Dispose()
        {
            _backendPropertyLifeTimeDefinition?.Dispose();
        }
    }
}