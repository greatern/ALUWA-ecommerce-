using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Aluwa3.ServiceReference1;

namespace Aluwa3
{
    public partial class Product : System.Web.UI.Page
    {
        Service1Client sc = new Service1Client();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindProducts();
            }
        }

        private void BindProducts(string priceFilter = "all", string typeFilter = "all", string maintenanceFilter = "all", string environmentFilter = "all", string provinceFilter = "all")
        {
            //getting products
            var prods = sc.getProducts();

            //filters
            if (priceFilter != "all")
            {
                if (priceFilter == "low")
                {
                    prods = prods.Where(p => p.Price < 250).ToArray();
                }
                else if (priceFilter == "medium")
                {
                    prods = prods.Where(p => p.Price >= 250 && p.Price <= 300).ToArray();
                }
                else if (priceFilter == "high")
                    prods = prods.Where(p => p.Price > 300).ToArray();
            }

            if (typeFilter != "all")
            {
                prods = prods.Where(p => (p.Category ?? "").ToLower() == typeFilter.ToLower()).ToArray();
            }
            /* ?? used to give feedback of a fallback value when string is empty ""*/
            if (maintenanceFilter != "all")
            {
                prods = prods.Where(p => (p.Maintenace ?? "").ToLower() == maintenanceFilter.ToLower()).ToArray();
            }

            if (environmentFilter != "all")
            {
                prods = prods.Where(p => (p.Environment ?? "").ToLower() == environmentFilter.ToLower()).ToArray();
            }

            if (provinceFilter != "all")
            {
                prods = prods.Where(p => (p.Province ?? "").ToLower() == provinceFilter.ToLower()).ToArray();
            }

            ProductRepeater.DataSource = prods;
            ProductRepeater.DataBind();
        }

        public void btnAddToCart_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            int custId = sc.getCustomerId();
            int prodId = sc.GetProductId();

            sc.AddToCart(custId, prodId);

            //Reditect to cart page
            Response.Redirect("Cart.aspx");
            
        }

    }
}