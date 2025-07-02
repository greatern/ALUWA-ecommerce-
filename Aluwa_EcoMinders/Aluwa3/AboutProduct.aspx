<%@ Page Title="" Language="C#" MasterPageFile="~/AluwaMaster.Master" AutoEventWireup="true" CodeBehind="AboutProduct.aspx.cs" Inherits="Aluwa3.AboutProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
  .search-cart {
            display: flex;
            align-items: center;
            gap: 10px;
        }
        .containerprod
        {
            background-color: transparent;
            margin-top: 90px;
            
        }
        .product-details {
            background: transparent;
            border: 1px solid #ddd;
            border-radius: 8px;
            padding: 20px;
            margin-bottom: 40px;
        }

        .product-details img {
            max-width: 100%;
            border-radius: 8px;
            margin-bottom: 20px;
        }

        .product-details h1 {
            font-size: 32px;
            margin-bottom: 20px;
        }
        .product-details p {
            font-size: 18px;
            margin-bottom: 15px;
        }

        .quantity-section {
            margin-bottom: 20px;
        }

        .quantity-section label {
            font-size: 18px;
        }

        .quantity-section input {
            width: 90px;
            padding: 5px;
            font-size: 18px;
            margin-left: 10px;
            text-align: center;
            border: 1px solid 5px;
            border-color:transparent;
            box-shadow: #219150;
        }
  .add-to-cart-btn {
            background-color: #355b06b3;
            color: #fff;
            padding: 15px 30px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            font-size: 18px;
            width: 200px;
            height:56px;
        }

        .add-to-cart-btn:hover {
            background-color: #219150;
        }

        .add-to-wishlist-btn {
            background-color: white;
            color: #219150;
            padding: 15px 30px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            font-size: 18px;
            width: 200px;
            height:50px;
        }

        .add-to-wishlist-btn:hover {
            background-color: #95ab9e;
        }
          .about-3 {
            background: #f9f9f9;
            padding: 50px 0;
        }

        .content-title {
            font-size: 28px;
            font-weight: 600;
        }

        .list-check li {
            padding-left: 20px;
            position: relative;
            margin-bottom: 10px;
            font-size: 16px;
        }

        .list-check li::before {
            content: '\2713';
            position: absolute;
            left: 0;
            color: #27ae60;
            font-weight: bold;
        }
 .btn-cta {
            display: inline-block;
            background-color: #27ae60;
            color: #fff;
            padding: 12px 20px;
            border-radius: 5px;
            text-decoration: none;
        }

        h2{
            z-index: 2;
            color: #219150;
            
        }

        .img-fluid1
        {
            padding-left: 100px;
            width:700px;
            height :700px;
        }

        .btn-cta:hover {
            background-color: #219150;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .row {
                flex-direction: column;
                text-align: center;
            }
         .order-lg-1, .order-lg-2 {
                order: 0 !important;
            }
    
        }

        .product-img{
            width: 300px;
            height: auto;
        }

        .cart-button{

        }
</style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <!-- Product Details Section -->
     <div class="containerprod">
        <div class="product-details section">
            <div class="row align-items-center">
                <div class="col-lg-6">
                    <img src="assets/img/04237 Seed Bands 600.jpeg" alt="Product Image" class="img-fluid1">
                </div>
                <div class="col-lg-6 order-lg-2 position-relative">
                    <asp:Literal ID="productLiteral" runat="server"></asp:Literal>
                    <asp:HiddenField ID="hiddenProductid" runat="server"/>
                    <asp:Button ID="BtnAddToCart" Text="Add To Cart" runat="server" OnClick="BtnAddToCart_OnClick"/>
                </div>
            </div>
        </div>
    </div>
       <!-- Testimonials Section -->
       <section class="testimonials-12 testimonials section" id="testimonials">
        <!-- Section Title -->
        <div class="container section-title" data-aos="fade-up">
          <h2>TESTIMONIALS</h2>
          <p>reviews from previous customers</p>
        </div><!-- End Section Title -->
  
        <div class="testimonial-wrap">
          <div class="container">
            <div class="row">
              <div class="col-md-6 mb-4 mb-md-4">
                <div class="testimonial">
                  <img src="assets/img/testimonials/Thuso Mbedu.jpeg" alt="Testimonial author">
                  <blockquote>
                    <p>
                      “ Thought it was only the Sunflower seeds as complimentary but was pleasantly surprised
                       that AruguIa and Mixed African Daisy was in the packet, I didn't realize. Thank you for the gifts,”
                         </p>
                  </blockquote>
                  <p class="client-name">Thuso mbedu</p>
                </div>
              </div>
              <div class="col-md-6 mb-4 mb-md-4">
                <div class="testimonial">
                  <img src="assets/img/testimonials/Actor Headshot.jpeg" alt="Testimonial author">
                  <blockquote>
                    <p>
                      “I am absolutely delighted at your service. I ordered some sprouting seeds on Sunday and
                       received them in Johannesburg on Wednesday morning. Great to see some excellence still around”
                    </p>
                  </blockquote>
                  <p class="client-name">Kate krobler</p>
                </div>
              </div>
              <div class="col-md-6 mb-4 mb-md-4">
                <div class="testimonial">
                  <img src="assets/img/testimonials/Women's Headshots Portfolio _ Top LA Photographer Near Me — Anthony Mongiello Photography.jpeg" alt="Testimonial author">
                  <blockquote>
                    <p>
                      “I would just like to thank you for the great service I have received with my recent/first order.
                       From the get go I have been impressed with your website, the prices, the presentation of the package (neat and I didn’t feel like there was plastic wasted) ”
                          </p>
                  </blockquote>
                  <p class="client-name">Claire Anderson</p>
                </div>
              </div>
              <div class="col-md-6 mb-4 mb-md-4">
                <div class="testimonial">
                  <img src="assets/img/testimonials/3cb09935-aa81-47c1-9886-948a342c4575.jpeg" alt="Testimonial author">
                  <blockquote>
                    <p>
                      “I'd like to thank you for wonderful, prompt 
                      service and delivery of my seed order and I'd also like to compliment you on your packaging.”
                    </p>
                  </blockquote>
                  <p class="client-name">faith moeketse</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section><!-- /Testimonials Section -->

</asp:Content>
