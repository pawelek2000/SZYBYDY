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
    public class ParentsController : Controller
    {
        private Entities db = new Entities();

        // GET: Parents
        public ActionResult Index()
        {
            var parents = db.Parents.Include(p => p.AspNetUser);
            return View(parents.ToList());
        }

        // GET: Parents/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Parent parent = db.Parents.Find(id);
            if (parent == null)
            {
                return HttpNotFound();
            }
            return View(parent);
        }

        // GET: Parents/Create
        public ActionResult Create()
        {
            var manager = new IdentityManager();

            var current_parents = db.Parents.ToList();
            var current_parent_accounts = new List<AspNetUser>();

            foreach (var parent in current_parents) {
                current_parent_accounts.Add(db.AspNetUsers.Where(p => p.Id == parent.Account_Id).ToList()[0]);
            }

            var parent_role = db.AspNetRoles.Where(p => p.Name == "Rodzic").ToList()[0];
            var all_parent_accounts = new List<AspNetUser>();

            foreach (var account in db.AspNetUsers) {
                var user = manager.GetUserByID(account.Id);

                if (user.Roles.ToList()[0].RoleId == parent_role.Id) {
                    all_parent_accounts.Add(account);
                }
            }

            var result = all_parent_accounts.Where(p => !current_parent_accounts.Contains(p)).ToList();
            ViewBag.Account_Id = new SelectList(result, "Id", "Email");

            return View();
        }

        // POST: Parents/Create
        // Aby zapewnić ochronę przed atakami polegającymi na przesyłaniu dodatkowych danych, włącz określone właściwości, z którymi chcesz utworzyć powiązania.
        // Aby uzyskać więcej szczegółów, zobacz https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,Account_Id,Name,Surname,PhoneNumber")] Parent parent)
        {
            if (ModelState.IsValid)
            {
                db.Parents.Add(parent);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.Account_ID = new SelectList(db.AspNetUsers, "Id", "Email", parent.Account_Id);
            return View(parent);
        }

        // GET: Parents/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Parent parent = db.Parents.Find(id);
            if (parent == null)
            {
                return HttpNotFound();
            }

            // POLSKA
            var manager = new IdentityManager();

            var current_parents = db.Parents.ToList();
            var current_parent_accounts = new List<AspNetUser>();

            foreach (var paaaaaa in current_parents) {
                current_parent_accounts.Add(db.AspNetUsers.Where(p => p.Id == paaaaaa.Account_Id).ToList()[0]);
            }

            var parent_role = db.AspNetRoles.Where(p => p.Name == "Rodzic").ToList()[0];
            var all_parent_accounts = new List<AspNetUser>();

            foreach (var account in db.AspNetUsers) {
                var user = manager.GetUserByID(account.Id);

                if (user.Roles.ToList()[0].RoleId == parent_role.Id) {
                    all_parent_accounts.Add(account);
                }
            }

            var result = all_parent_accounts.Where(p => !current_parent_accounts.Contains(p)).ToList();
            result.Insert(0, db.AspNetUsers.ToList().Find(p => p.Id == parent.Account_Id));
            // GUROM

            ViewBag.Account_ID = new SelectList(result, "Id", "Email", parent.Account_Id);
            return View(parent);
        }

        // POST: Parents/Edit/5
        // Aby zapewnić ochronę przed atakami polegającymi na przesyłaniu dodatkowych danych, włącz określone właściwości, z którymi chcesz utworzyć powiązania.
        // Aby uzyskać więcej szczegółów, zobacz https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,Account_Id,Name,Surname,PhoneNumber")] Parent parent)
        {
            if (ModelState.IsValid)
            {
                db.Entry(parent).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.Account_ID = new SelectList(db.AspNetUsers, "Id", "Email", parent.Account_Id);
            return View(parent);
        }

        // GET: Parents/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Parent parent = db.Parents.Find(id);
            if (parent == null)
            {
                return HttpNotFound();
            }
            return View(parent);
        }

        // POST: Parents/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Parent parent = db.Parents.Find(id);
            db.Parents.Remove(parent);
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
