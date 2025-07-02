using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aluwa3
{
    public partial class Logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Clear the session data to log out the user
            Session.Abandon();  // Destroys all session data
            Session.Clear();    // Removes all session values

            // clear authentication cookie if we use forms authentication
            if (Request.Cookies["ASP.NET_SessionId"] != null)
            {
                HttpCookie myCookie = new HttpCookie("ASP.NET_SessionId");
                myCookie.Expires = DateTime.Now.AddDays(-1d);  // Expire the session cookie
                Response.Cookies.Add(myCookie);
            }

            // If using Forms Authentication, sign out
            System.Web.Security.FormsAuthentication.SignOut();

            // Redirect to the homepage (or login page)
            Response.Redirect("Login.aspx"); 
        }
    }
}