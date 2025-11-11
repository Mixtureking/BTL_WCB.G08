using System;
using System.Linq;
using BTL_WCB.G08;

namespace BTL_WCB.G08
{
    public partial class ChiTietSuKien : System.Web.UI.Page
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
                pnlChiTiet.Visible = true;
                lblError.Text = "";

                string idStr = Request.QueryString["id"];
                if (!string.IsNullOrEmpty(idStr) && int.TryParse(idStr, out int id))
                {
                    var danhSach = DanhMucSuKien.LayTatCaSuKien();
                    var suKien = danhSach.FirstOrDefault(sk => sk.Id == id);
                    if (suKien != null)
                    {
                        lblTitle.Text = suKien.Title;
                        lblThoiGian.Text = suKien.ThoiGian.ToString("dd/MM/yyyy HH:mm");
                        lblDiaDiem.Text = suKien.DiaDiem;
                        imgAnh.ImageUrl = suKien.Anh;
                        lblMoTa.Text = suKien.MoTa;
                        lblMoTaChiTiet.Text = suKien.MoTaChiTiet != null
                        ? suKien.MoTaChiTiet.Replace(Environment.NewLine, "<br />")
                        : "";

                    }
                    else
                    {
                        lblError.Text = "Không tìm thấy sự kiện.";
                        pnlChiTiet.Visible = false;
                    }
                }
                else
                {
                    lblError.Text = "ID sự kiện không hợp lệ.";
                    pnlChiTiet.Visible = false;
                }
            }
        }



        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("DanhSachSuKien.aspx");
        }
    }
}
