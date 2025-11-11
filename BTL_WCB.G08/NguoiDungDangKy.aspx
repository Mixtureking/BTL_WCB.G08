<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NguoiDungDangKy.aspx.cs" Inherits="BTL_WCB.G08.NguoiDungDangKy" %>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Danh sách đăng ký</title>
    <link rel="stylesheet" href="css/styleNguoiDungDangKy.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="page-container">

            <header>
                <div class="logo">LOGO</div>
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
                    <h2>Danh sách đăng ký của bạn</h2>
                    <asp:GridView ID="gvDangKy" runat="server" AutoGenerateColumns="False" CssClass="gridview-style" OnRowCommand="gvDangKy_RowCommand">
                        <Columns>
                            <asp:BoundField DataField="TenSuKien" HeaderText="Tên sự kiện" ItemStyle-CssClass="col-ten" />
                            <asp:BoundField DataField="HoTen" HeaderText="Họ tên" ItemStyle-CssClass="col-hoten" />
                            <asp:BoundField DataField="TenTaiKhoan" HeaderText="Email" ItemStyle-CssClass="col-email" />
                            <asp:BoundField DataField="SoDienThoai" HeaderText="Số điện thoại" ItemStyle-CssClass="col-sdt" />
                            <asp:TemplateField HeaderText="Thao tác">
                                <ItemTemplate>
                                    <asp:Button ID="btnXoa" runat="server" Text="Xóa" CommandName="Xoa" CommandArgument='<%# Container.DataItemIndex %>' CssClass="btn-page btn-xoa" />
                                </ItemTemplate>
                            </asp:TemplateField>

                        </Columns>
                    </asp:GridView>
                </section>
            </main>

            <footer>
                <p>© 2025 - Trang sự kiện trường học</p>
            </footer>
        </div>
    </form>
</body>
</html>
