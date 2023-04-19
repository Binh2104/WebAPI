using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using QLTourDuLichAPI.Models;
using System.ComponentModel.DataAnnotations;

namespace QLTourDuLichAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ApiNhanVien : Controller
    {
        QltourdlApiContext db = new QltourdlApiContext();
        [HttpGet]
        public IActionResult GetAllNhanvien()
        {
            var query = (from a in db.NhanViens
                         select new
                         {
                             a.MaNv,
                             a.TenNv,
                             a.GioiTinh,
                             a.SoDienThoai,
                             a.DiaChi
                         });
            var totalCount = query.Count();
            //var pageCount = (int)Math.Ceiling((double)totalCount / pageSize);

            var listNV = query
                .ToList();

            var result = new
            {
                TotalCount = totalCount,
                //PageCount = pageCount,
                Items = listNV
            };

            return Ok(result);

        }
        [HttpGet]
        [Route("getPagination")]
        public IActionResult GetAllNhanvienPagination([Range(1, 100)] int pageSize,
           [Range(1, int.MaxValue)] int pageNumber)
        {
            var listNV = (from a in db.NhanViens
                           select new
                           {
                               a.MaNv,
                               a.TenNv,
                               a.GioiTinh,
                               a.SoDienThoai,
                               a.DiaChi
                           })
                              .Skip((pageNumber - 1) * pageSize)
                              .Take(pageSize)
                              .ToList();
            var result = new
            {
                Items = listNV
            };
            return Ok(result);
        }
    }
}
