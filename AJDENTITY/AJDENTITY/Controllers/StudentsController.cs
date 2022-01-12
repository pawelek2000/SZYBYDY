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
    public class StudentsController : Controller
    {
        private Entities db = new Entities();

        // GET: Students
        public ActionResult Index()
        {
            var students = db.Students.Include(s => s.AspNetUser).Include(s => s.Class).Include(s => s.Parent);
            return View(students.ToList());
        }

        // GET: Students/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Student student = db.Students.Find(id);
            if (student == null)
            {
                return HttpNotFound();
            }
            return View(student);
        }

        // GET: Students/Create
        public ActionResult Create()
        {
            ViewBag.Class_ID = new SelectList(db.Classes, "Id", "ClassName");
            ViewBag.Parent_ID = new SelectList(db.Parents, "Id", "Name");

            var manager = new IdentityManager();

            var current_students = db.Students.ToList();
            var current_student_accounts = new List<AspNetUser>();

            foreach (var student in current_students) {
                current_student_accounts.Add(db.AspNetUsers.Where(p => p.Id == student.Account_Id).ToList()[0]);
            }

            var student_role = db.AspNetRoles.Where(p => p.Name == "Uczen").ToList()[0];
            var all_student_accounts = new List<AspNetUser>();

            foreach (var account in db.AspNetUsers) {
                var user = manager.GetUserByID(account.Id);

                if (user.Roles.ToList()[0].RoleId == student_role.Id) {
                    all_student_accounts.Add(account);
                }
            }

            var result = all_student_accounts.Where(p => !current_student_accounts.Contains(p)).ToList();
            ViewBag.Account_Id = new SelectList(result, "Id", "Email");

            return View();
        }

        // POST: Students/Create
        // Aby zapewnić ochronę przed atakami polegającymi na przesyłaniu dodatkowych danych, włącz określone właściwości, z którymi chcesz utworzyć powiązania.
        // Aby uzyskać więcej szczegółów, zobacz https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,Class_Id,Parent_Id,Account_Id,Name,Surname,PhoneNumber")] Student student)
        {
            if (ModelState.IsValid)
            {
                db.Students.Add(student);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.Account_ID = new SelectList(db.AspNetUsers, "Id", "Email", student.Account_Id);

            ViewBag.Class_ID = new SelectList(db.Classes, "Id", "ClassName", student.Class_Id);
            ViewBag.Parent_ID = new SelectList(db.Parents, "Id", "Name", student.Parent_Id);

            return View(student);
        }

        // GET: Students/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Student student = db.Students.Find(id);
            if (student == null)
            {
                return HttpNotFound();
            }
            ViewBag.Account_ID = new SelectList(db.AspNetUsers, "Id", "Email", student.Account_Id);

            ViewBag.Class_ID = new SelectList(db.Classes, "Id", "ClassName", student.Class_Id);
            ViewBag.Parent_ID = new SelectList(db.Parents, "Id", "Name", student.Parent_Id);

            // KEKW
            var manager = new IdentityManager();

            var current_students = db.Students.ToList();
            var current_student_accounts = new List<AspNetUser>();

            foreach (var stuuu in current_students) {
                current_student_accounts.Add(db.AspNetUsers.Where(p => p.Id == stuuu.Account_Id).ToList()[0]);
            }

            var student_role = db.AspNetRoles.Where(p => p.Name == "Uczen").ToList()[0];
            var all_student_accounts = new List<AspNetUser>();

            foreach (var account in db.AspNetUsers) {
                var user = manager.GetUserByID(account.Id);

                if (user.Roles.ToList()[0].RoleId == student_role.Id) {
                    all_student_accounts.Add(account);
                }
            }

            var result = all_student_accounts.Where(p => !current_student_accounts.Contains(p)).ToList();
            result.Insert(0, db.AspNetUsers.ToList().Find(p => p.Id == student.Account_Id));
            // 5Head

            ViewBag.Account_Id = new SelectList(result, "Id", "Email");
            return View(student);
        }

        // POST: Students/Edit/5
        // Aby zapewnić ochronę przed atakami polegającymi na przesyłaniu dodatkowych danych, włącz określone właściwości, z którymi chcesz utworzyć powiązania.
        // Aby uzyskać więcej szczegółów, zobacz https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,Class_Id,Parent_Id,Account_Id,Name,Surname,PhoneNumber")] Student student)
        {
            if (ModelState.IsValid)
            {
                db.Entry(student).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.Account_ID = new SelectList(db.AspNetUsers, "Id", "Email", student.Account_Id);

            ViewBag.Class_ID = new SelectList(db.Classes, "Id", "ClassName", student.Class_Id);
            ViewBag.Parent_ID = new SelectList(db.Parents, "Id", "Name", student.Parent_Id);

            return View(student);
        }

        // GET: Students/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Student student = db.Students.Find(id);
            if (student == null)
            {
                return HttpNotFound();
            }
            return View(student);
        }

        // POST: Students/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Student student = db.Students.Find(id);

            db.Students.Remove(student);
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
