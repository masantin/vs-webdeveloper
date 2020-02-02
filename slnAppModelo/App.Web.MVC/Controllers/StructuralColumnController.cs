using App.Data.Repository;
using App.Data.Repository.Interface;
using App.Entities.Base;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace App.Web.MVC.Controllers
{
    public class StructuralColumnController : Controller
    {
        private readonly IAppUnitOfWork _unit;

        public StructuralColumnController()
        {
            _unit = new AppUnitOfWork();           
        }
        // GET: StructuralColumn
        public ActionResult Index()
        {
            return View(_unit.StructuralColumnsRepository.GetAll());
        }

        //CREATE: StructuralColumn
        public ActionResult Create()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Create(StructuralColumns structuralColumn)
        {
            if (ModelState.IsValid)
            {
                _unit.StructuralColumnsRepository.Add(structuralColumn);
                return RedirectToAction("Index");
            }
            return View(structuralColumn);

        }

        public ActionResult Update(int id)
        {
            return View(_unit.StructuralColumnsRepository.GetById(id));
        }

        [HttpPost]
        public ActionResult Update(StructuralColumns structuralColumn)
        {
            if (_unit.StructuralColumnsRepository.Update(structuralColumn)) return RedirectToAction("Index");
            return View(structuralColumn);

        }
        public ActionResult Delete(int id)
        {
            return View(_unit.StructuralColumnsRepository.GetById(id));
        }
        [HttpPost]
        [ActionName("Delete")]
        public ActionResult DeletePost(int id)
        {
            if (_unit.StructuralColumnsRepository.Remove(id)) return RedirectToAction("Index");
            return View(_unit.StructuralColumnsRepository.GetById(id));
        }


    }
}