using System.Web;
using System.Web.Mvc;

namespace SZYBYDY_WOJCIUK_SACHARCZUK_PAWLENKO
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
        }
    }
}
