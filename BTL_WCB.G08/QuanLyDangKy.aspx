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
        </div>
    </form>
    <script src="js/jsTrangChu.js"></script>
</body>
</html>
