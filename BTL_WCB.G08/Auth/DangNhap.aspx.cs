using System;
using System.Collections.Generic;
using System.Linq;

namespace BTL_WCB.G08.Auth
{
    public partial class DangNhap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] != null)
            {
                Response.Redirect("../TrangChu.aspx");
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text.Trim();
            string password = txtPassword.Text.Trim();

            if (string.IsNullOrEmpty(username) || string.IsNullOrEmpty(password))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Vui lòng nhập đầy đủ thông tin.');", true);
                return;
            }

            List<NguoiDung> dsNguoiDung = Application["DsNguoiDung"] as List<NguoiDung>;

            NguoiDung user = dsNguoiDung.FirstOrDefault(u => u.Username == username && u.Password == password);

            if (user == null)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Tên đăng nhập hoặc mật khẩu không đúng.');", true);
                return;
            }

            Session["Username"] = user.Username;
            Session["Role"] = user.Role;

            if (user.Role == "Admin")
                Response.Redirect("../QuanLySuKien.aspx");
            else
                Response.Redirect("../TrangChu.aspx");
        }


        protected void btnRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("DangKy.aspx");
        }
    }
}
