
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using QLTourDuLichAPI.InputModelsApi;
using QLTourDuLichAPI.Models;
using System.ComponentModel.DataAnnotations;


namespace QLTourDuLichAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ApiTaiKhoan : Controller
    {
        QltourdlApiContext db = new QltourdlApiContext();
        [HttpGet]
        public IActionResult GetAllTaikhoan()
        {
            var query = (from a in db.TaiKhoans
                         select new
                         {
                             a.UserName,
                             a.Loai,
                             a.Password,
                             a.ConfirmPassword
                            
                         });
            var totalCount = query.Count();

            var listTK = query
                .ToList();

            var result = new
            {
                TotalCount = totalCount,
                //PageCount = pageCount,
                Items = listTK
            };

            return Ok(result);

        }
        [HttpGet]
        [Route("getPagination")]
        public IActionResult GetAllTaikhoanPagination([Range(1, 100)] int pageSize,
           [Range(1, int.MaxValue)] int pageNumber)
        {
            var listTK = (from a in db.TaiKhoans
                          select new
                          {
                              a.UserName,
                              a.Loai,
                              a.Password,
                              a.ConfirmPassword
                          })
                              .Skip((pageNumber - 1) * pageSize)
                              .Take(pageSize)
                              .ToList();
            var result = new
            {
                Items = listTK
            };
            return Ok(result);
        }

        [HttpPost]
        [Route("themTK")]
        public async Task<IActionResult> AddTK([FromForm] TaiKhoanCreateInputModel input)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }


            var DDCheck = db.TaiKhoans.Select(x => x.UserName).ToList();
            if (DDCheck.Any(x => x.Contains(input.UserName)))
            {
                return BadRequest("Đã Tồn Tại Tai KHoản!");
            }

            var newTK = new TaiKhoan
            {
                UserName = input.UserName,
                Loai = input.Loai,
                Password = input.Password,
                ConfirmPassword = input.ConfirmPassword,
            };

            db.TaiKhoans.Add(newTK);
            db.SaveChanges();
            return Ok(input);
        }

        [HttpPut]
        [Route("capnhatTK")]
        public async Task<IActionResult> UpdateTKAsync([FromForm] TaiKhoanCreateInputModel input)
        {
            ViewBag.Username = HttpContext.Session.GetString("UserName");
            var username = HttpContext.Session.GetString("UserName");
            var userid = (from a in db.TaiKhoans
                          where a.UserName == username
                          select a.UserName.ToString()).FirstOrDefault();
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            // Find the TaiKhoan in the database by id
            var TK = await db.TaiKhoans.FindAsync(input.UserName);
            if (TK == null)
            {
                return NotFound();
            }

            // Update the TaiKhoan object with the form data
            TK.UserName = input.UserName;
            TK.Loai = input.Loai;
            TK.Password = input.Password;
            TK.ConfirmPassword = input.ConfirmPassword;


            // Update the TaiKhoan in the database
            db.TaiKhoans.Update(TK);
            await db.SaveChangesAsync();

            return Ok();
        }

        [HttpDelete]
        public IActionResult DeleteTK(string input)
        {
            var DDCheck = (from a in db.TaiKhoans
                           where a.UserName == input
                           select a).FirstOrDefault();

            if (DDCheck == null)
            {
                return BadRequest("Khong tim thay tai khoan!");
            }

            db.TaiKhoans.Remove(DDCheck);
            db.SaveChanges();

            return Ok(input);
        }
    }
}
