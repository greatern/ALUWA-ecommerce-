<%@ Page Title="" Language="C#" MasterPageFile="~/AluwaMaster.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="Aluwa3.Product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
/*--------------------------------------------------------------
# Header
--------------------------------------------------------------*/
/*Removed section*/
        body {
            margin: 0;
            padding: 0;
            background-color: #D9D4C9;
            color: black;
            box-sizing: border-box;
        }
        .main {
            max-width: 1200px;
            margin: 0 auto;
            /*margin-left: 40px;*/
            /* Same width as the sidebar + left position in px */
            padding: 20px;
        }

        .main h1 {
            font-size: 50px;
            margin-bottom: 20px; /*Added*/
            text-align:center;
            color: black;
        }

        /*a img {
            width: 100px;
            height: 350px;
        }*/

        .card-container {
            display: flex;
            justify-content:center;
            flex-wrap: wrap;
            margin-top: 10px;
        }

        .card {
            width: 300px;
            background-color: #D9D4C9;
            border-radius: 5px;
            overflow: hidden;
            box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.2);
            margin: 10px;
        }

        .card a img {
            display: block;
            width: 100%;
            height: auto;
        }

        .card-content {
            padding: 10px;
        }

        .card-content h4 {
            color: rgb(9, 9, 9);
        }
        .card-content h2 {
            font-size: 20px;
            margin-bottom: 5px;
            color: rgb(9, 9, 9);
        }

        .card-content p {
            color: black;
            font-size: 15px;
            line-height: 1.3px;

        }

        .card-content .btn {
            display: inline-block;
            padding: 5px 100px;
            background-color: #686736;
            text-decoration: none;
            text-align: center;
            border: 2px solid white;
            border-radius: 10px;
            border-color: white;
            border-width: 2px;
            margin-top: 0px;
            color: white;
        }

        .btn:hover {
            background-color: black;
            color: white;
        }

        /*Fitering system*/
        .filter-container {
        margin: 20px;
        padding: 15px;/*Added*/
        /*display: flex;*/
         /*added by RR Moeketse*/
        border-radius: 8px;
        display: flex;
        justify-content: flex-start;
        flex-wrap: nowrap; /*Will help in making sure items don't go to new line*/
        align-items:flex-start;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1); /*end of added*/
        /*justify-content: left;*/
        gap:10px;
    }
    .filter-container label {
        font-size: 14px;
        font-weight: 600;
        margin-right: 5px;
        display: block;
    }
    .filter-container select {
        width: 150px;
        padding: 6px;
        font-size: 14px;
        border-radius: 5px;
        border: 1px solid #ccc;
        
    }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <hr>
    <div class="main" runat="server">
        <!--RR added styling-- alignment, bold txt>-->
        <h1 style="text-align:center">Shop All Products</h1>
       <!-- filter content-->
        <div class="filter-container" runat="server">
            <label for="price-filter"><b>Price:</b></label>
            <select id="price-filter" onchange="filterProducts()">
                <option value="all">All</option>
                <option value="low">Below R250</option>
                <option value="medium">R250 - R300</option>
                <option value="high">Above R300</option>
            </select>
        
            <label for="type-filter"><b>Product Type:</b></label>
            <select id="type-filter" onchange="filterProducts()">
                <option value="all">All</option>
                <option value="seeds">Seeds</option>
                <option value="pots">Pots</option>
                <option value="tools">Tools</option>
                <option value="plants">Plants</option>
            </select>
        
            <label for="maintenance-filter"><b>Maintenance:</b></label>
            <select id="maintenance-filter" onchange="filterProducts()">
                <option value="all">All</option>
                <option value="low-maintenance">Low Maintenance</option>
                <option value="high-maintenance">High Maintenance</option>
            </select>
        
            <label for="environment-filter"><b>Environment:</b></label>
            <select id="environment-filter" onchange="filterProducts()">
                <option value="all">All</option>
                <option value="outdoor">Outdoor</option>
                <option value="indoor">Indoor</option>
            </select>
        
            <label for="province-filter"><b>Province:</b></label>
            <select id="province-filter" onchange="filterProducts()">
                <option value="all">All</option>
                <option value="gauteng">Gauteng</option>
                <option value="western-cape">Western Cape</option>
                <option value="kwazulu-natal">KwaZulu-Natal</option>
                <option value="eastern-cape">Eastern Cape</option>
                <option value="free-state">Free State</option>
                <option value="limpopo">Limpopo</option>
                <option value="mpumalanga">Mpumalanga</option>
                <option value="northern-cape">Northern Cape</option>
                <option value="north-west">North West</option>
                <!-- Add more provinces as needed -->
            </select>
        </div>
        <!--End of filter content-->

        <!--TempProds-->
        <div class="card-container" runat="server">
            <asp:Repeater ID="ProductRepeater" runat="server">
                <ItemTemplate>
                    <div class="card" data-type="<%# Eval("Category") %>" data-price="<%# Eval("Price") %>" data-maintenance="<%# Eval("Maintenace") %>" data-environment="<%# Eval("Environment") %>" data-province="<%# Eval("Province") %>">
                        <a href='<%# ResolveUrl("~/AboutProduct.aspx?Id=" + Eval("Prod_Id")) %>'><img src='<%# ResolveUrl(Eval("ProductImage").ToString()) %>' alt='<%# Eval("Prod_Name") %>' /></a>
                        <div class="card-content">
                            <h2><a href='<%# ResolveUrl("~/AboutProduct.aspx?Id=" + Eval("Prod_Id"))%>'><%# Eval("Prod_Name") %></a></h2>
                            <span><h4>Price: R<%# Eval("Price") %></h4></span>
                            <asp:Button ID="btnAddtoCart" class="btn" Text="Add To Cart" runat="server" OnClick="btnAddToCart_Click"/>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater> 
        </div>
        <!--End of Temp Prods-->

    </div>
<hr>
<script>
    function filterProducts() {
        var priceFilter = document.getElementById('price-filter').value;
        var typeFilter = document.getElementById('type-filter').value;
        var maintenanceFilter = document.getElementById('maintenance-filter').value;
        var environmentFilter = document.getElementById('environment-filter').value;
        var provinceFilter = document.getElementById('province-filter').value;
        const cards = document.querySelectorAll('.card');

        cards.forEach(card => {
            const price = card.getAttribute('data-price');
            const type = card.getAttribute('data-type') || '';
            const maintenance = card.getAttribute('data-maintenance') || '';
            const environment = card.getAttribute('data-environment') || '';
            const province = card.getAttribute('data-province') || '';

            let matchesPrice = (priceFilter === 'all' || (priceFilter === 'low' && parseFloat(price) < 250) || (priceFilter === 'medium' && parseFloat(price) >= 250 && parseFloat(price) <= 300) || (priceFilter === 'high' && parseFloat(price) > 300));
            let matchesType = (typeFilter === 'all' || typeFilter.toLowerCase() === type.toLowerCase());
            let matchesMaintenance = (maintenanceFilter === 'all' || maintenanceFilter.toLowerCase() === maintenance.toLowerCase());
            let matchesEnvironment = (environmentFilter === 'all' || environmentFilter.toLowerCase() === environment.toLowerCase());
            let matchesProvince = (provinceFilter === 'all' || provinceFilter.toLowerCase() === province.toLowerCase());

            if (matchesPrice && matchesType && matchesMaintenance && matchesEnvironment && matchesProvince) {
                card.style.display = 'block';
            } else {
                card.style.display = 'none';
            }
        });
    }
</script> 

</asp:Content>
