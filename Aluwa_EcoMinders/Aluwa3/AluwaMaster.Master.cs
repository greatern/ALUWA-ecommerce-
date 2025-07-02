using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aluwa3
{
    public partial class AluwaMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Hide all menus initially
                CustomerMenu.Visible = true;
                LoggedinCustomerMenu.Visible = false;
                ManagerMenu.Visible = false;

                if (Session["UserRole"] != null)
                {
                    // Retrieve the user's role from the session
                    string userRole = Session["UserRole"].ToString();
                    LogoutPlaceHolder.Visible = true;

                    LoginRegisterPlaceHolder.Visible = false;
                    if (userRole == "Customer")
                    {
                        CustomerMenu.Visible = true;
                        LoggedinCustomerMenu.Visible = true; // Show wishlist, account settings for logged-in customer
                    }
                    else if (userRole == "Manager")
                    {
                        LogoutPlaceHolder.Visible = true;
                        CustomerMenu.Visible = false;
                        ManagerMenu.Visible = true; // Show store manager's menu
                    }
                }
                else
                {
                    // If no role in session, show only basic customer menu
                    CustomerMenu.Visible = true;
                }
            }
        }

    }
}