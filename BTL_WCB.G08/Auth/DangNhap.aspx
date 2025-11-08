<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangNhap.aspx.cs" Inherits="BTL_WCB.G08.Auth.DangNhap" %>

<!DOCTYPE html>
<html lang="vi">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Đăng nhập - Sự kiện</title>
    <link href="../css/styleDangNhap.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <header>
            <div class="logo">LOGO</div>
            <nav class="nav">
                <a href="../TrangChu.aspx" class="active">Trang chủ</a>
                <a href="DanhSachSuKien.aspx">Sự kiện</a>
                <a href="GioiThieu.aspx">Giới thiệu</a>
                <a href="DangNhap.aspx">Đăng nhập</a>
            </nav>
            <div class="menu-toggle" id="menu-toggle">☰</div>
        </header>
        <section class="auth-container">
            <div class="auth-box">
                <div class="tabs">
                    <button type="button" id="btnLoginTab" class="active">Đăng nhập</button>
                </div>

                <div id="loginForm" class="form active">
                    <h2>Đăng nhập</h2>
                    <asp:TextBox ID="txtUsername" runat="server" CssClass="input" placeholder="Tên đăng nhập"></asp:TextBox>
                    <asp:TextBox ID="txtPassword" runat="server" CssClass="input" TextMode="Password" placeholder="Mật khẩu"></asp:TextBox>
                    <asp:Button ID="btnLogin" runat="server" Text="Đăng nhập" CssClass="btn" OnClick="btnLogin_Click" />
                </div>
            </div>
        </section>

        <footer>
            <p>© 2025 - Trang sự kiện trường học</p>
        </footer>
    </form>

    <script src="../js/jsDangNhap.js"></script>
</body>
</html>
