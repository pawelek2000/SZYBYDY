using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace AJDENTITY.Controllers {
    public class HomeController : Controller {
        public ActionResult Index() {
            return View();
        }

        public ActionResult About() {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact() {
            ViewBag.Message = "Your contact page.";

            var role = new Models.IdentityManager();
            role.CreateRole("Admin");
            role.CreateRole("Rodzic");
            role.CreateRole("Nauczyciel");
            role.CreateRole("Uczen");

            return View();
        }
    }
}