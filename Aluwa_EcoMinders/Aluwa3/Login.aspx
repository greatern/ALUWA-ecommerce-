<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Aluwa3.Login"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
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
<body style = "background-color : #D9D4C9">
	<header>
		<h1>Get Started with Aluwa</h1>
	</header>
	<div class = "container">
		<h1>Login</h1>
		<form id = "loginform" runat = "server">
			<table>
				<div class = "reg-group">
					<label for = "email"> Email:</label>
					<input type = "text" id = "email1" name = "email" placeholder = "example@domain.com" runat = "server" required />
				</div>
				<div class = "reg-group">
					<label for = "password">Password:</label>
					<input type = "password" id = "password1" name = "password" placeholder = "8 Characters Minimum" runat = "server" required/>
				</div>
				<p>
					<div class = "reg-group">
                        <asp:Button ID="Button1" runat="server" Text="Login" CssClass="btn" OnClick="btnLogin_Click"/>
					</div>
				</p>
			</table>
            <asp:Label ID="Label1" runat="server" Text="LoginLabel" CssClass="ErrorLabel"></asp:Label>
		</form>
		<p>
			Don't Have an Account Yet? <a href = "Register.aspx">Register Here</a>
		</p>
	</div>
</body>
</html>
