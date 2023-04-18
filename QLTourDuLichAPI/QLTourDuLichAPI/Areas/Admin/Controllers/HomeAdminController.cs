﻿using QLTourDuLichAPI.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using QLTourDuLichAPI.Models.Authentication;
using X.PagedList;


namespace QLTourDuLichAPI.Areas.Admin.Controllers
{
    [Area("Admin")]
    [Route("Admin")]
    [Route("Admin/HomeAdmin")]
    public class HomeAdminController : Controller
    {
        QltourdlApiContext db = new QltourdlApiContext();
        //test
        [Route("")]
        [Route("Index")]
        [Authentication]
        public IActionResult Index()
        {
            ViewBag.Username = HttpContext.Session.GetString("UserName");

            /*  if (Session["U"])*/
            return View();
        }



    }
}
