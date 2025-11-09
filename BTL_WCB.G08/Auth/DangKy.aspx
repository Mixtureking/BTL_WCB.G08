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

        <!-- ===== HEADER ===== -->
        <header>
            <div class="logo">LOGO</div>
            <nav class="nav">
                <a href="../TrangChu.aspx">Trang chủ</a>
                <a href="../DanhSachSuKien.aspx">Sự kiện</a>
                <a href="../GioiThieu.aspx">Giới thiệu</a>
                <a href="DangNhap.aspx" class="active">Đăng nhập</a>
            </nav>
            <div class="menu-toggle" id="menu-toggle">☰</div>
        </header>

        <!-- ===== FORM ĐĂNG KÝ ===== -->
        <section class="auth-container">
            <div class="auth-box">
                <h2>Đăng ký tài khoản</h2>

                <asp:TextBox ID="txtNewUsername" runat="server" CssClass="input" placeholder="Tên đăng nhập"></asp:TextBox>
                <asp:TextBox ID="txtNewPassword" runat="server" CssClass="input" TextMode="Password" placeholder="Mật khẩu"></asp:TextBox>
                <asp:TextBox ID="txtConfirmPassword" runat="server" CssClass="input" TextMode="Password" placeholder="Nhập lại mật khẩu"></asp:TextBox>

                <asp:Button ID="btnCreateAccount" runat="server" Text="Tạo tài khoản" CssClass="btn" OnClick="btnCreateAccount_Click" />

                <p style="text-align:center; margin-top:10px;">
                    Đã có tài khoản? <a href="DangNhap.aspx">Đăng nhập</a>
                </p>
            </div>
        </section>

        <!-- ===== FOOTER ===== -->
        <footer>
            <p>© 2025 - Trang sự kiện trường học</p>
        </footer>
    </form>

    <script src="../js/jsDangNhap.js"></script>
</body>
</html>
