using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL_WCB.G08
{
    public partial class QuanLyDangKy : System.Web.UI.Page
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
                LoadDanhSach();
            }
        }
        private void LoadDanhSach(string tuKhoa = "")
        {
            var ds = DanhSachDangKy.LayTatCa();

            if (!string.IsNullOrEmpty(tuKhoa))
            {
                tuKhoa = tuKhoa.ToLower();
                ds = ds.Where(d =>
                    (!string.IsNullOrEmpty(d.HoTen) && d.HoTen.ToLower().Contains(tuKhoa)) ||
                    (!string.IsNullOrEmpty(d.Username) && d.Username.ToLower().Contains(tuKhoa))
                ).ToList();
            }

            gvDangKy.DataSource = ds;
            gvDangKy.DataBind();
        }

        protected void btnTimKiem_Click(object sender, EventArgs e)
        {
            LoadDanhSach(txtTimKiem.Text.Trim());
        }

        protected void btnRefresh_Click(object sender, EventArgs e)
        {
            txtTimKiem.Text = "";
            LoadDanhSach();
        }

        protected void gvDangKy_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvDangKy.PageIndex = e.NewPageIndex;
            LoadDanhSach(txtTimKiem.Text.Trim());
        }

        protected void gvDangKy_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvDangKy.EditIndex = e.NewEditIndex;
            LoadDanhSach(txtTimKiem.Text.Trim());
        }

        protected void gvDangKy_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvDangKy.EditIndex = -1;
            LoadDanhSach(txtTimKiem.Text.Trim());
        }

        protected void gvDangKy_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string username = gvDangKy.DataKeys[e.RowIndex].Value.ToString();
            var item = DanhSachDangKy.LayTatCa().FirstOrDefault(d => d.Username == username);

            if (item != null)
            {
                GridViewRow row = gvDangKy.Rows[e.RowIndex];
                item.HoTen = ((TextBox)row.Cells[0].Controls[0]).Text.Trim();
                item.SoDienThoai = ((TextBox)row.Cells[2].Controls[0]).Text.Trim();
                item.TenSuKien = ((TextBox)row.Cells[3].Controls[0]).Text.Trim();
            }

            gvDangKy.EditIndex = -1;
            LoadDanhSach(txtTimKiem.Text.Trim());
        }

        protected void gvDangKy_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string username = gvDangKy.DataKeys[e.RowIndex].Value.ToString();
            var item = DanhSachDangKy.LayTatCa().FirstOrDefault(d => d.Username == username);

            if (item != null)
            {
                DanhSachDangKy.LayTatCa().Remove(item);
            }

            LoadDanhSach(txtTimKiem.Text.Trim());
        }

        protected void lnkUsername_Click(object sender, EventArgs e)
        {
        }
    }
}