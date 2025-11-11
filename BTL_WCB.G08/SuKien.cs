using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BTL_WCB.G08
{
    public class SuKien
    {
        public int Id { get; set; }
        public string Title { get; set; }
        public string MoTa { get; set; }
        public string MoTaChiTiet { get; set; }
        public string Anh { get; set; }
        public DateTime ThoiGian { get; set; }
        public string DiaDiem { get; set; }

        public SuKien(int id, string title, string moTa, string anh, string MoTaChiTiet, DateTime thoiGian, string diaDiem)
        {
            Id = id;
            Title = title;
            MoTaChiTiet = MoTaChiTiet;
            MoTa = moTa;
            Anh = anh;
            ThoiGian = thoiGian;
            DiaDiem = diaDiem;
        }
    }
}