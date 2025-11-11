<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DanhSachSuKien.aspx.cs" Inherits="BTL_WCB.G08.DanhSachSuKien" %>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Danh sách sự kiện</title>
    <link rel="stylesheet" href="css/styleDanhSachSuKien.css">
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
                <a href="DanhSachSuKien.aspx" class="active">Sự kiện</a>
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
            <!-- Cột trái: Tin tức -->
            <section class="news-section">
                <h2>Tin tức</h2>
                <asp:Repeater ID="rptSuKien" runat="server">
                    <HeaderTemplate>
                        <ul class="news-list">
                    </HeaderTemplate>

                    <ItemTemplate>
                        <li>
                            <img src='<%# Eval("Anh") %>' alt="Ảnh sự kiện" />
                            <div class="news-info">
                                <p class="news-title"><%# Eval("Title") %></p>
                                <span class="news-date"><%# ((DateTime)Eval("ThoiGian")).ToString("dd/MM/yyyy") %></span>
                                <p class="news-desc"><%# Eval("MoTa") %></p>
                                <button type="button" class="btn-view"
                                    onclick='<%# "window.location.href=\"ChiTietSuKien.aspx?id=" + Eval("Id") + "\";" %>'>
                                    Xem thêm
                                </button>
                            </div>
                        </li>
                    </ItemTemplate>

                    <FooterTemplate>
                        </ul>
                    </FooterTemplate>
                </asp:Repeater>
                <asp:Panel ID="pnlPaging" runat="server" CssClass="paging">
                    <asp:Button ID="btnPrev" runat="server" Text="&lt; Trước" OnClick="btnPrev_Click" CssClass="btn-page" />
                    <asp:Label ID="lblPageInfo" runat="server" Text=""></asp:Label>
                    <asp:Button ID="btnNext" runat="server" Text="Sau &gt;" OnClick="btnNext_Click" CssClass="btn-page" />
                </asp:Panel>

            </section>

            <!-- Cột phải: Các mục bổ sung -->
            <aside class="sidebar">
                <div class="sidebar-section">
                    <h3>Tuyển dụng</h3>
                    <ul>
                        <li>
                            <img src="img/logo-fithou.jpg" alt="FIT HOU">
                            <p>Công ty Cổ phần Chứng khoán FPT tuyển Chuyên Viên Quản Trị Dữ Liệu Oracle</p>
                        </li>
                        <li>
                            <img src="img/logo-fithou.jpg" alt="FIT HOU">
                            <p>Thông báo sinh viên tham gia tạo tài khoản trên Cổng thông tin việc làm của Nhà trường</p>
                        </li>
                        <li>
                            <img src="img/logo-fithou.jpg" alt="FIT HOU">
                            <p>Thông tin doanh nghiệp tuyển dụng sinh viên tốt nghiệp</p>
                        </li>
                    </ul>
                </div>

                <div class="sidebar-section">
                    <h3>Quy định, biểu mẫu</h3>
                    <ul>
                        <li>
                            <img src="img/logo-fithou.jpg" alt="FIT HOU">
                            <p>Quyết định số 2280/QĐ-ĐHM ngày 16/6/2025 về mức thu học phí 2025-2026</p>
                        </li>
                        <li>
                            <img src="img/logo-fithou.jpg" alt="FIT HOU">
                            <p>Quy chế đào tạo trình độ Đại học của Trường ĐH Mở Hà Nội (theo Quyết định số 1818/QĐ-ĐHM ngày 10/05/2024)</p>
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

    <script src="js/jsDanhSachSuKien.js"></script>
</body>
</html>
