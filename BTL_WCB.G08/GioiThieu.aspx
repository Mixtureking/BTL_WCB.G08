<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GioiThieu.aspx.cs" Inherits="BTL_WCB.G08.GioiThieu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Giới thiệu</title>
    <link rel="stylesheet" href="css/styleGioiThieu.css"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>
<body>
    <form id="form1" runat="server">
        <header>
            <div class="logo">
                <a href="TrangChu.aspx"><img src="img/logo.png" alt="logo.png" /></a> 
            </div>
            <div class="menu-toggle" id="menu-toggle">☰</div>
            <nav class="nav">
                <a href="TrangChu.aspx">Trang chủ</a>
                <a href="DanhSachSuKien.aspx">Sự kiện</a>
                <a href="GioiThieu.aspx" class="active">Giới thiệu</a>
                <asp:PlaceHolder ID="phLogin" runat="server">
                    <a href="Auth/DangNhap.aspx">Đăng nhập</a>
                </asp:PlaceHolder>
                <asp:PlaceHolder ID="phUser" runat="server" Visible="false">
                    <asp:LinkButton ID="lnkUsername" runat="server" OnClick="lnkUsername_Click"></asp:LinkButton>
                    | <a href="Auth/DangXuat.aspx">Đăng xuất</a>
                </asp:PlaceHolder>
            </nav>
        </header>
        <section class="introduction">
            <div class="main-content">
                <h2>🏛️ Giới thiệu chung</h2>
                <p>
                    Chào mừng bạn đến với Khoa Công nghệ Thông tin (Faculty of Information Technology - FIT HOU), 
                một trong những khoa đào tạo hàng đầu của Trường Đại học Mở Hà Nội.
                </p>
                <p>
                    Được thành lập vào ngày 15/03/1993 với tên gọi ban đầu là Khoa Công nghệ Tin học, và chính 
                thức đổi tên thành Khoa Công nghệ Thông tin từ năm 2010, chúng tôi tự hào về lịch sử phát 
                triển lâu dài và những đóng góp quan trọng trong việc đào tạo nguồn nhân lực chất lượng 
                cao cho ngành CNTT của đất nước.
                </p>
                <br />
                <h2>🎯 Sứ mệnh & Tầm nhìn</h2>
                <p>
                    Sứ mệnh: Khoa Công nghệ Thông tin cam kết đào tạo các Cử nhân và Kỹ sư CNTT có trình độ 
                chuyên môn vững vàng, kỹ năng thực hành chuyên sâu, và khả năng thích ứng nhanh với sự 
                thay đổi của công nghệ. Chúng tôi mong muốn trang bị cho sinh viên không chỉ kiến thức, 
                mà còn cả tư duy sáng tạo và tinh thần trách nhiệm để đáp ứng nhu cầu phát triển kinh 
                tế – xã hội trong nước và hội nhập quốc tế.
                </p>
                <p>
                    Tầm nhìn: Trở thành một trung tâm đào tạo và nghiên cứu khoa học uy tín trong lĩnh vực 
                Công nghệ Thông tin, nơi gắn kết chặt chẽ giữa giảng đường và doanh nghiệp, giữa lý 
                thuyết và thực tiễn.
                </p>
                <br />
                <h2>📚 Chương trình Đào tạo</h2>
                <p>Khoa cung cấp đa dạng các hệ đào tạo để đáp ứng nhu cầu học tập của xã hội:</p>
                <ul>
                    <li>Đại học từ xa</li>
                    <li>Đại học chính quy</li>
                    <li>Đại học văn bằng 2</li>
                    <li>Đào tạo liên thông</li>
                </ul>
                <p>Các chuyên ngành đào tạo chính (Hệ chính quy):</p>
                <ul>
                    <li>Công nghệ phần mềm</li>
                    <li>Mạng và An toàn hệ thống</li>
                    <li>Công nghệ đa phương tiện</li>
                    <li>Hệ thống thông tin</li>
                </ul>
                <br />
                <h2>🧑‍🏫 Đội ngũ Giảng viên</h2>
                <p>
                    Chúng tôi sở hữu đội ngũ cán bộ, giảng viên tâm huyết, giàu kinh nghiệm, với nhiều Giáo 
                sư, Phó Giáo sư, Tiến sĩ và Thạc sĩ. Đội ngũ của Khoa không ngừng nghiên cứu khoa học, 
                cập nhật kiến thức mới và đổi mới phương pháp giảng dạy để mang lại chất lượng đào 
                tạo tốt nhất cho sinh viên.
                </p>
            </div>
            <aside class="sidebar">
                <div class="sidebar-section">
                    <h3>Tiêu điểm</h3>
                    <ul>
                        <li>
                            <img src="img/logo-fithou.jpg" alt="FIT HOU">
                            <p>
                                Giảng viên và sinh viên khoa Công nghệ Thông tin tham dự Lễ Khai giảng năm 
                            học mới 2025–2026
                            </p>
                        </li>
                        <li>
                            <img src="img/logo-fithou.jpg" alt="FIT HOU">
                            <p>
                                Giảng viên Trường ĐH Mở Hà Nội hoàn thành chương trình tập huấn năm 2023 
                            của UNESCO-UNITWIN: Nâng cao năng lực kỹ thuật số
                            </p>
                        </li>
                        <li>
                            <img src="img/logo-fithou.jpg" alt="FIT HOU">
                            <p>Tổng kết Hội nghị Sinh viên NCKH năm học 2022-2023</p>
                        </li>
                    </ul>
                </div>
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
        </section>
        <footer>
            <p>© 2025 - Trang sự kiện trường học</p>
        </footer>
    </form>
    <script src="js/jsGioiThieu.js"></script>
</body>
</html>
