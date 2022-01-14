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
    public class EdytujProfilNauczycielController : Controller
    {
        private Entities db = new Entities();
        private static string acc_id;

        // GET: EdytujProfilNauczyciel/Edit/5
        public ActionResult Edit()
        {
            Teacher teacher = db.Teachers.Find(db.Teachers.Where(p => p.AspNetUser.Email == User.Identity.Name).ToList()[0].Id);

            if (teacher == null)
            {
                return HttpNotFound();
            }

            acc_id = teacher.Account_Id;
            return View(teacher);
        }

        // POST: EdytujProfilNauczyciel/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,Account_Id,Name,Surname,PhoneNumber")] Teacher teacher)
        {
            if (ModelState.IsValid)
            {
                teacher.Account_Id = acc_id;

                db.Entry(teacher).State = EntityState.Modified;
                db.SaveChanges();

                return RedirectToAction("Details");
            }

            return View(teacher);
        }

        // GET: EdytujProfilNauczyciel/Details/5
        public ActionResult Details() {
            Teacher teacher = db.Teachers.Find(db.Teachers.Where(p => p.AspNetUser.Email == User.Identity.Name).ToList()[0].Id);

            if (teacher == null) {
                return HttpNotFound();
            }

            return View(teacher);
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