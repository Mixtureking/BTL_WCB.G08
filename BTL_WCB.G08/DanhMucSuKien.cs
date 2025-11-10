using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BTL_WCB.G08
{
    public class DanhMucSuKien
    {
        public static List<SuKien> LayTatCaSuKien()
        {
            return new List<SuKien>
            {
                new SuKien(1, "Lễ hội âm nhạc mùa thu",
                    "Sự kiện âm nhạc quy tụ nhiều nghệ sĩ nổi tiếng, diễn ra ngoài trời với không khí sôi động.",
                    "images/lehoi_amnhac.jpg",
                    new DateTime(2025, 11, 20, 18, 0, 0),
                    "Nhà hát lớn Hà Nội"),

                new SuKien(2, "Hội thảo Công nghệ AI 2025",
                    "Cập nhật xu hướng trí tuệ nhân tạo và ứng dụng trong doanh nghiệp.",
                    "images/hoithao_ai.jpg",
                    new DateTime(2025, 12, 5, 9, 0, 0),
                    "Đại học Bách Khoa Hà Nội"),

                new SuKien(3, "Giải chạy từ thiện vì trẻ em",
                    "Hoạt động thể thao ý nghĩa nhằm gây quỹ hỗ trợ trẻ em vùng cao.",
                    "images/charity_run.jpg",
                    new DateTime(2025, 12, 15, 7, 0, 0),
                    "Công viên Yên Sở"),
                new SuKien(4, "Ngày hội việc làm 2025",
                    "Cơ hội gặp gỡ doanh nghiệp, phỏng vấn trực tiếp và tìm kiếm cơ hội nghề nghiệp.",
                    "img/job_fair.jpg",
                    new DateTime(2025, 11, 25, 8, 30, 0),
                    "Trường Đại học Mở Hà Nội"),

                new SuKien(5, "Workshop Kỹ năng mềm cho sinh viên",
                    "Buổi chia sẻ về giao tiếp, làm việc nhóm và kỹ năng phỏng vấn.",
                    "img/workshop_softskills.jpg",
                    new DateTime(2025, 11, 28, 14, 0, 0),
                    "Phòng hội thảo A2 - Cơ sở chính"),

                new SuKien(6, "Triển lãm công nghệ xanh",
                    "Giới thiệu các sáng kiến và sản phẩm bảo vệ môi trường của sinh viên.",
                    "img/green_tech.jpg",
                    new DateTime(2025, 12, 10, 10, 0, 0),
                    "Sảnh tầng 1 - Trung tâm Triển lãm"),

                new SuKien(7, "Chương trình giao lưu quốc tế",
                    "Sinh viên giao lưu văn hoá với các trường đại học đối tác đến từ Nhật Bản và Hàn Quốc.",
                    "img/international_exchange.jpg",
                    new DateTime(2026, 1, 5, 9, 0, 0),
                    "Hội trường lớn"),

                new SuKien(8, "Cuộc thi thiết kế đồ hoạ 2025",
                    "Chủ đề ‘Sáng tạo không giới hạn’, dành cho sinh viên ngành Mỹ thuật và Thiết kế.",
                    "img/graphic_design.jpg",
                    new DateTime(2025, 12, 18, 13, 30, 0),
                    "Phòng máy A305"),

                new SuKien(9, "Lễ kỷ niệm 10 năm thành lập khoa CNTT",
                    "Chương trình tri ân giảng viên, cựu sinh viên và trao giải thành tích học tập.",
                    "img/it_anniversary.jpg",
                    new DateTime(2025, 11, 30, 18, 0, 0),
                    "Hội trường B1"),

                new SuKien(10, "Chương trình Noel yêu thương",
                    "Buổi ca nhạc gây quỹ giúp đỡ trẻ em mồ côi trong dịp Giáng sinh.",
                    "img/noel_love.jpg",
                    new DateTime(2025, 12, 24, 19, 0, 0),
                    "Sân khấu ngoài trời - Cơ sở 2")
            };
        }
    }
}