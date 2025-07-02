<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RemoveUser.aspx.cs" Inherits="Aluwa3.RemoveUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Delete Product</title>
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
            display: block;
            margin-bottom: 10px;
            font-weight: bold;
            color: #555;
        }

        .input-group {
            width: 100%;
            margin-bottom: 20px;
        }

        .input-group input {
            width: 100%;
            padding: 10px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }

        .input-group input:focus {
            outline: none;
            border-color: #007bff;
            box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
        }

        .btn-delete {
            width: 100%;
            padding: 10px;
            background-color: Chocolate;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .btn-delete:hover {
            background-color: DarkOrange;
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
<body style = "background-color : #D9D4C9">
	<header>
		<h1> Aluwa-EcoMinders</h1>
	</header>
    <form id="form1" runat="server">
       
        <div class="form-container">
            <h2>Delete User</h2>

            <div class="input-group">
                <label for="txtUserID">Enter User ID:</label>
                <asp:TextBox ID="txtUserID" runat="server" />
                <%--<asp:RequiredFieldValidator ID="rfvProductID" runat="server" ControlToValidate="txtProductID"
                    ErrorMessage="Product ID is required." CssClass="message error" />--%>
            </div>

            <asp:Button ID="btnDelete" runat="server" CssClass="btn-delete" Text="Delete User" OnClick="btnDelete_Click" />

            <asp:Label ID="lblMessage" runat="server" CssClass="message" />
        </div>
    </form>
</body>
</html>
