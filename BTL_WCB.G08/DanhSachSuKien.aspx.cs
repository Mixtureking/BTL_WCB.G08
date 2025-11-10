using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL_WCB.G08
{
    public partial class DanhSachSuKien : System.Web.UI.Page
    {
        private static int currentPage = 0;
        private const int pageSize = 6;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                LoadData();
                if (Session["Username"] != null)
                {
                    lblUsername.Text = Session["Username"].ToString();
                    phLogin.Visible = false;
                    phUser.Visible = true;
                }
                else { 
                    phLogin.Visible = true;
                    phUser.Visible = false;
                }
            }
        }
        private void LoadData()
        {
            var danhSach = DanhMucSuKien.LayTatCaSuKien();

            PagedDataSource pds = new PagedDataSource();
            pds.DataSource = danhSach;
            pds.AllowPaging = true;
            pds.PageSize = pageSize;
            pds.CurrentPageIndex = currentPage;

            btnPrev.Enabled = !pds.IsFirstPage;
            btnNext.Enabled = !pds.IsLastPage;

            lblPageInfo.Text = $"Trang {currentPage + 1}/{pds.PageCount}";

            rptSuKien.DataSource = pds;
            rptSuKien.DataBind();
        }
        protected void btnPrev_Click(object sender, EventArgs e)
        {
            if (currentPage > 0)
                currentPage--;
            LoadData();
        }

        protected void btnNext_Click(object sender, EventArgs e)
        {
            currentPage++;
            LoadData();
        }
    }
}