using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Aluwa3.ServiceReference1;

namespace Aluwa3
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        Service1Client sc = new Service1Client();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnDelete_Click(object sender, EventArgs e)
        {
            // Get the product ID entered by the user
            int productId;
            bool isValid = int.TryParse(txtProductID.Text, out productId);

            // Validate if product ID is a valid number
            if (!isValid)
            {
                lblMessage.CssClass = "message error";
                lblMessage.Text = "Invalid Product ID. Please enter a valid number.";
                return;
            }

            // service method to delete the product
            bool isDeleted = sc.DeleteProd(productId); //  DeleteProd method

            if (isDeleted)
            {
                // If deleted successfully, show success message
                lblMessage.CssClass = "message success";
                lblMessage.Text = "Product deleted successfully.";
 
            }
            else
            {
                // Show error message if product could not be deleted
                lblMessage.CssClass = "message error";
                lblMessage.Text = "Error deleting product. Please make sure the Product ID exists.";
            }
        }
    }
}