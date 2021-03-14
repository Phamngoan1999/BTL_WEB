using BTL_WEB_NC.Class;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace BTL_WEB_NC
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {

            LoginHistory loginHistory = new LoginHistory();
            Application.Add("LoginHistory", loginHistory);
        }

        protected void Session_Start(object sender, EventArgs e)
        {
           /* Session.Contents.Add("IsLogined", false);
            Account account = null;
            Session.Add("Account", account);
            Session.Add("WrongTimes", 0);
            Session.Add("TimeWatting", null);
            Session.Add("TimeLogined", null);*/
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