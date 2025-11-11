<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QuanLyDangKy.aspx.cs" Inherits="BTL_WCB.G08.QuanLyDangKy" %>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Quản lý đăng ký sự kiện</title>
    <link rel="stylesheet" href="css/styleQuanLySuKien.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="page-container">
            <header>
                <div class="logo">
                    <a href="TrangChu.aspx">
                        <img src="img/logo.png" alt="logo.png" /></a>
                </div>
                <div class="menu-toggle" id="menu-toggle">☰</div>
                <nav class="nav">
                    <a href="QuanLySuKien.aspx">Sự kiện</a>
                    <a href="QuanLyDangKy.aspx" class="active">Đăng ký</a>
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
                <section class="event-management">
                    <h2>Quản lý đăng ký</h2>
                    <asp:Label ID="lblThongBao" runat="server" ForeColor="Red" Text=""></asp:Label>
                    <div class="search-form">
                        <asp:TextBox ID="txtTimKiem" runat="server" CssClass="input-text" Placeholder="Nhập tên hoặc email" />
                        <asp:Button ID="btnTimKiem" runat="server" Text="Tìm kiếm" CssClass="btn-search" OnClick="btnTimKiem_Click" />
                        <asp:Button ID="btnRefresh" runat="server" Text="Làm mới" CssClass="btn-refresh" OnClick="btnRefresh_Click" />
                    </div>

                    <asp:GridView ID="gvDangKy" runat="server" AutoGenerateColumns="False" CssClass="event-table"
                        AllowPaging="True" PageSize="5"
                        OnPageIndexChanging="gvDangKy_PageIndexChanging"
                        OnRowEditing="gvDangKy_RowEditing"
                        OnRowUpdating="gvDangKy_RowUpdating"
                        OnRowCancelingEdit="gvDangKy_RowCancelingEdit"
                        OnRowDeleting="gvDangKy_RowDeleting"
                        DataKeyNames="TenTaiKhoan">

                        <Columns>
                            <asp:BoundField DataField="HoTen" HeaderText="Họ tên" />
                            <asp:BoundField DataField="TenTaiKhoan" HeaderText="Tên tài khoản" ReadOnly="true" />
                            <asp:BoundField DataField="SoDienThoai" HeaderText="Số điện thoại" />
                            <asp:BoundField DataField="TenSuKien" HeaderText="Tên sự kiện" />
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Button ID="btnEdit" runat="server" Text="Sửa" CommandName="Edit" CssClass="btn-edit" />
                                    <asp:Button ID="btnDelete" runat="server" Text="Xóa" CommandName="Delete" CssClass="btn-delete" OnClientClick="return confirm('Bạn có chắc muốn xóa đăng ký này?');" />
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:Button ID="btnUpdate" runat="server" Text="Lưu" CommandName="Update" CssClass="btn-update" />
                                    <asp:Button ID="btnCancel" runat="server" Text="Hủy" CommandName="Cancel" CssClass="btn-cancel" />
                                </EditItemTemplate>
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
    <script src="js/jsTrangChu.js"></script>
</body>
</html>
