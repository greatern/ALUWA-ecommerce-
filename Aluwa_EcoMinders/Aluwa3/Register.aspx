<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Aluwa3.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
	<style>
		header{
			background-color: #686736;
			color: White;
			padding: 10px 0;
			text-align: center;
			margin-bottom: 20px;
		}
		.container{
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 10px;
            background-color: #D9D4C9;
        }
        .container h1{
            text-align: center;
        }
        .reg-group{
			display: flex;
			flex-wrap: wrap;
            margin-bottom: 15px;
        }
		.reg-group .pair{
			display: flex;
			flex-direction: column;
			margin-right: 20px;}
        .reg-group .pair label{
            display: block;
            margin-bottom: 5px;
        }
        .reg-group .pair input{
            width: 100%;
            padding: 8px;
            box-sizing: border-box;
        }
        .reg-group input[type="text"],
        .reg-group input[type="password"] {
            width: 100%;
            padding: 8px;
            box-sizing: border-box;
        }
        button {
            width: 100%;
            padding: 10px;
            background-color: Chocolate;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        button:hover {
            background-color: DarkOrange;
        }
        p {
            text-align: center;
        }
	</style>
</head>
<body>
   <header>
	<h1>Get Started with Aluwa</h1>
</header>
        <div class = "container">
	         <h1>Register</h1>
             <form id="form1" runat="server">
			        <div class = "reg-group">
				        <div class = "pair">
					        <asp:Label ID="Label1" runat="server" Text="Name:"></asp:Label>
					        <asp:TextBox ID="TextBox1" runat="server" placeholder="First Name"></asp:TextBox>
				        </div>
				        <div class = "pair">
					        <asp:Label ID="Label2" runat="server" Text="Surname:"></asp:Label>
					        <asp:TextBox ID="TextBox2" runat="server" placeholder="Surname"></asp:TextBox>
				        </div>

			        </div>
                  <!-- User Type Selection -->
                    <div class = "reg-group">
                        <asp:DropDownList ID="Selectedtype" runat="server" CssClass="form-control" required="true">
                            <asp:ListItem Text="Select User Type" Value="" Disabled="true" Selected="true"></asp:ListItem>
                            <asp:ListItem Text="Customer" Value="Customer"></asp:ListItem>
                            <asp:ListItem Text="Manager" Value="Manager"></asp:ListItem>
                        </asp:DropDownList>
                        <span class="icon_profile"></span>
                    </div>
			        <div class = "reg-group">
				        <asp:Label ID="Label3" runat="server" Text="Email:"></asp:Label>
				        <asp:TextBox ID="TextBox3" runat="server" placeholder="example@domain.com"></asp:TextBox>
			        </div>
			        <div class = "reg-group">
				        <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label>
				        <asp:TextBox ID="TextBox4" runat="server" TextMode="Password" placeholder = "8 Characters Minimum" ValidateRequestMode="Disabled"></asp:TextBox>
			        </div>
				
			        <p>
					        <asp:Button ID="ButnRegister" runat="server" Text="Register" CssClass="btn" OnClick="BtnRegister_Click" CausesValidation="false"/>
			        </p>
            </form>
            <p>
		        Already Have An Account? <a href = "Login.aspx">Login Here</a>
	        </p>
        </div>
</body>
</html>
