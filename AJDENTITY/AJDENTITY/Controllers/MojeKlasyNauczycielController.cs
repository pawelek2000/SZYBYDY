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
    public class MojeKlasyNauczycielController : Controller
    {
        private Entities db = new Entities();
        IdentityManager IM = new IdentityManager();
        private static int? Nauczyciel_ID;
        private static int? Class_ID;
        private static int? Przedmiot_ID;
        private static int? Uczen_ID;
        // GET: MojeKlasyNauczyciel
        public ActionResult Index()
        {
            var CurrentUser = IM.GetUserByName(User.Identity.Name);
            var teacher = db.Teachers.Where(p => p.Account_Id == CurrentUser.Id).ToList()[0];
            Nauczyciel_ID = teacher.Id;
            var CST = db.ClassSubjectTeachers.Where(p => p.Teacher_Id == teacher.Id).ToList();
            List<Class> ClassesList = new List<Class>();
            foreach (var cst in CST)
            {
                ClassesList.Add(db.Classes.Where(p => p.Id == cst.Class_Id).ToList()[0]);
            }
            return View(ClassesList);
        }

        // GET: MojeKlasyNauczyciel/Details/5
        public ActionResult PrzedmiotyDanejKlasy(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            var CTS = db.ClassSubjectTeachers.Where(p => p.Class_Id == id && p.Teacher_Id == Nauczyciel_ID).ToList();
            var Przedmioty = new List<Subject>();
            Class_ID = id;
            foreach (var cts in CTS)
            {
                Przedmioty.Add(db.Subjects.Where(p=>p.Id==cts.Subject_Id).ToList()[0]);
            }
            return View(Przedmioty);
        }

        public ActionResult UczniowieDaneKlasyIPrzedmiotu(int ?id)
        {
            if (Class_ID == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Przedmiot_ID = id;
            var Ucznie = db.Students.Where(p => p.Class_Id == Class_ID);
            return View(Ucznie);
        }

        public ActionResult OcenyUczniaZPrzedmiotu(int id)
        {
            if (Class_ID == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Uczen_ID = id;
            var OcenyUczniaZPrzedmiotu = db.Grades.Where(p => p.Student_Id == id && p.Subject_Id == Przedmiot_ID).ToList();
            return View(OcenyUczniaZPrzedmiotu);
        }
        // GET: Grades/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Grade grade = db.Grades.Find(id);
            if (grade == null)
            {
                return HttpNotFound();
            }
            return View(grade);
        }

        // GET: Grades/Create
        public ActionResult Create()
        {
            ViewBag.Student_ID = new SelectList(db.Students.Where(p=>p.Id == Uczen_ID), "Id", "Name");
            ViewBag.Subject_ID = new SelectList(db.Subjects.Where(p=>p.Id == Przedmiot_ID), "Id", "Name");
            return View();
        }

        // POST: Grades/Create
        // Aby zapewnić ochronę przed atakami polegającymi na przesyłaniu dodatkowych danych, włącz określone właściwości, z którymi chcesz utworzyć powiązania.
        // Aby uzyskać więcej szczegółów, zobacz https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,Student_Id,Subject_Id,Value,IsFinal,AddedDate")] Grade grade)
        {
            if (ModelState.IsValid)
            {
                db.Grades.Add(grade);
                db.SaveChanges();
                return RedirectToAction("OcenyUczniaZPrzedmiotu/"+Uczen_ID);
            }

            ViewBag.Student_ID = new SelectList(db.Students.Where(p=>p.Id == Uczen_ID), "Id", "Name");
            ViewBag.Subject_ID = new SelectList(db.Subjects.Where(p=>p.Id == Przedmiot_ID), "Id", "Name");
            return View(grade);
        }

        // GET: Grades/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Grade grade = db.Grades.Find(id);
            if (grade == null)
            {
                return HttpNotFound();
            }
            ViewBag.Student_ID = new SelectList(db.Students.Where(p => p.Id == Uczen_ID), "Id", "Name");
            ViewBag.Subject_ID = new SelectList(db.Subjects.Where(p => p.Id == Przedmiot_ID), "Id", "Name");
            return View(grade);
        }

        // POST: Grades/Edit/5
        // Aby zapewnić ochronę przed atakami polegającymi na przesyłaniu dodatkowych danych, włącz określone właściwości, z którymi chcesz utworzyć powiązania.
        // Aby uzyskać więcej szczegółów, zobacz https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,Student_Id,Subject_Id,Value,IsFinal,AddedDate")] Grade grade)
        {
            if (ModelState.IsValid)
            {
                db.Entry(grade).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("OcenyUczniaZPrzedmiotu/" + Uczen_ID);
            }
            ViewBag.Student_ID = new SelectList(db.Students.Where(p => p.Id == Uczen_ID), "Id", "Name");
            ViewBag.Subject_ID = new SelectList(db.Subjects.Where(p => p.Id == Przedmiot_ID), "Id", "Name");
            return View(grade);
        }

        // GET: Grades/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Grade grade = db.Grades.Find(id);
            if (grade == null)
            {
                return HttpNotFound();
            }
            return View(grade);
        }

        // POST: Grades/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Grade grade = db.Grades.Find(id);
            db.Grades.Remove(grade);
            db.SaveChanges();
            return RedirectToAction("OcenyUczniaZPrzedmiotu/" + Uczen_ID);
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
