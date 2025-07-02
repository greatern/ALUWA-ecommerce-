using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Aluwa3.ServiceReference1;

namespace Aluwa3
{
    public partial class Cart : System.Web.UI.Page
    {
        Service1Client sc = new Service1Client();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindCart();
                ReloadCart();
                CalculateTotals();
            }
        }

        /*protected void btnDeleteProduct_Command(object sender, CommandEventArgs e)
        {
            int cartProdId = Convert.ToInt32(e.CommandArgument);
            sc.DeleteProduct(cartProdId);

            BindCart();
        }*/

        private void BindCart()
        {
            int custId = sc.getCustomerId();
            var cartProds = sc.GetCartProds(custId);
            rptCartItems.DataSource = cartProds;
            rptCartItems.DataBind();
        }

        //delete product button implementation
        protected void btnDeleteProduct_Click(object sender, EventArgs e)
        {
            int cartProdId = sc.GetCartProductId();
            sc.DeleteProduct(cartProdId);
            //reload cart items
            ReloadCart();
            //calculate cart totals
            CalculateTotals();
        }

        //helper method to reload cart
        private void ReloadCart()
        {
            int custId = sc.getCustomerId();
            TempCartProd[] cartProds = sc.GetCartProds(custId);
            rptCartItems.DataSource = cartProds;
            rptCartItems.DataBind();
        }

        //calculate totals
        private void CalculateTotals()
        {
            int custId = sc.getCustomerId();
            TempCartProd[] cartProds = sc.GetCartProds(custId);

            //total before vat
            decimal total = cartProds.Sum(prod => prod.CartProduct_Quantity * prod.CartProduct_Price);

            //calc vat
            decimal vat = 0.15m;
            decimal vatTot = total * vat;

            //add vat to total amount
            decimal vatAdded = total + vatTot;

            lblSub.Text = $"R{total:F2}";
            lblVat.Text = $"R{vatTot:F2}";
            lblTotal.Text = $"R{vatAdded:F2}";
        }

    }
}