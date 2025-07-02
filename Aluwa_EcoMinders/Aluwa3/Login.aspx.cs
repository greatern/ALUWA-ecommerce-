using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HashPass;
using Aluwa3.ServiceReference1;

namespace Aluwa3
{
    public partial class Login : System.Web.UI.Page
    {
        Service1Client sc = new Service1Client();
       
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                //
                string email = email1.Value;
                string password = Secrecy.HashPassword(password1.Value);

                if (string.IsNullOrEmpty(email) || string.IsNullOrEmpty(password))
                {
                    Label1.Text = "Email and Password cannot be empty";
                }

                var user = sc.Login(email, password);

                if (user != null)
                {
                    string userRole = sc.GetUserType(email1.Value);
                    Session["UserRole"] = userRole;
                    Response.Redirect("Home.aspx");
                }
                else
                {
                    Label1.Text = "Wrong email or Password";
                }
            }
            catch (Exception ex)
            {
                Label1.Text = "An error occured during login. Please try again";
            }
        }
    }
}