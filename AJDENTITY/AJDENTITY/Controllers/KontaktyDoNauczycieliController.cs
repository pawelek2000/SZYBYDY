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
    public class KontaktyDoNauczycieliController : Controller
    {
        private Entities db = new Entities();

        static private string Rodzic_ID;
        static private string Nauczyciel_ID;

        // GET: KontaktyDoNauczycieli
        public ActionResult Index()
        {
            var teachers = db.Teachers.Include(t => t.AspNetUser);
            return View(teachers.ToList());
        }

        // GET: KontaktyDoNauczycieli/Details/5
        public ActionResult Details(int? id)
        {
            IdentityManager identityManager = new IdentityManager();

            Rodzic_ID = identityManager.GetUserByName(User.Identity.Name).Id;
            Nauczyciel_ID = db.Teachers.ToList().Find(p => (p.Id == id)).Account_Id;

            var messages = db.Messages.Include(m => m.AspNetUser).Where(p => (p.SenderId == Rodzic_ID && p.ReceiverId == Nauczyciel_ID) || (p.SenderId == Nauczyciel_ID && p.ReceiverId == Rodzic_ID));

            foreach(var message in messages) {
                if(message.SenderId == Rodzic_ID) {
                    message.SenderId = db.Parents.ToList().Find(p => p.AspNetUser.Email == User.Identity.Name).Name + " " + db.Parents.ToList().Find(p => p.AspNetUser.Email == User.Identity.Name).Surname;
                }
                else {
                    message.SenderId = db.Teachers.ToList().Find(p => p.Id == id).Name + " " + db.Parents.ToList().Find(p => p.Id == id).Surname;
                }
            }

            return View(messages.ToList());
        }

        // GET: Messages/Create
        public ActionResult Create() {
            return View();
        }

        // POST: Messages/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,SenderId,Content,SendDate")] Message message) {
            if (ModelState.IsValid && message.Content != "") {
                message.SendDate = DateTime.Now;

                message.SenderId = Rodzic_ID;
                message.ReceiverId = Nauczyciel_ID;

                db.Messages.Add(message);
                db.SaveChanges();

                return RedirectToAction("Index");
            }

            return View(message);
        }
    }
}