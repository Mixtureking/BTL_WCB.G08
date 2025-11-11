using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BTL_WCB.G08
{
    public class DanhSachDangKy
    {
        public static List<ThongTinDangKy> DSDangKy { get; } = new List<ThongTinDangKy>();

        public static void ThemDangKy(ThongTinDangKy thongTin)
        {
            DSDangKy.Add(thongTin);
        }

        public static List<ThongTinDangKy> LayTatCa()
        {
            return DSDangKy;
        }

    }
}