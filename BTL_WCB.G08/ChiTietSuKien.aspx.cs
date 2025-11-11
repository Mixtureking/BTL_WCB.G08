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
                    lnkUsername.Text = Session["Username"].ToString();
                    phLogin.Visible = false;
                    phUser.Visible = true;
                }
                else
                {
                    phLogin.Visible = true;
                    phUser.Visible = false;
                }
                pnlChiTiet.Visible = true;

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
                        string moTaChiTiet = suKien.MoTaChiTiet ?? "";
                        lblMoTaChiTiet.Text = moTaChiTiet.Replace("\r\n", "<br />")
                                                         .Replace("\n", "<br />")
                                                         .Replace("\r", "<br />");


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
        protected void btnDangKy_Click(object sender, EventArgs e)
        {
            if (Session["Username"] == null)
            {
                // Nếu chưa đăng nhập, chuyển hướng đến trang đăng nhập
                Response.Redirect("Auth/DangNhap.aspx");
            }
            else
            {
                string idStr = Request.QueryString["id"];
                if (!string.IsNullOrEmpty(idStr))
                {
                    // Chuyển hướng đến trang đăng ký với ID sự kiện
                    Response.Redirect($"DangKySuKien.aspx?id={idStr}");
                }
            }
        }
        protected void lnkUsername_Click(object sender, EventArgs e)
        {
            Response.Redirect("NguoiDungDangKy.aspx");
        }


    }
}
