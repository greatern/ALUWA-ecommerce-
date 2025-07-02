using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Aluwa3.ServiceReference1;

namespace Aluwa3
{
    public partial class RemoveUser : System.Web.UI.Page
    {
        Service1Client sc = new Service1Client();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnDelete_Click(object sender, EventArgs e)
        {
            // Get the user ID entered by the user
            int userId;
            bool isValid = int.TryParse(txtUserID.Text, out userId);

            // Validate if user ID is a valid number
            if (!isValid)
            {
                lblMessage.CssClass = "message error";
                lblMessage.Text = "Invalid user ID. Please enter a valid number.";
                return;
            }

            // service method to delete the product
            bool isDeleted = sc.DeleteUser(userId); //  Deleteuser method

            if (isDeleted)
            {
                // If deleted successfully, show success message
                lblMessage.CssClass = "message success";
                lblMessage.Text = "user removed successfully.";

            }
            else
            {
                // Show error message if user could not be deleted
                lblMessage.CssClass = "message error";
                lblMessage.Text = "Error removing user. Please make sure the user ID exists.";
            }
        }
    }
}