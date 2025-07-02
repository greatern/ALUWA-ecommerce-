using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Aluwa3.ServiceReference1;

namespace Aluwa3
{
    public partial class AboutProduct : System.Web.UI.Page
    {
        Service1Client sc = new Service1Client();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string productId = Request.QueryString["Id"];
                if (!string.IsNullOrEmpty(productId))
                {
                    int id;
                    if (int.TryParse(productId, out id))
                    {
                        getProductDetails(id);
                    }
                    else
                    {
                        Response.Redirect("Home.aspx");
                    }
                }
                else
                {
                    Response.Redirect("Home.aspx");
                }
            }
        }

        protected void getProductDetails(int id)
        {
            var prod = sc.getproductById(id);

            if (prod == null)
            {
                Response.Redirect("Home.aspx");
            }
            else
            {
                productLiteral.Text = $@"<h1 style='color:chocolate'>{prod.Prod_Name}</h1>
                                        <img src='{prod.ProductImage}' alt='ProductImage' class='product-img'/>
                                        <p>{prod.Prod_Description}</p>
                                        <h3 style='color:chocolate'>Price: R{prod.Price}</h3>
                                        <div class='quantity-section'>
                                            Product Quantity:
                                            <input type='number' id='quantity' value='1' min='1' style='width:50px; text-align: center;'/>
                                        </div>";

                hiddenProductid.Value = prod.Prod_Id.ToString();
            }

       
        }

        protected void BtnAddToCart_OnClick(object sender, EventArgs e)
        {
            int custId = sc.getCustomerId();
            int prodId = sc.GetProductId();

            sc.AddToCart(custId, prodId);
            Response.Redirect("Cart.aspx");
        }
    }
}