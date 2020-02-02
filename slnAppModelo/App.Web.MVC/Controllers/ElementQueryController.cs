using App.Data.Repository;
using App.Data.Repository.Interface;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace App.Web.MVC.Controllers
{
    public class ElementQueryController : Controller
    {
        private readonly IAppUnitOfWork _unit;

        public ElementQueryController()
        {
            _unit = new AppUnitOfWork();
        }
        // GET: ElementQuery
        public ActionResult Index()
        {
            return View(_unit.ElementQueryRepository.GetElements());
        }
    }
}