<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DanhSachSuKien.aspx.cs" Inherits="BTL_WCB.G08.DanhSachSuKien" %>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Danh sách sự kiện</title>
    <link rel="stylesheet" href="css/styleDanhSachSuKien.css">
</head>
<body>
    <form id="form1" runat="server">
        <header>
            <div class="logo">LOGO</div>
            <nav class="nav">
                <a href="TrangChu.aspx">Trang chủ</a>
                <a href="DanhSachSuKien.aspx" class="active">Sự kiện</a>
                <a href="GioiThieu.aspx">Giới thiệu</a>
                <a href="Auth/DangNhap.aspx">Đăng nhập</a>
            </nav>
            <div class="menu-toggle" id="menu-toggle">☰</div>
        </header>

        <main class="content-wrapper">
    <!-- Cột trái: Tin tức -->
    <section class="news-section">
        <h2>Tin tức</h2>
        <ul class="news-list">
            <li>
                <img src="img/Doro-shutup.png" alt="FIT HOU">
                <div class="news-info">
                    <p class="news-title">Hướng dẫn bình chọn cho Dự án Smart Wheel Chair tham gia VCK Cuộc thi SV STARTUP lần thứ V</p>
                    <span class="news-date">02/03/2023</span>
                    <button class="btn-view">Xem thêm</button>
                </div>
            </li>
            <li>
                <img src="img/Doro-shutup.png" alt="FIT HOU">
                <div class="news-info">
                    <p class="news-title">Thông báo triệu tập sinh viên tham dự Tuần sinh hoạt CDSV năm học 2017-2018 dành cho SV giữa khóa</p>
                    <span class="news-date">23/01/2018</span>
                    <button class="btn-view">Xem thêm</button>
                </div>
            </li>
            <li>
                <img src="img/Doro-shutup.png" alt="FIT HOU">
                <div class="news-info">
                    <p class="news-title">Thông báo quyết định và danh sách SV được nhận học bổng năm học 2016-2017</p>
                    <span class="news-date">05/12/2017</span>
                    <button class="btn-view">Xem thêm</button>
                </div>
            </li>
        </ul>
    </section>

    <!-- Cột phải: Các mục bổ sung -->
    <aside class="sidebar">
        <div class="sidebar-section">
            <h3>Tuyển dụng</h3>
            <ul>
                <li>
                    <img src="img/Doro-shutup.png" alt="FIT HOU">
                    <p>Công ty Cổ phần Chứng khoán FPT tuyển Chuyên Viên Quản Trị Dữ Liệu Oracle</p>
                </li>
                <li>
                    <img src="img/Doro-shutup.png" alt="FIT HOU">
                    <p>Thông báo sinh viên tham gia tạo tài khoản trên Cổng thông tin việc làm của Nhà trường</p>
                </li>
                <li>
                    <img src="img/Doro-shutup.png" alt="FIT HOU">
                    <p>Thông tin doanh nghiệp tuyển dụng sinh viên tốt nghiệp</p>
                </li>
            </ul>
        </div>

        <div class="sidebar-section">
            <h3>Quy định, biểu mẫu</h3>
            <ul>
                <li>
                    <img src="img/Doro-shutup.png" alt="FIT HOU">
                    <p>Quyết định số 2280/QĐ-ĐHM ngày 16/6/2025 về mức thu học phí 2025-2026</p>
                </li>
                <li>
                    <img src="img/Doro-shutup.png" alt="FIT HOU">
                    <p>Quy chế đào tạo trình độ Đại học của Trường ĐH Mở Hà Nội (theo Quyết định số 1818/QĐ-ĐHM ngày 10/05/2024)</p>
                </li>
            </ul>
        </div>
    </aside>
</main>

    </form>

    <footer>
        <p>© 2025 - Trang sự kiện trường học</p>
    </footer>

</body>
</html>
