<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TrangChu.aspx.cs" Inherits="BTL_WCB.G08.TrangChu" %>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trang chủ - Sự kiện</title>
    <link rel="stylesheet" href="css/styleTrangChu.css">
</head>
<body>
    <form id="form1" runat="server">
        <header>
            <div class="logo">
                <a href="TrangChu.aspx"><img src="img/logo.png" alt="logo.png" /></a> 
            </div>
            <div class="menu-toggle" id="menu-toggle">☰</div>
            <nav class="nav">
                <a href="TrangChu.aspx" class="active">Trang chủ</a>
                <a href="DanhSachSuKien.aspx">Sự kiện</a>
                <a href="GioiThieu.aspx">Giới thiệu</a>
                <asp:PlaceHolder ID="phLogin" runat="server">
                    <a href="Auth/DangNhap.aspx">Đăng nhập</a>
                </asp:PlaceHolder>
                <asp:PlaceHolder ID="phUser" runat="server" Visible="false">
                    <asp:LinkButton ID="lnkUsername" runat="server" OnClick="lnkUsername_Click"></asp:LinkButton>
                    | <a href="Auth/DangXuat.aspx">Đăng xuất</a>
                </asp:PlaceHolder>
            </nav>
        </header>
        
        <section id="banner">
            <div class="aspect-ratio-169">
                <img src="img/banner-1.jpg" alt="Banner 1" />
                <img src="img/banner-2.jpg" alt="Banner 2" />
                <img src="img/banner-3.jpg" alt="Banner 3" />
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
                    <div class="event-img">
                        <img src="img/event-1.jpg" alt="Event" />
                    </div>
                    <h3>Lễ hội âm nhạc mùa thu</h3>
                    <p>📆 20/11/2025</p>
                    <a href="ChiTietSuKien.aspx?id=1"><button type="button">XEM CHI TIẾT</button></a>
                </div>
                <div class="event-card">
                    <div class="event-img">
                        <img src="img/event-2.jpg" alt="Event" />
                    </div>
                    <h3>Hội thảo Công nghệ AI 2025</h3>
                    <p>📆 05/12/2025</p>
                    <a href="ChiTietSuKien.aspx?id=2"><button type="button">XEM CHI TIẾT</button></a>
                </div>
                <div class="event-card">
                    <div class="event-img">
                        <img src="img/event-3.jpg" alt="Event" />
                    </div>
                    <h3>Giải chạy từ thiện vì trẻ em</h3>
                    <p>📆 15/12/2025</p>
                    <a href="ChiTietSuKien.aspx?id=3"><button type="button">XEM CHI TIẾT</button></a>
                </div>
                <div class="event-card">
                    <div class="event-img">
                        <img src="img/event-4.jpg" alt="Event" />
                    </div>
                    <h3>Ngày hội việc làm 2025</h3>
                    <p>📆 25/11/2025</p>
                    <a href="ChiTietSuKien.aspx?id=4"><button type="button">XEM CHI TIẾT</button></a>
                </div>
                <div class="event-card">
                    <div class="event-img">
                        <img src="img/event-5.jpg" alt="Event" />
                    </div>
                    <h3>Workshop Kỹ năng mềm cho sinh viên</h3>
                    <p>📆 28/11/2025</p>
                    <a href="ChiTietSuKien.aspx?id=5"><button type="button">XEM CHI TIẾT</button></a>
                </div>
                <div class="event-card">
                    <div class="event-img">
                        <img src="img/event-6.jpg" alt="Event" />
                    </div>
                    <h3>Triển lãm công nghệ xanh</h3>
                    <p>📆 10/12/2025</p>
                    <a href="ChiTietSuKien.aspx?id=6"><button type="button">XEM CHI TIẾT</button></a>
                </div>
            </div>
        </section>

        <footer class="main-footer">
            <div class="container">
                <div class="footer-content">

                    <div class="footer-column about-us">
                        <h4>Về BTL Web Cơ Bản</h4>
                        <p>Đây là dự án Bài Tập Lớn môn Web Cơ Bản (WCB.G08). Ứng dụng quản lý thông tin cơ 
                            bản.</p>
                        <div class="social-links">
                            <a href="https://www.facebook.com/fithou.edu.vn"><img src="img/facebook.png" alt="Facebook" /></a>
                            <a href="https://www.youtube.com/c/Truy%E1%BB%81nTh%C3%B4ngHou"><img src="img/youtube.png" alt="Youtube" /></a>
                        </div>
                    </div>

                    <div class="footer-column quick-links">
                        <h4>Liên kết nhanh</h4>
                        <ul>
                            <li><a href="TrangChu.aspx">Trang Chủ</a></li>
                            <li><a href="DanhSachSuKien.aspx">Sự Kiện</a></li>
                            <li><a href="GioiThieu.aspx">Giới Thiệu</a></li>
                            </ul>
                    </div>

                    <div class="footer-column support-info">
                        <h4>Hỗ trợ</h4>
                        <ul>
                            <li><a href="#">Chính sách bảo mật</a></li>
                            <li><a href="#">Điều khoản dịch vụ</a></li>
                            <li><a href="#">Câu hỏi thường gặp (FAQ)</a></li>
                            <li><a href="#">Hướng dẫn sử dụng</a></li>
                        </ul>
                    </div>

                    <div class="footer-column contact-us">
                        <h4>Thông tin nhóm</h4>
                        <p>
                            <strong>Môn học:</strong> Web Cơ Bản (WCB)<br>
                            <strong>Nhóm:</strong> G08<br>
                            <strong>Khoa:</strong> Công nghệ Thông tin<br>
                        </p>
                    </div>

                </div>
            </div>

            <div class="footer-bottom">
                <div class="container">
                    <p>&copy; 2025 BTL WCB.G08. All rights reserved.</p>
                </div>
            </div>
        </footer>

    </form>

    <script src="js/jsTrangChu.js"></script>
</body>
</html>
