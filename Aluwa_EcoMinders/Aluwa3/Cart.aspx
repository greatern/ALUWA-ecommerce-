<%@ Page Title="" Language="C#" MasterPageFile="~/AluwaMaster.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="Aluwa3.Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
  <!-- Main CSS File -->
  <link href="assets/css/main.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
  <style>
/*The styling comes from template*/

      .shopping__cart__table {
	 margin-bottom: 30px;
     background-color:white;
}

.shopping__cart__table table {
	  width: 100%;
  border-collapse: collapse;
}

.shopping__cart__table table thead {
	 border-bottom: 1px solid #f2f2f2;
}

.shopping__cart__table table thead tr th {
	  color: #111111;
  font-size: 16px;
  font-weight: 700;
  text-transform: uppercase;
  padding-bottom: 25px;
}

.shopping__cart__table table tbody tr {
	border-bottom: 1px solid #f2f2f2;
}

.shopping__cart__table table tbody tr td {
	padding-bottom: 30px;
	padding-top: 30px;
}

.shopping__cart__table table tbody tr td.product__cart__item {
	width: 700px;
}

.shopping__cart__table table tbody tr td.product__cart__item .product__cart__item__pic {
	float: left;
	margin-right: 30px;
}

.shopping__cart__table table tbody tr td.product__cart__item .product__cart__item__text {
	overflow:hidden;
	padding-top: 21px;
}

.shopping__cart__table table tbody tr td.product__cart__item .product__cart__item__text h6 {
	color: #111111;
	font-size: 15px;
	font-weight: 600;
	margin-bottom: 10px;
}

.shopping__cart__table table tbody tr td.product__cart__item .product__cart__item__text h5 {
	color: #0d0d0d;
	font-weight: 700;
}
.shopping__cart__table table tbody tr td.quantity__item {
	width: 175px;
   
}

.shopping__cart__table table tbody tr td.quantity__item .quantity .pro-qty-2 {
	width: 80px;
}

.shopping__cart__table table tbody tr td.quantity__item .quantity .pro-qty-2 input {
	  width: 50px;
      border:solid;
      text-align: center;
      color: #111111;
      font-size: 16px;
}

.shopping__cart__table table tbody tr td.quantity__item .quantity .pro-qty-2 .qtybtn {
	font-size: 16px;
	color: #888888;
	width: 10px;
	cursor: pointer;
}

.shopping__cart__table table tbody tr td.cart__price {
  color: #111111;
  font-size: 18px;
  font-weight: 700;
  width: 140px;
}

.shopping__cart__table table tbody tr td.cart__close i {
	font-size: 18px;
	color: #111111;
	height: 40px;
	width: 40px;
	background: #f3f2ee;
	border-radius: 50%;
	line-height: 40px;
	text-align: center;
}

.continue__btn.update__btn {
	text-align: right;
}

.continue__btn.update__btn a {
	  color: #ffffff;
  background: #111111;
  border-color: #111111;
  padding: 14px 35px;
}

.continue__btn.update__btn a i {
	margin-right: 5px;
}

.continue__btn a {
  color: #111111;
  font-size: 14px;
  font-weight: 700;
  letter-spacing: 2px;
  text-transform: uppercase;
  border: 1px solid #e1e1e1;
  padding: 14px 35px;
  display: inline-block;
}

.cart__discount {
	margin-bottom: 60px;
}

.cart__discount h6 {
	color: #111111;
	font-weight: 700;
	text-transform: uppercase;
	margin-bottom: 35px;
}

.cart__discount form {
	position: relative;
}

.cart__discount form input {
	font-size: 14px;
	color: #b7b7b7;
	height: 50px;
	width: 100%;
	border: 1px solid #e1e1e1;
	padding-left: 20px;
}

.cart__discount form input::-webkit-input-placeholder {
	color: #b7b7b7;
}

.cart__discount form input::-moz-placeholder {
	color: #b7b7b7;
}

.cart__discount form input:-ms-input-placeholder {
	color: #b7b7b7;
}

.cart__discount form input:-ms-input-placeholder {
	color: #b7b7b7;
}

