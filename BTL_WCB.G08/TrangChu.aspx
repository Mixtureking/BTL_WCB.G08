<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TrangChu.aspx.cs" Inherits="BTL_WCB.G08.TrangChu" %>

<!DOCTYPE html>
<html lang="vi">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trang chủ - Sự kiện</title>
    <link rel="stylesheet" href="css/styleTrangChu.css">
</head>
<body>
    <form id="form1" runat="server">

        <header>
            <div class="logo">LOGO</div>
            <nav class="nav">
                <a href="TrangChu.aspx" class="active">Trang chủ</a>
                <a href="DanhSachSuKien.aspx">Sự kiện</a>
                <a href="GioiThieu.aspx">Giới thiệu</a>
                <a href="Auth/DangNhap.aspx">Đăng nhập</a>
            </nav>
            <div class="menu-toggle" id="menu-toggle">☰</div>
        </header>
        
        <section id="banner">
            <div class="aspect-ratio-169">
                <img src="#" alt="Banner 1" />
                <img src="#" alt="Banner 2" />
                <img src="#" alt="Banner 3" />
            </div>
            <button type="button" class="btn prev">&#10094;</button>
            <button type="button" class="btn next">&#10095;</button>
            <div class="dot-container">
                <div class="dot active"></div>
                <div class="dot"></div>
                <div class="dot"></div>
            </div>
        </section>

        <section class="events">
            <h2>SỰ KIỆN NỔI BẬT</h2>
            <div class="event-list">
                <div class="event-card">
                    <div class="event-img"></div>
                    <h3>TÊN SỰ KIỆN</h3>
                    <p>THỜI GIAN</p>
                    <button type="button">XEM CHI TIẾT</button>
                </div>
                <div class="event-card">
                    <div class="event-img"></div>
                    <h3>TÊN SỰ KIỆN</h3>
                    <p>THỜI GIAN</p>
                    <button type="button">XEM CHI TIẾT</button>
                </div>
                <div class="event-card">
                    <div class="event-img"></div>
                    <h3>TÊN SỰ KIỆN</h3>
                    <p>THỜI GIAN</p>
                    <button type="button">XEM CHI TIẾT</button>
                </div>
            </div>
        </section>

        <footer>
            <p>© 2025 - Trang sự kiện trường học</p>
        </footer>

    </form>

    <script src="js/jsTrangChu.js"></script>
</body>
</html>
