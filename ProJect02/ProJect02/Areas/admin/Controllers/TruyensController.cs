using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using ProJect02.Models;

namespace ProJect02.Areas.admin.Controllers
{
    public class TruyensController : Controller
    {
        private projectEntities db = new projectEntities();

        // GET: admin/Truyens
        public ActionResult Index()
        {
            return View(db.Truyen.ToList());
        }

        // GET: admin/Truyens/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Truyen truyen = db.Truyen.Find(id);
            if (truyen == null)
            {
                return HttpNotFound();
            }
            return View(truyen);
        }

        // GET: admin/Truyens/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: admin/Truyens/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "MaTruyen,TenTruyen,TacGia,MoTa,NgayDang,TrangThai,LuotXem")] Truyen truyen)
        {
            if (ModelState.IsValid)
            {
                db.Truyen.Add(truyen);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(truyen);
        }

        // GET: admin/Truyens/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Truyen truyen = db.Truyen.Find(id);
            if (truyen == null)
            {
                return HttpNotFound();
            }
            return View(truyen);
        }

        // POST: admin/Truyens/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "MaTruyen,TenTruyen,TacGia,MoTa,NgayDang,TrangThai,LuotXem")] Truyen truyen)
        {
            if (ModelState.IsValid)
            {
                db.Entry(truyen).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(truyen);
        }

        // GET: admin/Truyens/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Truyen truyen = db.Truyen.Find(id);
            if (truyen == null)
            {
                return HttpNotFound();
            }
            return View(truyen);
        }

        // POST: admin/Truyens/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Truyen truyen = db.Truyen.Find(id);
            db.Truyen.Remove(truyen);
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
