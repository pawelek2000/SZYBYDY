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
    public class MojeDzieciController : Controller
    {
        private Entities db = new Entities();
        IdentityManager IM = new IdentityManager();
        static int? CurrentDzieckoID;

        // GET: MojeDzieci
        public ActionResult Index()
        {
            var CurrentUser = IM.GetUserByName(User.Identity.Name);
            var parent = db.Parents.Where(p => p.Account_Id == CurrentUser.Id).ToList()[0];
            var moje_dzieci = db.Students.Where(p => p.Parent_Id == parent.Id);
            return View(moje_dzieci.ToList());
            
        }

        // GET: MojeDzieci/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            CurrentDzieckoID = id;
            var student = db.Students.Where(p => p.Id == id).ToList()[0];
            var CST = db.ClassSubjectTeachers.Where(p => p.Class_Id == student.Class_Id).ToList();
            List<Subject> SubjectsList = new List<Subject>();
            foreach (var cst in CST)
            {
                SubjectsList.Add(db.Subjects.Where(p => p.Id == cst.Subject_Id).ToList()[0]);
            }
            return View(SubjectsList);
        }
        public ActionResult OcenyDziecka(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            var student = db.Students.Where(p => p.Id == CurrentDzieckoID).ToList()[0];
            var GradesList = db.Grades.Where(p => p.Subject_Id == id).ToList();
            GradesList = GradesList.Where(p => p.Student_Id == student.Id).ToList();
            return View(GradesList);
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
