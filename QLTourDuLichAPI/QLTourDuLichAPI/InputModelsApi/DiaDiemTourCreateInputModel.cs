using QLTourDuLichAPI.Models;
namespace QLTourDuLichAPI.InputModelsApi
{
    public class DiaDiemTourCreateInputModel
    {
        public string MaDd { get; set; } = null!;

        public string ViTriAnh { get; set; } = null!;

        public string MaTour { get; set; } = null!;
        public virtual DiemThamQuan MaDdNavigation { get; set; } = null!;

        public virtual Tour MaTourNavigation { get; set; } = null!;
    }
}
