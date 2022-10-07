using System.Collections.Generic;
using System.Linq;

namespace Sioux.RClient.Runtime
{
    public static class BaseConceptNavigationEx
    {
        public static IEnumerable<IBaseConcept> Ancestors(this IBaseConcept self, bool includeSelf = false)
        {
            if (includeSelf)
                yield return self;
            var current = self;
            while (current.Parent != null)
            {
                current = current.Parent;
                yield return current;
            }
        }
        
        public static IEnumerable<T> Ancestors<T>(this IBaseConcept self, bool includeSelf = false) where T : class
        {
            return self.Ancestors(includeSelf).OfType<T>();
        }
        
        public static T? Ancestor<T>(this IBaseConcept self, bool includeCurrent = false) where T : class
        {
            return self.Ancestors<T>(includeCurrent).FirstOrDefault();
        }
        
        public static IEnumerable<IBaseConcept> Descendants(this IBaseConcept self, bool includeSelf = false)
        {
            if (includeSelf)
                yield return self;
            foreach (var child in self.Children.Items)
            {
                foreach (var baseConcept in child.Descendants(true))
                {
                    yield return baseConcept;
                }
            }
        }
        
        public static IEnumerable<T> Descendants<T>(this IBaseConcept self, bool includeCurrent = false) where T : class
        {
            return self.Descendants(includeCurrent).OfType<T>();
        }


    }
}