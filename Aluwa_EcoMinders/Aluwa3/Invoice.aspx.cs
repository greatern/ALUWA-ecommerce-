using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using iTextSharp.text;
using iTextSharp.text.pdf;
using System.IO;
using Aluwa3.ServiceReference1;

namespace Aluwa3
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        Service1Client sc = new Service1Client();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int orderId = sc.GetOrderId(); // Example order ID, replace with actual value
                BindInvoiceData(orderId);
            }
        }

        private void BindInvoiceData(int orderId)
        {
            var orderDetails = sc.GetOrderProds(orderId);

            if (orderDetails != null && orderDetails.Count() > 0)
            {
                gvInvoiceItems.DataSource = orderDetails;
                gvInvoiceItems.DataBind();

                lblCompanyName.Text = "Aluwa";
                lblDate.Text = DateTime.Now.ToString("MM/dd/yyyy");

                decimal total = orderDetails.Sum(prod => prod.TempOrdProd_Quantity * prod.TempOrdProdPurchase_Price);
                lblTotalAmount.Text = "Total: R" + total.ToString("F2");
            }
        }
        protected void GeneratePDF()
        {
            Document document = new Document();
            PdfWriter.GetInstance(document, new FileStream(Server.MapPath("~/Invoice.pdf"), FileMode.Create));
            document.Open();
            document.Add(new Paragraph("Invoice"));
            document.Add(new Paragraph("Company Name: Aluwa"));
            document.Add(new Paragraph("Date: " + DateTime.Now.ToString("MM/dd/yyyy")));
            // Add more content here

            PdfPTable table = new PdfPTable(3); //3 indicates number of columns
            //these will be the columns
            table.AddCell("Product Name");
            table.AddCell("Quantity");
            table.AddCell("Price");

            var orderDetails = sc.GetOrderProds(sc.GetOrderId());
            decimal total = 0;

            foreach (var prod in orderDetails)
            {
                table.AddCell("African Daisy");
                table.AddCell("2");
                table.AddCell("R59.80");

                total += prod.TempOrdProd_Quantity * prod.TempOrdProdPurchase_Price;
            }

            document.Add(table);
            document.Add(new Paragraph("Total: R" + total.ToString("F2")));
            document.Close();

            Response.Redirect("~/Invoice.pdf");
        }

        protected void btnGeneratePdf_Click(object sender, EventArgs e)
        {
            GeneratePDF();
        }

    }
}