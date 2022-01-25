using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using AJDENTITY.Models;

namespace AJDENTITY.Controllers {
    public class HomeController : Controller
    {
        private Entities db = new Entities();

        // GET: Announcements
        public ActionResult Index()
        {
            return View(db.Announcements.ToList());
        }

        // GET: Announcements/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Announcement announcement = db.Announcements.Find(id);
            if (announcement == null)
            {
                return HttpNotFound();
            }
            return View(announcement);
        }
        
        public ActionResult Czarny()
        {
            Session["Motyw"] = 1;
            return RedirectToAction("Index");
        }

        public ActionResult Bialy()
        {
            Session["Motyw"] = 2;
            return RedirectToAction("Index");
        }

        public ActionResult Piekny()
        {
            Session["Motyw"] = 3;
            return RedirectToAction("Index");
        }

    }
}
