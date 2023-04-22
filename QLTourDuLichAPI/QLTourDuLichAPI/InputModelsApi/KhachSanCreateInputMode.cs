﻿using QLTourDuLichAPI.Models;
namespace QLTourDuLichAPI.InputModelsApi
{
    public class KhachSanCreateInputMode
    {
        public string MaKs { get; set; } = null!;

        public string TenKs { get; set; } = null!;

        public string DiaChi { get; set; } = null!;

        public string Sdt { get; set; } = null!;

        public int XepHangKs { get; set; }

        public IFormFile? TenFileAnh { get; set; } = null!;
    }
}
