using System;
using System.Collections.Generic;
using System.Web.UI;

namespace BTL_WCB.G08.Auth
{
    public partial class DangKy : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnCreateAccount_Click(object sender, EventArgs e)
        {
            string username = txtNewUsername.Text.Trim();
            string email = txtEmail.Text.Trim();
            string password = txtNewPassword.Text.Trim();
            string confirm = txtConfirmPassword.Text.Trim();

            if (string.IsNullOrEmpty(username) || string.IsNullOrEmpty(email) ||
                string.IsNullOrEmpty(password) || string.IsNullOrEmpty(confirm))
            {
                Response.Write("<script>alert('Vui lòng điền đầy đủ thông tin!');</script>");
                return;
            }

            if (!email.Contains("@"))
            {
                Response.Write("<script>alert('Email không hợp lệ!');</script>");
                return;
            }

            if (password != confirm)
            {
                Response.Write("<script>alert('Mật khẩu nhập lại không khớp!');</script>");
                return;
            }

            List<NguoiDung> dsNguoiDung = Application[Global.APPLICATION_ITEM_DS_NGUOIDUNG] as List<NguoiDung>;
            if (dsNguoiDung == null)
            {
                dsNguoiDung = new List<NguoiDung>();
            }

            bool exists = dsNguoiDung.Exists(u => u.Username.Equals(username, StringComparison.OrdinalIgnoreCase));
            if (exists)
            {
                Response.Write("<script>alert('Tên đăng nhập đã tồn tại!');</script>");
                return;
            }
            NguoiDung newUser = new NguoiDung(username, password);

            Application.Lock();  
            dsNguoiDung.Add(newUser);
            Application[Global.APPLICATION_ITEM_DS_NGUOIDUNG] = dsNguoiDung;
            Application.UnLock();

            Response.Write("<script>alert('Đăng ký thành công! Hãy đăng nhập để tiếp tục.'); window.location='DangNhap.aspx';</script>");
        }
    }
}
