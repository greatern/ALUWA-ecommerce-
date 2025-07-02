<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditProduct.aspx.cs" Inherits="Aluwa3.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Edit Product</title>
    <style>
        
        header{
			background-color: #686736;
			color: White;
			padding: 10px 0;
			text-align: center;
			margin-bottom: 20px;
		}

        .form-container {
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0px 8px 15px rgba(0, 0, 0, 0.1);
           max-width: 400px;
           margin: 0 auto;
           padding: 20px; /* Added margin to push form below the header */
           display: flex;
           flex-direction: column;
           align-items: center;
        }

        h2 {
            color: #333;
            margin-bottom: 20px;
        }

        label {
            font-weight: bold;
            margin-bottom: 10px;
            color: #555;
        }

        input, textarea {
            width: 100%;
            padding: 10px;
            font-size: 16px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }

        input:focus, textarea:focus {
            outline: none;
            border-color: #007bff;
            box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
        }

        .btn-submit {
              width: 100%;
            padding: 10px;
            background-color: Chocolate;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .btn-submit:hover {
            background-color: #218838;
        }
        .btn-home {
            background-color: #686736;
            color: white;
            margin-top: 10px;
        }

        .btn-home:hover {
            background-color: #0056b3;
        }
        .message {
            margin-top: 15px;
            font-size: 14px;
        }

        .message.success {
            color: #28a745;
        }

        .message.error {
            color: #dc3545;
        }
    </style>
</head>
<body  style = "background-color : #D9D4C9">
    <header>
		<h1> Aluwa-EcoMinders</h1>
	</header>
    <form id="form1" runat="server">
        <div class="form-container">
            <h2>Edit Product</h2>
            <asp:Label ID="lblMessage" runat="server" CssClass="message" />
            <hr />
            <label for="txtProductID">Product ID</label>
            <asp:TextBox ID="txtID" runat="server" />
              <asp:Button ID="btnGet" runat="server" CssClass="btn-submit" Text="Get Product" OnClick="btnGet_Click" />
            <label for="txtProductName">Product Name</label>
            <asp:TextBox ID="txtProductName" runat="server" />

            <label for="txtCategory">Category</label>
            <asp:TextBox ID="txtCategory" runat="server" />

             <label for="txtPrice">Price</label>
            <asp:TextBox ID="txtPrice" runat="server" />

            <label for="txtDescription">Description</label>
            <asp:TextBox ID="txtDescription" TextMode="MultiLine" Rows="4" runat="server" />

            <label for="txtimage">ImageURL:</label>
            <asp:TextBox ID="txtimage" runat="server" CssClass="asp-textbox"></asp:TextBox>

            <label for="txtStockQuantity">Stock Quantity</label>
            <asp:TextBox ID="txtStock" runat="server" />

            <asp:Button ID="btnSubmit" runat="server" CssClass="btn-submit" Text="Update Product" OnClick="btnSubmit_Click" />
        <!-- Back to Home button -->
            <asp:Button ID="btnHome" runat="server" CssClass="btn-home" Text="Back to Home" OnClick="btnHome_Click" />
            </div>
    </form>
</body>
</html>
