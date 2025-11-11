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
    new ThongTinDangKy { TenTaiKhoan = "trung", HoTen = "Nguyễn Văn A", SoDienThoai = "0912345678", IdSuKien = 1, TenSuKien = "Lễ hội âm nhạc mùa thu", Email = "example@abc.com" },
    new ThongTinDangKy { TenTaiKhoan = "trung", HoTen = "Trần Thị B", SoDienThoai = "0987654321", IdSuKien = 2, TenSuKien = "Hội thảo Công nghệ AI 2025", Email = "example@abc.com" },
    new ThongTinDangKy { TenTaiKhoan = "lequangc", HoTen = "Lê Quang C", SoDienThoai = "0909090909", IdSuKien = 3, TenSuKien = "Giải chạy từ thiện vì trẻ em", Email = "example@abc.com" },
    new ThongTinDangKy { TenTaiKhoan = "phamthid", HoTen = "Phạm Thị D", SoDienThoai = "0933333333", IdSuKien = 4, TenSuKien = "Ngày hội việc làm 2025", Email = "example@abc.com" },
    new ThongTinDangKy { TenTaiKhoan = "hoangvanh", HoTen = "Hoàng Văn H", SoDienThoai = "0977777777", IdSuKien = 5, TenSuKien = "Workshop Kỹ năng mềm cho sinh viên", Email = "example@abc.com" },
    new ThongTinDangKy { TenTaiKhoan = "dangthik", HoTen = "Đặng Thị K", SoDienThoai = "0966666666", IdSuKien = 6, TenSuKien = "Triển lãm công nghệ xanh", Email = "example@abc.com" },
    new ThongTinDangKy { TenTaiKhoan = "vuquangl", HoTen = "Vũ Quang L", SoDienThoai = "0955555555", IdSuKien = 1, TenSuKien = "Lễ hội âm nhạc mùa thu", Email = "example@abc.com" },
    new ThongTinDangKy { TenTaiKhoan = "ngothim", HoTen = "Ngô Thị M", SoDienThoai = "0944444444", IdSuKien = 2, TenSuKien = "Hội thảo Công nghệ AI 2025", Email = "example@abc.com" },
    new ThongTinDangKy { TenTaiKhoan = "buituan", HoTen = "Bùi Tuấn", SoDienThoai = "0932222222", IdSuKien = 3, TenSuKien = "Giải chạy từ thiện vì trẻ em", Email = "example@abc.com" },
    new ThongTinDangKy { TenTaiKhoan = "doanthi", HoTen = "Doãn Thị N", SoDienThoai = "0921111111", IdSuKien = 4, TenSuKien = "Ngày hội việc làm 2025", Email = "example@abc.com" }
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