.cart__discount form input::placeholder {
	color: #b7b7b7;
}

.cart__discount form button {
	font-size: 14px;
	color: #ffffff;
	font-weight: 700;
	letter-spacing: 2px;
	text-transform: uppercase;
	background: #111111;
	padding: 0 30px;
	border: none;
	position: absolute;
	right: 0;
	top: 0;
	height: 100%;
}

.cart__total {
	background: #f3f2ee;
	padding: 35px 40px 40px;
}

.cart__total h6 {
	color: #111111;
	text-transform: uppercase;
	margin-bottom: 12px;
}

.cart__total ul {
	margin-bottom: 25px;
}

.cart__total ul li {
	list-style: none;
	font-size: 16px;
	color: #444444;
	line-height: 40px;
	overflow: hidden;
}

.cart__total ul li span {
	font-weight: 700;
	color: #e53637;
	float: right;
}

.cart__total .primary-btn {
	display: block;
	padding: 12px 10px;
	text-align: center;
	letter-spacing: 2px;
}
.btn-delete {
    background-color:#686736; 
    color: #fff; /* White text */
    border: none; /* No border */
    padding: 5px 5px; /* Padding */
    font-size: 10px; /* Font size */
    border-radius: 10px; /* Rounded corners */
    cursor: pointer; /* Pointer cursor on hover */
    transition: background-color 0.3s ease; /* Smooth transition */
}

.btn-delete:hover {
    background-color: #c12f2f; /* Darker red on hover */
}
.primary-btn {
  display: block;
  padding: 12px 10px;
  text-align: center;
  letter-spacing: 2px;
  color: white;
  background: #111111;
  text-transform: uppercase;
  border: none;
}
  </style>
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container mt-5">
        <h2 class="mb-4" style="color:black">Shopping Cart</h2>
         <section class="shopping-cart spad">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8">
                        <div class="shopping__cart__table">
                            <table>
                                <thead>
                                    <tr>
                                        <th>Product</th>
                                        <th>Quantity</th>
                                        <th>Total</th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <asp:Repeater ID="rptCartItems" runat="server">
                                        <ItemTemplate>
                                            <tr>
                                                <td class="product__cart__item">
                                                    <div class="product__cart__item__pic">
                                                        <img src='<%# Eval("CartProduct_Image") %>' alt="" style="width:200px; height:auto">
                                                    </div>
                                                    <div class="product__cart__item__text">
                                                        <h6><%# Eval("CartProduct_Name") %></h6>
                                                        <h5>R <%# Eval("CartProduct_Price", "{0:F2}") %></h5>
                                                    </div>
                                                </td>
                                                <td class="quantity__item">
                                                    <div class="quantity">
                                                        <div class="pro-qty-2">
                                                            <input type="text" value='<%# Eval("CartProduct_Quantity") %>' />
                                                        </div>
                                                    </div>
                                                </td>
                                                <td class="cart__price">R <%# Eval("CartProduct_Price") %></td>
                                                <td class="cart__close">
                                                    <asp:Button ID="btnDelete" runat="server" Text="Remove"  CssClass="btn-delete" OnClick="btnDeleteProduct_Click" />
                                                </td>
                                            </tr>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </tbody>++
                            </table>
                        </div>
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="continue__btn">
                                    <a href="Product.aspx">Continue Shopping</a>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="continue__btn update__btn">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="cart__total">
                            <h6>Cart total</h6>
                            <ul>
                                <li><b>Subtotal</b><span id="sub"></span></li>
								<asp:Label ID="lblSub" runat="server" Text="SubToTal"></asp:Label>
								<li><b>15% VAT:</b><span id="vat"></span></li>
								<asp:Label ID="lblVat" runat="server" Text="VAT 15%"></asp:Label>
								<li><b>Total:</b><span id="total"></span></li>
								<asp:Label ID="lblTotal" runat="server" Text="Total"></asp:Label>
                            </ul>
							<p>Free Shipping Across Country</p>
                            <a href="Checkout.aspx" class="primary-btn">Proceed to checkout</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
     </div>

</asp:Content>
