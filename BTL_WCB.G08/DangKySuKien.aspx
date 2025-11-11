<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangKySuKien.aspx.cs" Inherits="BTL_WCB.G08.DangKySuKien" %>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Đăng ký sự kiện</title>
    <link rel="stylesheet" href="css/styleChiTietSuKien.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="page-container">
        <header>
            <div class="logo">
                <a href="TrangChu.aspx"><img src="img/logo.png" alt="logo.png" /></a> 
            </div>
            <div class="menu-toggle" id="menu-toggle">☰</div>
            <nav class="nav">
                <a href="TrangChu.aspx">Trang chủ</a>
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

        <main class="content-wrapper">
            <section class="news-section">
                <h2>Đăng ký tham gia sự kiện</h2>
                <asp:Label ID="lblTenSuKien" runat="server" CssClass="news-desc" Text=""></asp:Label>
                <div>
                    <label for="txtHoTen">Họ và tên:</label><br />
                    <asp:TextBox ID="txtHoTen" runat="server" CssClass="form-input" /><br /><br />

                    <label for="txtEmail">Email:</label><br />
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-input" /><br /><br />

                    <label for="txtSoDienThoai">Số điện thoại:</label><br />
                    <asp:TextBox ID="txtSoDienThoai" runat="server" CssClass="form-input" /><br /><br />

                    <asp:Button ID="btnDangKy" runat="server" Text="Xác nhận đăng ký" OnClick="btnDangKy_Click" CssClass="btn-page" />
                    <asp:Label ID="lblThongBao" runat="server" ForeColor="Green" Text=""></asp:Label>
                </div>
            </section>

            <aside class="sidebar">
                <div class="sidebar-section">
                    <h3>Hướng dẫn</h3>
                    <ul>
                        <li>
                            <img src="img/logo-fithou.jpg" alt="FIT HOU">
                            <p>Điền đầy đủ thông tin cá nhân để đăng ký sự kiện</p>
                        </li>
                        <li>
                            <img src="img/logo-fithou.jpg" alt="FIT HOU">
                            <p>Kiểm tra email để xác nhận đăng ký</p>
                        </li>
                    </ul>
                </div>
            </aside>
        </main>

        <footer>
            <p>© 2025 - Trang sự kiện trường học</p>
        </footer>
            </div>
    </form>
</body>
</html>