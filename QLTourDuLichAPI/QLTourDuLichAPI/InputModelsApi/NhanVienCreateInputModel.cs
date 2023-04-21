﻿using QLTourDuLichAPI.Models;
namespace QLTourDuLichAPI.InputModelsApi
{
    public class NhanVienCreateInputModel
    {
        public string MaNV { get; set; } = null!;
        public string TenNV { get; set; } = null!;
        public string GioiTinh { get; set; } = null!;

        public string SoDienThoai { get; set; } = null!;
        public string DiaChi { get; set; } = null!;
        public string UserName { get; set; } = null!;
    }
}
