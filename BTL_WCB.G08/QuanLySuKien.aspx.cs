using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL_WCB.G08
{
    public partial class QuanLySuKien : System.Web.UI.Page
    {
        private List<SuKien> danhSachLoc;

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
                LoadSuKien();
            }
        }

        private void LoadSuKien()
        {
            if (danhSachLoc != null)
            {
                gvSuKien.DataSource = danhSachLoc;
            }
            else
            {
                gvSuKien.DataSource = DanhMucSuKien.LayTatCaSuKien();
            }
            gvSuKien.DataBind();
        }
        protected void btnRefresh_Click(object sender, EventArgs e)
        {
            txtTimKiem.Text = ""; // Xóa ô tìm kiếm nếu có
            lblThongBao.Text = "";
            gvSuKien.PageIndex = 0; // Quay về trang đầu tiên
            LoadSuKien(); // Tải lại toàn bộ danh sách
        }
        protected void btnTimKiem_Click(object sender, EventArgs e)
        {
            string tuKhoa = txtTimKiem.Text.Trim().ToLower();
            var danhSach = DanhMucSuKien.LayTatCaSuKien();

            if (!string.IsNullOrEmpty(tuKhoa))
            {
                danhSachLoc = danhSach.Where(s => s.Title.ToLower().Contains(tuKhoa)).ToList();
                gvSuKien.DataSource = danhSachLoc;
            }
            else
            {
                gvSuKien.DataSource = danhSach;
            }

            gvSuKien.DataBind();
        }

        protected void btnThemSuKien_Click(object sender, EventArgs e)
        {
            try
            {
                int newId = DanhMucSuKien.LayTatCaSuKien().Max(s => s.Id) + 1;
                string title = txtTitle.Text.Trim();
                string moTa = txtMoTa.Text.Trim();
                string diaDiem = txtDiaDiem.Text.Trim();
                string moTaChiTiet = txtMoTaChiTiet.Text.Trim();
                string thoiGianRaw = txtThoiGian.Text.Trim();

                DateTime thoiGian;
                if (!DateTime.TryParseExact(thoiGianRaw, "yyyy-MM-ddTHH:mm", null, System.Globalization.DateTimeStyles.None, out thoiGian))
                {
                    lblThongBao.Text = "Thời gian không đúng định dạng yyyy-MM-ddTHH:mm";
                    return;
                }

                var suKienMoi = new SuKien(newId, title, moTa, moTaChiTiet, "", thoiGian, diaDiem);
                DanhMucSuKien.ThemSuKien(suKienMoi);

                txtTitle.Text = "";
                txtMoTa.Text = "";
                txtDiaDiem.Text = "";
                txtThoiGian.Text = "";
                txtMoTaChiTiet.Text = "";
                lblThongBao.Text = "";
                LoadSuKien();
            }
            catch (Exception ex)
            {
                lblThongBao.Text = "Đã xảy ra lỗi: " + ex.Message;
            }
        }

        protected void gvSuKien_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvSuKien.EditIndex = e.NewEditIndex;
            LoadSuKien();
        }

        protected void gvSuKien_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int id = (int)e.Keys["Id"];
            GridViewRow row = gvSuKien.Rows[e.RowIndex];

            try
            {
                // Các cột BoundField: dùng LiteralControl
                string title = ((row.Cells[1].Controls[0] as TextBox)?.Text ?? row.Cells[1].Text).Trim();
                string moTa = ((row.Cells[2].Controls[0] as TextBox)?.Text ?? row.Cells[2].Text).Trim();
                string moTaChiTiet = ((row.Cells[3].Controls[0] as TextBox)?.Text ?? row.Cells[3].Text).Trim();
                string diaDiem = ((row.Cells[5].Controls[0] as TextBox)?.Text ?? row.Cells[5].Text).Trim();

                // Cột TemplateField: dùng FindControl
                TextBox txtThoiGian = row.FindControl("txtThoiGian") as TextBox;
                string thoigian = txtThoiGian?.Text.Trim();

                DateTime thoiGian;
                if (!DateTime.TryParseExact(thoigian, "yyyy-MM-ddTHH:mm", null, System.Globalization.DateTimeStyles.None, out thoiGian))
                {
                    lblThongBao.Text = "Thời gian không đúng định dạng yyyy-MM-ddTHH:mm";
                    return;
                }

                var suKienMoi = new SuKien(id, title, moTa, moTaChiTiet, "", thoiGian, diaDiem);
                DanhMucSuKien.CapNhatSuKien(suKienMoi);
                lblThongBao.Text = "";
            }
            catch (Exception ex)
            {
                lblThongBao.Text = "Đã xảy ra lỗi: " + ex.Message;
            }

            gvSuKien.EditIndex = -1;
            LoadSuKien();
        }

        protected void gvSuKien_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvSuKien.EditIndex = -1;
            LoadSuKien();
        }

        protected void gvSuKien_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = (int)e.Keys["Id"];
            DanhMucSuKien.XoaSuKien(id);
            LoadSuKien();
        }
        protected void gvSuKien_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvSuKien.PageIndex = e.NewPageIndex;
            LoadSuKien();
        }

        protected void lnkUsername_Click(object sender, EventArgs e)
        {
        }

    }
}