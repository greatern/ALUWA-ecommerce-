<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Invoice.aspx.cs" Inherits="Aluwa3.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Invoice</title>
    <style>
        body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
}

h1 {
    text-align: center;
    color: #333;
}

#form1 {
    width: 80%;
    margin: 20px auto;
    background: #fff;
    padding: 20px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

label {
    font-weight: bold;
    margin-top: 10px;
    display: block;
}

#gvInvoiceItems {
    width: 100%;
    border-collapse: collapse;
    margin-top: 20px;
}

#gvInvoiceItems th, #gvInvoiceItems td {
    border: 1px solid #ddd;
    padding: 8px;
    text-align: left;
}

#gvInvoiceItems th {
    background-color: #f2f2f2;
    color: #333;
}

#lblTotalAmount {
    font-size: 1.2em;
    font-weight: bold;
    text-align: right;
    margin-top: 20px;
    display: block;
}
    </style>
</head>
<body style = "background-color : #D9D4C9">
     <form id="form1" runat="server">
         <div>
            <h1>Invoice</h1>
            <asp:Label ID="lblCompanyName" runat="server" Text="Company Name"></asp:Label><br />
            <asp:Label ID="lblDate" runat="server" Text="Date"></asp:Label><br />
             <asp:Label ID="lblTotalAmount" runat="server"></asp:Label>
            <asp:GridView ID="gvInvoiceItems" runat="server">
                <Columns>
                    <asp:BoundField DataField="TempOrdProd_Id" HeaderText="Product Name" />
                    <asp:BoundField DataField="TempOrdProd_Quantity" HeaderText="Quantity" />
                    <asp:BoundField DataField="TempProdPurchase_Price" HeaderText="Unit Price" DataFormatString="{0:C}" />
                    <asp:TemplateField HeaderText="SubTotal">
                        <ItemTemplate>
                            <%# Convert.ToDecimal(Eval("Quantity")) * Convert.ToDecimal(Eval("ProductPrice", "{0:C}")) %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <FooterTemplate>
                            <asp:Label ID="lblTotalAmount" runat="server" Text="Total Amount"></asp:Label>
                        </FooterTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <asp:Button ID="btnGenereatePdf" runat="server" Text="Download Invoice (pdf)" OnClick="btnGeneratePdf_Click" />
        </div>
    </form>

</body>
</html>
