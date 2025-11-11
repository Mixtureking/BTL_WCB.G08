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
                    <h2>Danh sách đăng ký của bạn</h2>
                    <asp:GridView ID="gvDangKy" runat="server" AutoGenerateColumns="False" CssClass="gridview-style" OnRowCommand="gvDangKy_RowCommand">
                        <Columns>
                            <asp:BoundField DataField="TenSuKien" HeaderText="Tên sự kiện" ItemStyle-CssClass="col-ten" />
                            <asp:BoundField DataField="HoTen" HeaderText="Họ tên" ItemStyle-CssClass="col-hoten" />
                            <asp:BoundField DataField="TenTaiKhoan" HeaderText="Email" ItemStyle-CssClass="col-email" />
                            <asp:BoundField DataField="SoDienThoai" HeaderText="Số điện thoại" ItemStyle-CssClass="col-sdt" />
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Button ID="btnDelete" runat="server" Text="Xóa" CommandName="Xoa"
                                        CommandArgument="<%# Container.DataItemIndex %>"
                                        CssClass="btn-xoa"
                                        OnClientClick="return confirm('Bạn có chắc chắn muốn hủy đăng ký sự kiện này?');" />
                                </ItemTemplate>
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
