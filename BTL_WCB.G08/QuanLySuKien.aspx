<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QuanLySuKien.aspx.cs" Inherits="BTL_WCB.G08.QuanLySuKien" %>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Quản lý danh mục sự kiện</title>
    <link rel="stylesheet" href="css/styleQuanLySuKien.css" />
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
                    <a href="QuanLySuKien.aspx">Sự kiện</a>
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
                    <h2>Quản lý sự kiện</h2>
                    <asp:Label ID="lblThongBao" runat="server" ForeColor="Red" Text=""></asp:Label>
                    <div class="search-form">
                        <asp:TextBox ID="txtTimKiem" runat="server" CssClass="input-text" Placeholder="Nhập tên sự kiện cần tìm" />
                        <asp:Button ID="btnTimKiem" runat="server" Text="Tìm kiếm" CssClass="btn-search" OnClick="btnTimKiem_Click" />
                        <asp:Button ID="btnRefresh" runat="server" Text="Làm mới" CssClass="btn-refresh" OnClick="btnRefresh_Click" />
                    </div>

                    <asp:GridView ID="gvSuKien" runat="server" AutoGenerateColumns="False" CssClass="event-table"
                        AllowPaging="True" PageSize="5"
                        OnPageIndexChanging="gvSuKien_PageIndexChanging"
                        OnRowEditing="gvSuKien_RowEditing"
                        OnRowUpdating="gvSuKien_RowUpdating"
                        OnRowCancelingEdit="gvSuKien_RowCancelingEdit"
                        OnRowDeleting="gvSuKien_RowDeleting"
                        DataKeyNames="Id">

                        <Columns>
                            <asp:BoundField DataField="Id" HeaderText="ID" ReadOnly="true" />
                            <asp:BoundField DataField="Title" HeaderText="Tiêu đề" />
                            <asp:BoundField DataField="MoTa" HeaderText="Mô tả ngắn" />
                            <asp:BoundField DataField="MoTaChiTiet" HeaderText="Mô tả chi tiết" />
                            <asp:TemplateField HeaderText="Thời gian">
                                <ItemTemplate>
                                    <%# Eval("ThoiGian", "{0:dd/MM/yyyy HH:mm}") %>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtThoiGian" runat="server"
                                        Text='<%# Bind("ThoiGian", "{0:yyyy-MM-ddTHH:mm}") %>'
                                        TextMode="DateTimeLocal"
                                        CssClass="input-text" />
                                </EditItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="DiaDiem" HeaderText="Địa điểm" />
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Button ID="btnEdit" runat="server" Text="Sửa" CommandName="Edit" CssClass="btn-edit" />
                                    <asp:Button ID="btnDelete" runat="server" Text="Xóa" CommandName="Delete" CssClass="btn-delete" OnClientClick="return confirm('Bạn có chắc muốn xóa sự kiện này?');" />
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:Button ID="btnUpdate" runat="server" Text="Lưu" CommandName="Update" CssClass="btn-update" />
                                    <asp:Button ID="btnCancel" runat="server" Text="Hủy" CommandName="Cancel" CssClass="btn-cancel" />
                                </EditItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                    <div class="add-event-form">
                        <asp:TextBox ID="txtTitle" runat="server" CssClass="input-text" Placeholder="Tiêu đề sự kiện" />
                        <asp:TextBox ID="txtMoTa" runat="server" CssClass="input-text" Placeholder="Mô tả ngắn" />
                        <asp:TextBox ID="txtThoiGian" runat="server" CssClass="input-text" TextMode="DateTimeLocal" Placeholder="dd/MM/yyyy HH:mm" />
                        <asp:TextBox ID="txtDiaDiem" runat="server" CssClass="input-text" Placeholder="Địa điểm" />
                        <asp:TextBox ID="txtMoTaChiTiet" runat="server" CssClass="input-text" Placeholder="Mô tả chi tiết" />
                        <asp:Button ID="btnThemSuKien" runat="server" Text="Thêm sự kiện" CssClass="btn-add" OnClick="btnThemSuKien_Click" />
                    </div>
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
