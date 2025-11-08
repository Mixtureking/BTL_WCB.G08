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
                <a href="#" class="active">Trang chủ</a>
                <a href="#">Sự kiện</a>
                <a href="#">Giới thiệu</a>
                <a href="Auth/DangNhap.aspx">Đăng nhập</a>
            </nav>
            <div class="menu-toggle" id="menu-toggle">☰</div>
        </header>

        <section class="banner">
            <h1>BANNER</h1>
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
