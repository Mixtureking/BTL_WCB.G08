<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QuenMatKhau.aspx.cs" Inherits="BTL_WCB.G08.Auth.QuenMatKhau" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Quên mật khẩu</title>
    <link href="../css/styleQuenMatKhau.css" rel="stylesheet" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="forgot-container">
            <h2>🔒 Quên mật khẩu</h2>
            <div class="input-box">
                <label for="txtEmail">Nhập email đã đăng ký</label>
                <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" placeholder="example@email.com"></asp:TextBox>
            </div>
            <asp:Button ID="btnReset" runat="server" Text="Gửi yêu cầu đặt lại mật khẩu" CssClass="btn" OnClick="btnReset_Click" />
            <asp:Label ID="lblMessage" runat="server" CssClass="message"></asp:Label>
            <a href="DangNhap.aspx">⬅ Quay lại đăng nhập</a>
        </div>
    </form>
</body>
</html>
