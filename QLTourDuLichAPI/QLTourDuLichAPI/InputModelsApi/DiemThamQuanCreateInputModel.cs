using QLTourDuLichAPI.Models;
namespace QLTourDuLichAPI.InputModelsApi
{
    public class DiemThamQuanCreateInputModel
    {
        public string Tendiadiem { get; set; } = null!;

        public string MaDd { get; set; } = null!;

        public string Mien { get; set; } = null!;

        public string TenFileAnh { get; set; } = null!;

        public string? MoTa { get; set; }
    }
}
