using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace BTL_WCB.G08
{
    public class Global : System.Web.HttpApplication
    {
        public const string APPLICATION_ITEM_DS_NGUOIDUNG = "DsNguoiDung";
        protected void Application_Start(object sender, EventArgs e)
        {
            Application.Lock();
            Application["DsNguoiDung"] = getUsers(); 
            Application.UnLock();
        }
        private List<NguoiDung> getUsers()
        {
            return new List<NguoiDung>
            {
                new NguoiDung("admin", "123456"),
                new NguoiDung("admin2", "abc123"),
                new NguoiDung("user01", "pass"),
                new NguoiDung("trung", "123"),
                new NguoiDung("linh", "123")
            };
        }
        protected void Session_Start(object sender, EventArgs e)
        {

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}