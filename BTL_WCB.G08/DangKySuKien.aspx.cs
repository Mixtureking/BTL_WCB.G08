using System;
using System.Web.UI;

namespace BTL_WCB.G08
{
    public partial class DangKySuKien : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Username"] != null)
                {
                    lblUsername.Text = Session["Username"].ToString();
                    phLogin.Visible = false;
                    phUser.Visible = true;
                }
                else
                {
                    phLogin.Visible = true;
                    phUser.Visible = false;
                }

                string idStr = Request.QueryString["id"];
                if (!string.IsNullOrEmpty(idStr) && int.TryParse(idStr, out int id))
                {
                    var suKien = DanhMucSuKien.LayTatCaSuKien().Find(sk => sk.Id == id);
                    if (suKien != null)
                    {
                        lblTenSuKien.Text = $"Sự kiện: {suKien.Title}";
                    }
                }
            }
        }

        protected void btnDangKy_Click(object sender, EventArgs e)
        {
            string hoTen = txtHoTen.Text.Trim();
            string email = txtEmail.Text.Trim();
            string sdt = txtSoDienThoai.Text.Trim();
            string username = Session["Username"]?.ToString() ?? "Khách";

            if (string.IsNullOrEmpty(hoTen) || string.IsNullOrEmpty(email) || string.IsNullOrEmpty(sdt))
            {
                lblThongBao.ForeColor = System.Drawing.Color.Red;
                lblThongBao.Text = "Vui lòng điền đầy đủ thông tin.";
                return;
            }

            string idStr = Request.QueryString["id"];
            if (int.TryParse(idStr, out int idSuKien))
            {
                var thongTin = new ThongTinDangKy
                {
                    TenTaiKhoan = email,
                    HoTen = hoTen,
                    Username = username,
                    SoDienThoai = sdt,
                    IdSuKien = idSuKien
                };

                DanhSachDangKy.ThemDangKy(thongTin);

                lblThongBao.ForeColor = System.Drawing.Color.Green;
                lblThongBao.Text = "Đăng ký thành công!";
            }
            else
            {
                lblThongBao.ForeColor = System.Drawing.Color.Red;
                lblThongBao.Text = "ID sự kiện không hợp lệ.";
            }
        }

    }
}