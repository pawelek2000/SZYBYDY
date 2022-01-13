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
    public class TeachersController : Controller
    {
        private Entities db = new Entities();

        // GET: Teachers
        public ActionResult Index()
        {
            var teachers = db.Teachers.Include(t => t.AspNetUser);
            return View(teachers.ToList());
        }

        // GET: Teachers/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Teacher teacher = db.Teachers.Find(id);
            if (teacher == null)
            {
                return HttpNotFound();
            }
            return View(teacher);
        }

        // GET: Teachers/Create
        public ActionResult Create()
        {
            var manager = new IdentityManager();

            var current_teachers = db.Teachers.ToList();
            var current_teacher_accounts = new List<AspNetUser>();

            foreach(var teacher in current_teachers) {
                current_teacher_accounts.Add(db.AspNetUsers.Where(p => p.Id == teacher.Account_Id).ToList()[0]);
            }

            var teacher_role = db.AspNetRoles.Where(p => p.Name == "Nauczyciel").ToList()[0];
            var all_teacher_accounts = new List<AspNetUser>();

            foreach (var account in db.AspNetUsers) {
                var user = manager.GetUserByID(account.Id);

                if (user.Roles.ToList()[0].RoleId == teacher_role.Id) {
                    all_teacher_accounts.Add(account);
                }
            }

            var result = all_teacher_accounts.Where(p => !current_teacher_accounts.Contains(p)).ToList();
            ViewBag.Account_Id = new SelectList(result, "Id", "Email");

            return View();
        }

        // POST: Teachers/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,Account_Id,Name,Surname,PhoneNumber")] Teacher teacher)
        {
            if (ModelState.IsValid)
            {
                db.Teachers.Add(teacher);
                db.SaveChanges();

                return RedirectToAction("Index");
            }

            ViewBag.Account_Id = new SelectList(db.AspNetUsers, "Id", "Email", teacher.Account_Id);
            return View(teacher);
        }

        // GET: Teachers/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Teacher teacher = db.Teachers.Find(id);
            if (teacher == null)
            {
                return HttpNotFound();
            }

            // LOL
            var manager = new IdentityManager();

            var current_teachers = db.Teachers.ToList();
            var current_teacher_accounts = new List<AspNetUser>();

            foreach (var tea in current_teachers) {
                current_teacher_accounts.Add(db.AspNetUsers.Where(p => p.Id == tea.Account_Id).ToList()[0]);
            }

            var teacher_role = db.AspNetRoles.Where(p => p.Name == "Nauczyciel").ToList()[0];
            var all_teacher_accounts = new List<AspNetUser>();

            foreach (var account in db.AspNetUsers) {
                var user = manager.GetUserByID(account.Id);

                if (user.Roles.ToList()[0].RoleId == teacher_role.Id) {
                    all_teacher_accounts.Add(account);
                }
            }

            var result = all_teacher_accounts.Where(p => !current_teacher_accounts.Contains(p)).ToList();
            result.Insert(0, db.AspNetUsers.ToList().Find(p => p.Id == teacher.Account_Id));
            // XD

            ViewBag.Account_Id = new SelectList(result, "Id", "Email");
            return View(teacher);
        }

        // POST: Teachers/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,Account_Id,Name,Surname,PhoneNumber")] Teacher teacher)
        {
            if (ModelState.IsValid)
            {
                db.Entry(teacher).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.Account_Id = new SelectList(db.AspNetUsers, "Id", "Email", teacher.Account_Id);
            return View(teacher);
        }

        // GET: Teachers/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Teacher teacher = db.Teachers.Find(id);
            if (teacher == null)
            {
                return HttpNotFound();
            }
            return View(teacher);
        }

        // POST: Teachers/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Teacher teacher = db.Teachers.Find(id);
            AspNetUser user = db.AspNetUsers.Find(teacher.Account_Id);

            db.Teachers.Remove(teacher);
            db.AspNetUsers.Remove(user);

            db.SaveChanges();
            return RedirectToAction("Index");
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
