using System;
using System.Linq;
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
                        .Where(dk => dk.Username == Session["Username"].ToString())
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

        protected void lnkUsername_Click(object sender, EventArgs e)
        {
            Response.Redirect("NguoiDungDangKy.aspx");
        }
    }
}