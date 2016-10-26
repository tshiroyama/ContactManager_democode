﻿using System.Web;
using System.Web.Mvc;

namespace ContactManager
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
            filters.Add(new System.Web.Mvc.AuthorizeAttribute()); // require authentcation
            filters.Add(new RequireHttpsAttribute()); // require https
        }
    }
}
