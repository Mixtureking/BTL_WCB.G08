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
                    @"Lễ hội diễn ra trong ba ngày liên tiếp với nhiều tiết mục hấp dẫn.
Các nghệ sĩ nổi tiếng trong và ngoài nước tham gia biểu diễn.
Có khu vực ẩm thực và quầy đồ lưu niệm phục vụ khách tham dự.
Các hoạt động ngoài trời được tổ chức đảm bảo an toàn.
Có khu vực cho trẻ em với các hoạt động giáo dục âm nhạc.
Khán giả có thể mua vé trực tuyến hoặc tại chỗ.
Các trò chơi âm nhạc với nhiều giải thưởng thú vị.
Hệ thống âm thanh và ánh sáng chuyên nghiệp được chuẩn bị sẵn.
Nhân viên an ninh giám sát 24/24 để đảm bảo trật tự.
Sự kiện được tài trợ bởi nhiều thương hiệu lớn, mang đến nhiều trải nghiệm đặc sắc.",
                    "img/event-1.jpg",
                    new DateTime(2025, 11, 20, 18, 0, 0),
                    "Nhà hát lớn Hà Nội"),

                new SuKien(2, "Hội thảo Công nghệ AI 2025",
                    "Cập nhật xu hướng trí tuệ nhân tạo và ứng dụng trong doanh nghiệp.",
                    @"Hội thảo tập trung vào các xu hướng AI và Machine Learning mới nhất.
Chuyên gia trong nước và quốc tế sẽ trình bày các nghiên cứu và ứng dụng.
Các công ty sẽ chia sẻ các dự án thực tế triển khai AI.
Có các workshop hướng dẫn triển khai AI trong doanh nghiệp.
Người tham dự có cơ hội trao đổi hợp tác nghiên cứu.
Buổi phỏng vấn tuyển dụng dành cho sinh viên quan tâm ngành AI.
Tài liệu và tài nguyên miễn phí được cung cấp cho người tham dự.
Cuối ngày sẽ có buổi networking giao lưu giữa các thành viên.
Tọa đàm về đạo đức AI trong phát triển công nghệ hiện đại.
Nhiều phần quà hấp dẫn từ các nhà tài trợ được trao tặng.",
                    "img/event-2.jpg",
                    new DateTime(2025, 12, 5, 9, 0, 0),
                    "Đại học Bách Khoa Hà Nội"),

                new SuKien(3, "Giải chạy từ thiện vì trẻ em",
                    "Hoạt động thể thao ý nghĩa nhằm gây quỹ hỗ trợ trẻ em vùng cao.",
                    @"Sự kiện chạy bộ từ thiện diễn ra vào buổi sáng với lộ trình an toàn.
Người tham gia được khuyến khích mặc trang phục đồng phục sự kiện.
Mỗi km chạy đều góp phần gây quỹ hỗ trợ trẻ em vùng cao.
Có nhiều hoạt động bổ trợ như games, ca nhạc và giao lưu.
Tất cả người tham gia được nhận huy chương và quà lưu niệm.
Ban tổ chức cung cấp nước uống và thức ăn nhẹ cho runners.
Các tình nguyện viên hỗ trợ hướng dẫn đường chạy.
Mỗi đội sẽ có nhóm leader để giám sát và hỗ trợ.
Sự kiện nhận được tài trợ từ nhiều tổ chức và doanh nghiệp.
Hoạt động kết thúc bằng buổi lễ trao quà và cảm ơn người tham gia.",
                    "img/event-3.jpg",
                    new DateTime(2025, 12, 15, 7, 0, 0),
                    "Công viên Yên Sở"),

                new SuKien(4, "Ngày hội việc làm 2025",
                    "Cơ hội gặp gỡ doanh nghiệp, phỏng vấn trực tiếp và tìm kiếm cơ hội nghề nghiệp.",
                    @"Ngày hội việc làm diễn ra từ sáng đến chiều, kết hợp phỏng vấn trực tiếp.
Các doanh nghiệp tuyển dụng đa dạng ngành nghề tham gia.
Sinh viên được cung cấp thông tin tuyển dụng chi tiết và hướng dẫn hồ sơ.
Có các buổi workshop về kỹ năng phỏng vấn và viết CV.
Các gian hàng tương tác với ứng viên sôi động và chuyên nghiệp.
Hội trường được bố trí khu vực nghỉ ngơi và tư vấn nghề nghiệp.
Người tham dự nhận được tài liệu hướng dẫn và quà lưu niệm.
Có buổi talkshow chia sẻ kinh nghiệm thành công trong nghề nghiệp.
Nhân viên tư vấn hỗ trợ hướng dẫn các bước ứng tuyển.
Sự kiện được tổ chức đảm bảo an ninh và trật tự.",
                    "img/event-4.jpg",
                    new DateTime(2025, 11, 25, 8, 30, 0),
                    "Trường Đại học Mở Hà Nội"),

                new SuKien(5, "Workshop Kỹ năng mềm cho sinh viên",
                    "Buổi chia sẻ về giao tiếp, làm việc nhóm và kỹ năng phỏng vấn.",
                    @"Workshop kéo dài nửa ngày với các hoạt động tương tác.
Người tham gia học các kỹ năng giao tiếp hiệu quả.
Thực hành làm việc nhóm và xử lý tình huống.
Các chuyên gia chia sẻ kinh nghiệm thực tế.
Có phần hỏi đáp để giải đáp thắc mắc.
Cung cấp tài liệu hướng dẫn và ví dụ minh họa.
Người tham gia được chia nhóm để thực hành kỹ năng.
Nhận xét và feedback từ giảng viên hướng dẫn.
Kết thúc workshop có phần tổng kết và chứng nhận.
Hoạt động tổ chức trong phòng hội thảo đầy đủ tiện nghi.",
                    "img/event-5.jpg",
                    new DateTime(2025, 11, 28, 14, 0, 0),
                    "Phòng hội thảo A2 - Cơ sở chính"),

                new SuKien(6, "Triển lãm công nghệ xanh",
                    "Giới thiệu các sáng kiến và sản phẩm bảo vệ môi trường của sinh viên.",
                    @"Triển lãm trưng bày các sản phẩm và sáng kiến thân thiện môi trường.
Sinh viên giới thiệu dự án và giải pháp công nghệ xanh.
Có hướng dẫn viên giải thích chi tiết từng sản phẩm.
Người tham dự được trải nghiệm thực tế các thiết bị công nghệ.
Các gian hàng được bố trí theo chủ đề rõ ràng.
Có các hoạt động workshop về tái chế và tiết kiệm năng lượng.
Người tham dự nhận tài liệu hướng dẫn về công nghệ xanh.
Ban tổ chức hỗ trợ thảo luận và hỏi đáp.
Cuối triển lãm trao giải cho các dự án xuất sắc.
Sự kiện nhận tài trợ từ nhiều doanh nghiệp xanh.",
                    "img/event-6.jpg",
                    new DateTime(2025, 12, 10, 10, 0, 0),
                    "Sảnh tầng 1 - Trung tâm Triển lãm"),

                new SuKien(7, "Chương trình giao lưu quốc tế",
                    "Sinh viên giao lưu văn hoá với các trường đại học đối tác đến từ Nhật Bản và Hàn Quốc.",
                    @"Chương trình kéo dài một ngày với các hoạt động đa dạng.
Sinh viên tham gia trò chơi văn hóa và thi thuyết trình.
Có buổi hội thảo ngắn về văn hóa và giáo dục quốc tế.
Các nhóm sinh viên được phân phối để học hỏi lẫn nhau.
Cung cấp tài liệu hướng dẫn và quà lưu niệm cho người tham gia.
Buổi ăn trưa và networking tạo cơ hội giao lưu.
Ban tổ chức chuẩn bị màn biểu diễn văn hóa đặc sắc.
Sinh viên trình diễn các tiết mục nghệ thuật của nước mình.
Có phần trao giải và chứng nhận cho các nhóm xuất sắc.
Kết thúc chương trình bằng lễ cảm ơn và chụp ảnh lưu niệm.",
                    "img/event-1.jpg",
                    new DateTime(2026, 1, 5, 9, 0, 0),
                    "Hội trường lớn"),

                new SuKien(8, "Cuộc thi thiết kế đồ hoạ 2025",
                    "Chủ đề ‘Sáng tạo không giới hạn’, dành cho sinh viên ngành Mỹ thuật và Thiết kế.",
                    @"Cuộc thi diễn ra trong một tuần với nhiều vòng thi.
Thí sinh trình bày các tác phẩm sáng tạo theo chủ đề.
Có ban giám khảo gồm chuyên gia ngành thiết kế và mỹ thuật.
Cung cấp hướng dẫn kỹ thuật và tư vấn ý tưởng.
Người tham dự nhận tài liệu tham khảo và ví dụ minh họa.
Các tác phẩm được triển lãm công khai cho khán giả.
Có phần thuyết trình trực tiếp và phản hồi từ giám khảo.
Trao giải cho các hạng mục xuất sắc và sáng tạo.
Người tham dự được nhận chứng nhận tham gia.
Sự kiện được tài trợ bởi các công ty thiết kế nổi tiếng.",
                    "img/event-1.jpg",
                    new DateTime(2025, 12, 18, 13, 30, 0),
                    "Phòng máy A305"),

                new SuKien(9, "Lễ kỷ niệm 10 năm thành lập khoa CNTT",
                    "Chương trình tri ân giảng viên, cựu sinh viên và trao giải thành tích học tập.",
                    @"Lễ kỷ niệm kéo dài buổi tối với nhiều tiết mục văn nghệ.
Trao giải thưởng cho sinh viên xuất sắc và nghiên cứu sinh.
Giảng viên và cựu sinh viên có cơ hội chia sẻ kinh nghiệm.
Có phần triển lãm ảnh và video kỷ niệm 10 năm.
Người tham dự nhận quà lưu niệm và tài liệu kỷ niệm.
Ban tổ chức chuẩn bị âm thanh và ánh sáng chuyên nghiệp.
Có phần giao lưu và chụp ảnh tập thể.
Một số khách mời đặc biệt phát biểu và chia sẻ.
Nhân viên hỗ trợ đảm bảo an ninh và hướng dẫn khách.
Kết thúc bằng màn trình diễn nghệ thuật đặc sắc.",
                    "img/event-1.jpg",
                    new DateTime(2025, 11, 30, 18, 0, 0),
                    "Hội trường B1"),

                new SuKien(10, "Chương trình Noel yêu thương",
                    "Buổi ca nhạc gây quỹ giúp đỡ trẻ em mồ côi trong dịp Giáng sinh.",
                    @"Chương trình ca nhạc diễn ra ngoài trời với sân khấu lớn.
Các nhóm ca sĩ và nhạc sĩ biểu diễn các tiết mục đặc sắc.
Người tham dự được tham gia các trò chơi và hoạt động từ thiện.
Cung cấp khu vực ẩm thực và quầy quà lưu niệm.
Có phần tặng quà cho trẻ em mồ côi và người có hoàn cảnh khó khăn.
Ban tổ chức chuẩn bị âm thanh và ánh sáng chuyên nghiệp.
Các tình nguyện viên hỗ trợ hướng dẫn khách tham dự.
Chương trình kết hợp phần đấu giá gây quỹ từ thiện.
Người tham dự nhận tài liệu thông tin về chương trình và nhà tài trợ.
Kết thúc sự kiện bằng lễ tri ân và chụp ảnh lưu niệm.",
                    "img/event-1.jpg",
                    new DateTime(2025, 12, 24, 19, 0, 0),
                    "Sân khấu ngoài trời - Cơ sở 2")
            };
        }
    }
}