using System;
using System.Linq;
using System.Web.UI.WebControls;
using BTL_WCB.G08;

namespace BTL_WCB.G08
{
    public partial class NguoiDungDangKy : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Username"] != null)
                {
                    lnkUsername.Text = Session["Username"].ToString();
                    phLogin.Visible = false;
                    phUser.Visible = true;

                    var danhSach = DanhSachDangKy.LayTatCa()
                        .Where(dk => dk.TenTaiKhoan == Session["Username"].ToString())
                        .ToList();

                    gvDangKy.DataSource = danhSach;
                    gvDangKy.DataBind();
                }
                else
                {
                    phLogin.Visible = true;
                    phUser.Visible = false;
                }
            }
        }
        protected void gvDangKy_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Xoa")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                var danhSach = DanhSachDangKy.LayTatCa();
                string username = Session["Username"]?.ToString();

                var danhSachNguoiDung = danhSach
                    .Where(dk => dk.TenTaiKhoan == username)
                    .ToList();

                if (index >= 0 && index < danhSachNguoiDung.Count)
                {
                    var itemToRemove = danhSachNguoiDung[index];
                    danhSach.Remove(itemToRemove);

                    gvDangKy.DataSource = danhSach
                        .Where(dk => dk.TenTaiKhoan == username)
                        .ToList();
                    gvDangKy.DataBind();
                }
            }
        }

        protected void lnkUsername_Click(object sender, EventArgs e)
        {
            Response.Redirect("NguoiDungDangKy.aspx");
        }
    }
}