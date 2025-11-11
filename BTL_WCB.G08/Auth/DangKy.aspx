<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangKy.aspx.cs" Inherits="BTL_WCB.G08.Auth.DangKy" %>

<!DOCTYPE html>
<html lang="vi">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Đăng ký - Sự kiện</title>
    <link href="../css/styleDangKy.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <header>
            <div class="logo">
                <a href="TrangChu.aspx"><img src="../img/logo.png" alt="logo.png" /></a> 
            </div>
            <nav class="nav">
                <a href="../TrangChu.aspx">Trang chủ</a>
                <a href="../DanhSachSuKien.aspx">Sự kiện</a>
                <a href="../GioiThieu.aspx">Giới thiệu</a>
                <a href="DangNhap.aspx" class="active">Đăng nhập</a>
            </nav>
            <div class="menu-toggle" id="menu-toggle">☰</div>
        </header>

        <section class="auth-container">
            <div class="auth-box">
                <h2>Đăng ký tài khoản</h2>

                <asp:TextBox ID="txtNewUsername" runat="server" CssClass="input" placeholder="Tên đăng nhập"></asp:TextBox>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="input" TextMode="Email" placeholder="Email"></asp:TextBox>
                <asp:TextBox ID="txtNewPassword" runat="server" CssClass="input" TextMode="Password" placeholder="Mật khẩu"></asp:TextBox>
                <asp:TextBox ID="txtConfirmPassword" runat="server" CssClass="input" TextMode="Password" placeholder="Nhập lại mật khẩu"></asp:TextBox>

                <asp:Button ID="btnCreateAccount" runat="server" Text="Tạo tài khoản" CssClass="btn" OnClick="btnCreateAccount_Click" />

                <p style="text-align:center; margin-top:10px;">
                    Đã có tài khoản? <a href="DangNhap.aspx">Đăng nhập</a>
                </p>
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
                            <a href="https://www.facebook.com/fithou.edu.vn"><img src="../img/facebook.png" alt="Facebook" /></a>
                            <a href="https://www.youtube.com/c/Truy%E1%BB%81nTh%C3%B4ngHou"><img src="../img/youtube.png" alt="Youtube" /></a>
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

    <script src="../js/jsDangNhap.js"></script>
</body>
</html>
