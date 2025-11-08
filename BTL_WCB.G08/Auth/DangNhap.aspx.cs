using System;
using System.Collections.Generic;
using BTL_WCB.G08;

namespace BTL_WCB.G08.Auth
{
    public partial class DangNhap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Khởi tạo danh sách người dùng nếu chưa có
            if (Application["UserList"] == null)
            {
                var users = new List<UserAccount>
                {
                    new UserAccount { Username = "admin", Password = "123" },
                    new UserAccount { Username = "user", Password = "123" }
                };
                Application["UserList"] = users;
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text.Trim();
            string password = txtPassword.Text.Trim();
            var list = Application["UserList"] as List<UserAccount>;

            if (list != null)
            {
                var user = list.Find(u => u.Username == username && u.Password == password);
                if (user != null)
                {
                    Session["Username"] = user.Username;
                    Response.Redirect("../TrangChu.aspx");
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Sai tên đăng nhập hoặc mật khẩu!');", true);
                }
            }
        }
    }
}
