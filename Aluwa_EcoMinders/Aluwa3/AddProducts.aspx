<%@ Page Title="" Language="C#" MasterPageFile="~/AluwaMaster.Master" AutoEventWireup="true" CodeBehind="AddProducts.aspx.cs" Inherits="Aluwa3.admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
   
        .form-container  h2 {
            color: black;
            font-size: 24px;
            margin-bottom: 20px;
            text-align: center;
        }
        label {
            font-weight: bold;
            margin-top: 10px;
            display: block;
            font-size: 14px;
        }
        input[type="text"], textarea, .asp-textbox {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
            background-color: #fff;
            font-size: 14px;
        }
        button, .asp-button {
            margin-top: 10px;
            padding: 10px 20px;
            background-color: #db6115;
            color: #fff;
            border: none;
            cursor: pointer;
            border-radius: 4px;
            font-size: 14px;
            width: 100%;
        }
        button:hover, .asp-button:hover {
            background-color: #0056b3;
        }
        .btn-edit {
            background-color: #686736;
        }
        .btn-edit:hover {
            background-color: #e0a800;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            background-color: #fff;
        }
        table, th, td {
            border: 1px solid #ddd;
        }
        th, td {
            padding: 12px;
            text-align: left;
            font-size: 14px;
        }
        th {
            background-color: #f2f2f2;
            color: #333;
        }
        td {
            background-color: #fafafa;
        }
        .form-container {
            justify-content: center;
            align-items: center;
            width: 100%;
            max-width: 500px; /* Adjust the max-width of the form */
            background-color: #fff;
            padding: 40px;
            border-radius: 8px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
            display: flex;
            flex-direction: column;
        }
        .message {
            margin-bottom: 15px;
            color: #28a745;
            font-size: 16px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="bodyDiv">
    <div class="form-container">
        <h2>Manage Products</h2>
        <asp:Label ID="lblMessage" runat="server" CssClass="message"></asp:Label>

        <label for="txtName">Name:</label>
        <asp:TextBox ID="txtName" runat="server" CssClass="asp-textbox"></asp:TextBox>

        <label for="txtPrice">Price:</label>
        <asp:TextBox ID="txtPrice" runat="server" CssClass="asp-textbox"></asp:TextBox>

        <label for="txtDescription">Description:</label>
        <asp:TextBox ID="txtDescription" runat="server" CssClass="asp-textbox"></asp:TextBox>

        <!-- Add new fields here if needed -->
        <label for="txtCategory">Category:</label>
        <asp:TextBox ID="txtCategory" runat="server" CssClass="asp-textbox"></asp:TextBox>

        <label for="txtStock">Stock Quantity:</label>
        <asp:TextBox ID="txtStock" runat="server" CssClass="asp-textbox"></asp:TextBox>

         <label for="txtimage">ImageURL:</label>
        <asp:TextBox ID="txtimage" runat="server" CssClass="asp-textbox"></asp:TextBox>
        <br /><br />
        <asp:Button ID="btnAdd" runat="server" CssClass="asp-button" Text="Add Product" OnClick="btnAdd_Click" />

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" />
                <asp:BoundField DataField="Name" HeaderText="Name" />
                <asp:BoundField DataField="Price" HeaderText="Price" />
                <asp:BoundField DataField="Description" HeaderText="Description" />
                <asp:BoundField DataField="Category" HeaderText="Category" />
                <asp:BoundField DataField="Stock" HeaderText="Stock Quantity" />
                <asp:CommandField ShowSelectButton="True" />
            </Columns>
        </asp:GridView>
        <asp:Label ID="Label1" runat="server" Text="Label" CssClass="ErrorLabel"></asp:Label>
    </div>
        </div>
</asp:Content>