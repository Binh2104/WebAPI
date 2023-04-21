using Microsoft.AspNetCore.Mvc;
using QLTourDuLichAPI.Models;
using System.ComponentModel.DataAnnotations;

namespace QLTourDuLichAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ApiDDT : Controller
    {
        QltourdlApiContext db = new QltourdlApiContext();
        [HttpGet]
        public IActionResult getAllDDT()
        {
            var query = (from a in db.DiaDiemTours 
                         join b in db.Tours on a.MaTour equals b.MaTour 
                         join c in db.DiemThamQuans on a.MaDd equals c.MaDd
                         orderby a.MaTour
                         select new
                         {
                             a.MaDd, 
                             a.MaTour,
                             b.TenTour,
                             c.Tendiadiem,
                             a.ViTriAnh,
                         });
            var totalCount = query.Count();
            //var pageCount = (int)Math.Ceiling((double)totalCount / pageSize);

            var listDTQ = query
                .ToList();

            var result = new
            {
                TotalCount = totalCount,
                //PageCount = pageCount,
                Items = listDTQ
            };

            return Ok(result);

        }
        [HttpGet]
        [Route("getPagination")]
        public IActionResult GetAllDDTPagination([Range(1, 100)] int pageSize,
         [Range(1, int.MaxValue)] int pageNumber)
        {
            var listDTQ = (from a in db.DiaDiemTours
                           join b in db.Tours on a.MaTour equals b.MaTour
                           join c in db.DiemThamQuans on a.MaDd equals c.MaDd
                           orderby a.MaTour
                           select new
                           {
                               a.MaDd,
                               a.MaTour,
                               b.TenTour,
                               c.Tendiadiem,
                               a.ViTriAnh,
                           })
                              .Skip((pageNumber - 1) * pageSize)
                              .Take(pageSize)
                              .ToList();
            var result = new
            {
                Items = listDTQ
            };
            return Ok(result);
        }
        public IActionResult Index()
        {
            return View();
        }
    }
}
