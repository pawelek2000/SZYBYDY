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
    public class EdytujProfilUczenController : Controller
    {
        private Entities db = new Entities();

        private static string acc_id;
        private static int class_id;
        private static int parent_id;

        // GET: EdytujProfilUczen/Edit/5
        public ActionResult Edit()
        {
            Student student = db.Students.Find(db.Students.Where(p => p.AspNetUser.Email == User.Identity.Name).ToList()[0].Id);

            if (student == null)
            {
                return HttpNotFound();
            }

            acc_id = student.Account_Id;
            class_id = student.Class_Id;
            parent_id = student.Parent_Id;

            return View(student);
        }

        // POST: EdytujProfilUczen/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,Account_Id,Class_Id,Parent_Id,Name,Surname,PhoneNumber")] Student student)
        {
            if (ModelState.IsValid)
            {
                student.Account_Id = acc_id;
                student.Class_Id = class_id;
                student.Parent_Id = parent_id;

                db.Entry(student).State = EntityState.Modified;
                db.SaveChanges();

                return RedirectToAction("Details");
            }

            return View(student);
        }

        // GET: Students/Details/5
        public ActionResult Details() {
            Student student = db.Students.Find(db.Students.Where(p => p.AspNetUser.Email == User.Identity.Name).ToList()[0].Id);

            if (student == null) {
                return HttpNotFound();
            }

            return View(student);
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
