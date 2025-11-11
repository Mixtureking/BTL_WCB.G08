<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChiTietSuKien.aspx.cs" Inherits="BTL_WCB.G08.ChiTietSuKien" %>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Chi tiết sự kiện</title>
    <link rel="stylesheet" href="css/styleChiTietSuKien.css" />
</head>
<body>
    <form id="form1" runat="server">
        <header>
            <div class="logo">LOGO</div>
            <div class="menu-toggle" id="menu-toggle">☰</div>
            <nav class="nav">
                <a href="TrangChu.aspx">Trang chủ</a>
                <a href="DanhSachSuKien.aspx" class="active">Sự kiện</a>
                <a href="GioiThieu.aspx">Giới thiệu</a>
                <asp:PlaceHolder ID="phLogin" runat="server">
                    <a href="Auth/DangNhap.aspx">Đăng nhập</a>
                </asp:PlaceHolder>
                <asp:PlaceHolder ID="phUser" runat="server" Visible="false">
                    <asp:Label ID="lblUsername" runat="server" Text=""></asp:Label>
                    | <a href="Auth/DangXuat.aspx">Đăng xuất</a>
                </asp:PlaceHolder>
            </nav>
        </header>

        <main class="content-wrapper">
            <section class="news-section">
                <asp:Panel ID="pnlChiTiet" runat="server">
                    <h2><asp:Label ID="lblTitle" runat="server" Text=""></asp:Label></h2>
                    <span class="news-date"><asp:Label ID="lblThoiGian" runat="server" Text=""></asp:Label></span>
                    <span class="news-location"><asp:Label ID="lblDiaDiem" runat="server" Text=""></asp:Label></span>
                    <div class="news-image">
                        <asp:Image ID="imgAnh" runat="server" />
                    </div>
                    <p class="news-desc"><asp:Label ID="lblMoTa" runat="server" Text=""></asp:Label></p>
                    <p class="news-detail"><asp:Label ID="lblMoTaChiTiet" runat="server" Text=""></asp:Label></p>
                    <asp:Button ID="btnBack" runat="server" Text="← Quay lại" OnClick="btnBack_Click" CssClass="btn-page" />
                    <asp:Button ID="btnDangKy" runat="server" Text="Đăng ký sự kiện" OnClick="btnDangKy_Click" CssClass="btn-page" />
                </asp:Panel>
                <asp:Label ID="lblError" runat="server" ForeColor="red" Text=""></asp:Label>
            </section>

            <aside class="sidebar">
                <div class="sidebar-section">
                    <h3>Tuyển dụng</h3>
                    <ul>
                        <li>
                            <img src="img/Doro-shutup.png" alt="FIT HOU">
                            <p>Công ty Cổ phần Chứng khoán FPT tuyển Chuyên Viên Quản Trị Dữ Liệu Oracle</p>
                        </li>
                        <li>
                            <img src="img/Doro-shutup.png" alt="FIT HOU">
                            <p>Thông báo sinh viên tham gia tạo tài khoản trên Cổng thông tin việc làm của Nhà trường</p>
                        </li>
                        <li>
                            <img src="img/Doro-shutup.png" alt="FIT HOU">
                            <p>Thông tin doanh nghiệp tuyển dụng sinh viên tốt nghiệp</p>
                        </li>
                    </ul>
                </div>

                <div class="sidebar-section">
                    <h3>Quy định, biểu mẫu</h3>
                    <ul>
                        <li>
                            <img src="img/Doro-shutup.png" alt="FIT HOU">
                            <p>Quyết định số 2280/QĐ-ĐHM ngày 16/6/2025 về mức thu học phí 2025-2026</p>
                        </li>
                        <li>
                            <img src="img/Doro-shutup.png" alt="FIT HOU">
                            <p>Quy chế đào tạo trình độ Đại học của Trường ĐH Mở Hà Nội (theo Quyết định số 1818/QĐ-ĐHM ngày 10/05/2024)</p>
                        </li>
                    </ul>
                </div>
            </aside>
        </main>

        <footer>
            <p>© 2025 - Trang sự kiện trường học</p>
        </footer>
    </form>
</body>
</html>
