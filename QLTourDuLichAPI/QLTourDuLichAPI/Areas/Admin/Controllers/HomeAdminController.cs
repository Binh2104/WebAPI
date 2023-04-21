using QLTourDuLichAPI.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using QLTourDuLichAPI.Models.Authentication;
using X.PagedList;


namespace QLTourDuLichAPI.Areas.Admin.Controllers
{
    //thu
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
        //diem tham quan
        [Route("DSDTQuan")]
        [Authentication]
		public IActionResult DSDTQuan()
		{
			ViewBag.Username = HttpContext.Session.GetString("UserName");
			var lstDTQ = (from a in db.DiemThamQuans select a).ToList();
			return View(lstDTQ);
		}
        //tour du lich
        [Route("DSTour")]
        [Authentication]
        public IActionResult DSTour()
        {
            ViewBag.Username = HttpContext.Session.GetString("UserName");
            var lstTour = (from a in db.Tours select a).ToList();
            return View(lstTour);
        }
        [Route("ThemDDchoTour")]
        [Authentication]
        public IActionResult ThemDDchoTour()
        {
            ViewBag.Username = HttpContext.Session.GetString("UserName");
            
            return View();
        }
        //Nhan Vien
        [Route("danhsachnhansu")]
		[Authentication]
		public IActionResult danhsachnhansu()
		{
			ViewBag.Username = HttpContext.Session.GetString("UserName");
			var lstNV = (from a in db.NhanViens select a).ToList();
			return View(lstNV);
		}


	}
}
