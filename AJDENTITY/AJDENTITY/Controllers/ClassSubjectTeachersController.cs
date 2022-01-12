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
    public class ClassSubjectTeachersController : Controller
    {
        private Entities db = new Entities();

        // GET: ClassSubjectTeachers
        public ActionResult Index()
        {
            var classSubjectTeachers = db.ClassSubjectTeachers.Include(c => c.Class).Include(c => c.Subject).Include(c => c.Teacher);
            return View(classSubjectTeachers.ToList());
        }

        // GET: ClassSubjectTeachers/Details/5
        public ActionResult Details(int? class_id, int? subject_id, int? teacher_id)
        {
            if (class_id == null || subject_id == null || teacher_id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ClassSubjectTeacher classSubjectTeacher = db.ClassSubjectTeachers.Find(class_id, subject_id, teacher_id);
            if (classSubjectTeacher == null)
            {
                return HttpNotFound();
            }
            return View(classSubjectTeacher);
        }

        // GET: ClassSubjectTeachers/Create
        public ActionResult Create()
        {
            ViewBag.Class_ID = new SelectList(db.Classes, "Id", "ClassName");
            ViewBag.Subject_ID = new SelectList(db.Subjects, "Id", "Name");
            ViewBag.Teacher_ID = new SelectList(db.Teachers, "Id", "Name");
            return View();
        }

        // POST: ClassSubjectTeachers/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Class_Id,Subject_Id,Teacher_Id")] ClassSubjectTeacher classSubjectTeacher)
        {
            if (ModelState.IsValid)
            {
                db.ClassSubjectTeachers.Add(classSubjectTeacher);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.Class_ID = new SelectList(db.Classes, "Id", "ClassName", classSubjectTeacher.Class_Id);
            ViewBag.Subject_ID = new SelectList(db.Subjects, "Id", "Name", classSubjectTeacher.Subject_Id);
            ViewBag.Teacher_ID = new SelectList(db.Teachers, "Id", "Name", classSubjectTeacher.Teacher_Id);

            return View(classSubjectTeacher);
        }

        // GET: ClassSubjectTeachers/Delete/5
        public ActionResult Delete(int? class_id, int? subject_id, int? teacher_id)
        {
            if (class_id == null || subject_id == null || teacher_id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ClassSubjectTeacher classSubjectTeacher = db.ClassSubjectTeachers.Find(class_id, subject_id, teacher_id);
            if (classSubjectTeacher == null)
            {
                return HttpNotFound();
            }
            return View(classSubjectTeacher);
        }

        // POST: ClassSubjectTeachers/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int class_id, int subject_id, int teacher_id)
        {
            ClassSubjectTeacher classSubjectTeacher = db.ClassSubjectTeachers.Find(class_id, subject_id, teacher_id);
            db.ClassSubjectTeachers.Remove(classSubjectTeacher);
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
