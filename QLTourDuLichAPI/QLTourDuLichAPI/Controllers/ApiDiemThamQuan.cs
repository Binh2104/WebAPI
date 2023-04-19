using Microsoft.AspNetCore.Mvc;
using System.ComponentModel.DataAnnotations;
using System.Drawing.Printing;
using QLTourDuLichAPI.InputModelsApi;
using QLTourDuLichAPI.Models;
namespace QLTourDuLichAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ApiDiemThamQuan : Controller
    {

        QltourdlApiContext db = new QltourdlApiContext();
        [HttpGet]
        public IActionResult GetAllDiemthamquan()
        {
            var query = (from a in db.DiemThamQuans                         
                         select new
                         {
                             a.Tendiadiem,
                             a.MoTa,
                             a.MaDd,
                             a.TenFileAnh,
                             a.Mien
                         });
            var totalCount = query.Count();
            //var pageCount = (int)Math.Ceiling((double)totalCount / pageSize);

            var listDTQ= query
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
        public IActionResult GetAllDiemthamquanPagination([Range(1, 100)] int pageSize,
           [Range(1, int.MaxValue)] int pageNumber)
        {
            var listDTQ = (from a in db.DiemThamQuans
                           select new
                           {
                               a.Tendiadiem,
                               a.MoTa,
                               a.MaDd,
                               a.TenFileAnh,
                               a.Mien
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
    }
}
