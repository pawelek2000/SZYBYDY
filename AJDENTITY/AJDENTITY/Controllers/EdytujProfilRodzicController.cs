using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using AJDENTITY.Models;

namespace AJDENTITY.Controllers
{
    public class EdytujProfilRodzicController : Controller
    {
        private Entities db = new Entities();
        private static string acc_id;

        // GET: EdytujProfilRodzic/Edit/5
        public ActionResult Edit()
        {
            Parent parent = db.Parents.Find(db.Parents.Where(p => p.AspNetUser.Email == User.Identity.Name).ToList()[0].Id);

            if (parent == null)
            {
                return HttpNotFound();
            }

            acc_id = parent.Account_Id;
            return View(parent);
        }

        // POST: EdytujProfilRodzic/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,Account_Id,Name,Surname,PhoneNumber")] Parent parent)
        {
            if (ModelState.IsValid)
            {
                parent.Account_Id = acc_id;

                db.Entry(parent).State = EntityState.Modified;
                db.SaveChanges();

                return RedirectToAction("Details");
            }

            return View(parent);
        }

        // GET: EdytujProfilRodzic/Details/5
        public ActionResult Details() {
            Parent parent = db.Parents.Find(db.Parents.Where(p => p.AspNetUser.Email == User.Identity.Name).ToList()[0].Id);

            if (parent == null) {
                return HttpNotFound();
            }

            return View(parent);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }

            base.Dispose(disposing);
        }
    }
}