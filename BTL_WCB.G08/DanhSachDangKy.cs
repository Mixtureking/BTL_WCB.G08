using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BTL_WCB.G08
{
    public class DanhSachDangKy
    {
        public static List<ThongTinDangKy> DSDangKy = new List<ThongTinDangKy>
{
    new ThongTinDangKy { TenTaiKhoan = "nguyenvana", HoTen = "Nguyễn Văn A", Username = "nguyenvana", SoDienThoai = "0912345678", IdSuKien = 1, TenSuKien = "Lễ hội âm nhạc mùa thu" },
    new ThongTinDangKy { TenTaiKhoan = "tranthib", HoTen = "Trần Thị B", Username = "tranthib", SoDienThoai = "0987654321", IdSuKien = 2, TenSuKien = "Hội thảo Công nghệ AI 2025" },
    new ThongTinDangKy { TenTaiKhoan = "lequangc", HoTen = "Lê Quang C", Username = "lequangc", SoDienThoai = "0909090909", IdSuKien = 3, TenSuKien = "Giải chạy từ thiện vì trẻ em" },
    new ThongTinDangKy { TenTaiKhoan = "phamthid", HoTen = "Phạm Thị D", Username = "phamthid", SoDienThoai = "0933333333", IdSuKien = 4, TenSuKien = "Ngày hội việc làm 2025" },
    new ThongTinDangKy { TenTaiKhoan = "hoangvanh", HoTen = "Hoàng Văn H", Username = "hoangvanh", SoDienThoai = "0977777777", IdSuKien = 5, TenSuKien = "Workshop Kỹ năng mềm cho sinh viên" },
    new ThongTinDangKy { TenTaiKhoan = "dangthik", HoTen = "Đặng Thị K", Username = "dangthik", SoDienThoai = "0966666666", IdSuKien = 6, TenSuKien = "Triển lãm công nghệ xanh" },
    new ThongTinDangKy { TenTaiKhoan = "vuquangl", HoTen = "Vũ Quang L", Username = "vuquangl", SoDienThoai = "0955555555", IdSuKien = 1, TenSuKien = "Lễ hội âm nhạc mùa thu" },
    new ThongTinDangKy { TenTaiKhoan = "ngothim", HoTen = "Ngô Thị M", Username = "ngothim", SoDienThoai = "0944444444", IdSuKien = 2, TenSuKien = "Hội thảo Công nghệ AI 2025" },
    new ThongTinDangKy { TenTaiKhoan = "buituan", HoTen = "Bùi Tuấn", Username = "buituan", SoDienThoai = "0932222222", IdSuKien = 3, TenSuKien = "Giải chạy từ thiện vì trẻ em" },
    new ThongTinDangKy { TenTaiKhoan = "doanthi", HoTen = "Doãn Thị N", Username = "doanthi", SoDienThoai = "0921111111", IdSuKien = 4, TenSuKien = "Ngày hội việc làm 2025" }
};

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