using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Aluwa3.ServiceReference1;

namespace Aluwa3
{
    public partial class Checkout : System.Web.UI.Page
    {
        Service1Client sc = new Service1Client();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                calcTot();
            }

        }
        private void calcTot()
        {
            int custId = sc.getCustomerId();
            TempCartProd[] cartProds = sc.GetCartProds(custId);

            decimal subtotal = cartProds.Sum(product => product.CartProduct_Quantity * product.CartProduct_Price);
            decimal vat = 0.15m;
            decimal vatAdded = subtotal * vat;

            decimal total = subtotal + vatAdded;

            lblSub.Text = $"R{subtotal:F2}";
            lblVat.Text = $"R{vatAdded:F2}";
            lblTotal.Text = $"R{total:F2}";
        }

        public void btnCheckOut_Click(object sender, EventArgs e)
        {
            //capture form data
            string custAddress = Request.Form["custAddress"];

            int custId = sc.getCustomerId();

            try
            {
                //process order
                bool success = sc.checkOut(custId, custAddress);

                if (success)
                {
                    Response.Redirect("Invoice.aspx");
                }
                else
                {
                    lblError.Text = "Trouble Process Order. Please try Again";
                }
            }
            catch (Exception ex)
            {
                lblError.Text = "Error occured while processing order!";
            }
        }
    }
}