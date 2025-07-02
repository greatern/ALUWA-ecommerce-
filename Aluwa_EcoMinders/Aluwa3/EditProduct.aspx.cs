using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Aluwa3.ServiceReference1;

namespace Aluwa3
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        Service1Client sc = new Service1Client();
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!IsPostBack)
            //{
               
            //}
        }
        protected void btnGet_Click(object sender, EventArgs e)
        {
            // Check if a product ID is provided in the textbox
            if (!string.IsNullOrEmpty(txtID.Text) && int.TryParse(txtID.Text, out int id))
            {
                // Fetch the product details
                var product = sc.getproductById(id);
                if (product != null)
                {
                    // Populate the form fields
                    txtProductName.Text = product.Prod_Name;
                    txtCategory.Text = product.Category;
                    txtDescription.Text = product.Prod_Description;
                    txtPrice.Text = product.Price.ToString();
                    txtStock.Text = product.Stock.ToString();

                    // imgProduct.ImageUrl = product.ProductImage;
                }
                else
                {
                    lblMessage.Text = "Product not found.";
                }
            }
            else
            {
                lblMessage.Text = "Product Id not provided.";
            }
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // Capture form data
            string name = txtProductName.Text;
            string category = txtCategory.Text;
            string description = txtDescription.Text;
            string price = txtPrice.Text;
            string stock = txtStock.Text;
            string image = txtimage.Text; // Assuming you have a way to capture the image path

            // Validate and parse numeric fields
            if (!int.TryParse(txtStock.Text, out var stockValue))
            {
                lblMessage.Text = "Invalid stock format.";
                return; // Exit the method if parsing fails
            }

            string priceText = txtPrice.Text.Replace("R", "").Trim();

            if (!decimal.TryParse(priceText, out decimal parsedPrice))
            {
                lblMessage.Text = "Invalid price format.";
                return; // Exit the method if parsing fails
            }

            // Call the editProduct method
            bool isUpdated = sc.editProduct(name, category, description, Double.Parse(price), int.Parse(stock), image);

            // Display success or error message
            if (isUpdated.Equals(true))
            {
                lblMessage.Text = "Product updated successfully!";
            }
            else
            {
                lblMessage.Text = "Failed to update product.";
            }
        }
        // Redirect to homepage when "Back to Home" button is clicked
        protected void btnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }

}
