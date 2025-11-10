using System;
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

            // TODO: Thêm logic lưu vào CSDL
            Response.Write("<script>alert('Đăng ký thành công!');</script>");
            Response.Redirect("DangNhap.aspx");
        }
    }
}
