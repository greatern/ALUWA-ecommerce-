<%@ Page Title="" Language="C#" MasterPageFile="~/AluwaMaster.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Aluwa3.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

  <main class="main">

    <!-- Hero Section -->
    <section id="hero" class="hero section dark-background">

      <div id="hero-carousel" class="carousel slide carousel-fade" data-bs-ride="carousel" data-bs-interval="5000">

        <div class="carousel-item active">
          <img src="assets/img/Planting The Seed.jpeg" alt="">
          <div class="carousel-container">
            <h2>Discover a Wide Variety of Quality Seeds</h2>
            <p>Enhance Your Garden with Our Premium Seed Collection</p>
          </div>
        </div><!-- End Carousel Item -->

        <div class="carousel-item">
          <img src="assets/img/Farmers are watering seedlings on bl stock photo containing young and small.jpeg" alt="">
          <div class="carousel-container">
            <h2>Organic vegetables are good for health</h2>
            <p>Organic produce may have more of certain antioxidants and types of flavonoids, which have antioxidant properties. </p>
          </div>
        </div><!-- End Carousel Item -->

        <div class="carousel-item">
          <img src="assets/img/Premium Photo _ Corn sapling growing with technology icons around it cultivation concept and technology.jpeg" alt="">
          <div class="carousel-container">
            <h2>Providing Fresh Produce Every Single Day</h2>
            <p>Eat fresh vegetables and fruit that are in season – “Seasonal produce is more affordable and by focusing on eating winter veg and fruits in winter and summer </p>
          </div>
        </div><!-- End Carousel Item -->

        <div class="carousel-item">
          <img src="assets/img/hero_4.jpg" alt="">
          <div class="carousel-container">
            <h2>Farming as a Passion</h2>
            <p>We come to farming firstly out of a concern for the environment and a love for good food</p>
          </div>
        </div><!-- End Carousel Item -->

        <div class="carousel-item">
          <img src="assets/img/How to use nutrients and fertilizers to grow marijuana plants.jpeg" alt="">
          <div class="carousel-container">
            <h2>Good Food For All</h2>
            <p> seeds are good sources of protein, healthy fats, fibres, vitamins and minerals. </p>
          </div>
        </div><!-- End Carousel Item -->

        <a class="carousel-control-prev" href="#hero-carousel" role="button" data-bs-slide="prev">
          <span class="carousel-control-prev-icon bi bi-chevron-left" aria-hidden="true"></span>
        </a>

        <a class="carousel-control-next" href="#hero-carousel" role="button" data-bs-slide="next">
          <span class="carousel-control-next-icon bi bi-chevron-right" aria-hidden="true"></span>
        </a>

        <ol class="carousel-indicators"></ol>

      </div>

    </section><!-- /Hero Section -->

    <section class="featured-seeds">
        <h2>Featured Seeds</h2>
        <div class="seeds-container">
            <div class="seed-item">
                <img src="https://www.scottandcoseeds.co.uk/wp-content/uploads/2022/06/Salad-Seed-Mock-Up-Square-1320x1320.jpg "    alt="Seed 1">
                <h3>Sunflower Seeds</h3>
           
                <br>
                <p>Perfect for growing beautiful, colourful sunflowers in your garden.</p>
            </div>
            <div class="seed-item">
                <img src="assets/productIMG/Grow your first bonsai from seed - Gardening Site.jpeg" alt="Seed 2">
                <h3>Cucumber Seeds</h3>
               
                <br>
                <p>Grow crisp and refreshing cucumbers for your salads and snacks.</p>
            </div>
            <div class="seed-item">
                <img src="https://assets.wsimgs.com/wsimgs/rk/images/dp/wcm/202326/0026/bradford-planter-m.jpg">
                <h3>Granite pots</h3>
             
                <br>
                <p>characterized by their unique coating made from a blend of granite particles and other materials.</p>
            </div>
            <div class="seed-item">
                <img src="assets/productIMG/The Last Cosmos.jpeg" alt="Seed 4">
                <h3>Lettuce Seeds</h3>
                
                <br>
                <p>Grow your own fresh, leafy greens with these high-quality seeds.</p>
            </div>
        </div>
    </section>
    

    <!-- About Section -->
    <section id="about" class="about section">

      <div class="content">
        <div class="container">
          <div class="row">
            <div class="col-lg-6 mb-4 mb-lg-0">
              <img src="assets/img/How To Plant And Grow Sunflowers - 6 Great Varieties To Rock Your Landscape!.jpeg " alt="Image " class="img-fluid img-overlap" data-aos="zoom-out">
            </div>
            <div class="col-lg-5 ml-auto" data-aos="fade-up" data-aos-delay="100">
              <h3 class="content-subtitle text-white opacity-50">Nurturing Seeds to Life</h3>
              <h2 class="content-title mb-4">
                More than <strong>enough experience</strong> in agriculture
                industry
              </h2>
              <p class="opacity-50">
                At Aluwa, we are passionate about seeds. Our carefully selected seeds are the foundation of beautiful gardens and bountiful harvests. We take pride in offering a wide variety
                 of premium seeds to inspire both seasoned gardeners and beginners. Our commitment to quality ensures that every seed has the potential to thrive and flourish.
                  Join us in our mission to bring life to your garden with the finest seeds.
              </p>

              <div class="row my-5">
                <div class="col-lg-12 d-flex align-items-start mb-4">
                  <i class="bi bi-cloud-rain me-4 display-6"></i>
                  <div>
                    <h4 class="m-0 h5 text-white">Plants needs rain</h4>
                    <p class="text-white opacity-50">Seedling Insights.</p>
                  </div>
                </div>
                <div class="col-lg-12 d-flex align-items-start mb-4">
                  <i class="bi bi-heart me-4 display-6"></i>
                  <div>
                    <h4 class="m-0 h5 text-white">Love organic foods</h4>
                    <p class="text-white opacity-50">Seedling Insights.</p>
                  </div>
                </div>
                <div class="col-lg-12 d-flex align-items-start">
                  <i class="bi bi-shop me-4 display-6"></i>
                  <div>
                    <h4 class="m-0 h5 text-white">Sell vegies</h4>
                    <p class="text-white opacity-50">Seedling Insights.</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section><!-- /About Section -->

    <!-- About 3 Section -->
    <section id="about-3" class="about-3 section">

      <div class="container">
        <div class="row gy-4 justify-content-between align-items-center">
          <div class="col-lg-6 order-lg-2 position-relative" data-aos="zoom-out">
            <img src="assets/img/04237 Seed Bands 600.jpeg" alt="Image" class="img-fluid">
            <a href="https://youtu.be/Pr19OUPEOC4" class="glightbox pulsating-play-btn">
              <span class="play"><i class="bi bi-play-fill"></i></span>
            </a>
          </div>
          <div class="col-lg-5 order-lg-1" data-aos="fade-up" data-aos-delay="100">
            <h2 class="content-title mb-4">Seeds Make Life Better</h2>
            <p class="mb-4">
                Seeds are an important food source for humans and animals, and they make up our 
                grains, lentils, nuts, and cooking oils. But seeds are also important for the plant itself, as 
                they can be planted in the ground to grow new plants.
            </p>
            <ul class="list-unstyled list-check">
              <li>seedling insights</li>
              <li>Embark on a Journey of Seed Discovery</li>
              <li>for every enviroment</li>
            </ul>

            <p><a href="#" class="btn-cta">Get in touch</a></p>
          </div>
        </div>
      </div>
    </section><!-- /About 3 Section -->

    <!-- Services 2 Section -->
    <section id="services-2" class="services-2 section dark-background">
      <!-- Section Title -->
      <div class="container section-title" data-aos="fade-up">
        <h2>Services</h2>
        <p>Heres what ALUWA offers</p>
      </div><!-- End Section Title -->

      <div class="services-carousel-wrap">
        <div class="container">
          <div class="swiper init-swiper">
            <script type="application/json" class="swiper-config">
              {
                "loop": true,
                "speed": 600,
                "autoplay": {
                  "delay": 5000
                },
                "slidesPerView": "auto",
                "pagination": {
                  "el": ".swiper-pagination",
                  "type": "bullets",
                  "clickable": true
                },
                "navigation": {
                  "nextEl": ".js-custom-next",
                  "prevEl": ".js-custom-prev"
                },
                "breakpoints": {
                  "320": {
                    "slidesPerView": 1,
                    "spaceBetween": 40
                  },
                  "1200": {
                    "slidesPerView": 3,
                    "spaceBetween": 40
                  }
                }
              }
            </script>
            <button class="navigation-prev js-custom-prev">
              <i class="bi bi-arrow-left-short"></i>
            </button>
            <button class="navigation-next js-custom-next">
              <i class="bi bi-arrow-right-short"></i>
            </button>
            <div class="swiper-wrapper">
              <div class="swiper-slide">
                <div class="service-item">
                  <div class="service-item-contents">
                    <a href="#">
                      <span class="service-item-category">We do</span>
                      <h2 class="service-item-title">Plant care</h2>
                    </a>
                  </div>
                  <img src="assets/img/Bean seed germinating stock image_ Image of spring, shoot - 4316533.jpeg" alt="Image" class="img-fluid">
                </div>
              </div>
              <div class="swiper-slide">
                <div class="service-item">
                  <div class="service-item-contents">
                    <a href="#">
                      <span class="service-item-category">We bring</span>
                      <h2 class="service-item-title">Seasonal advice</h2>
                    </a>
                  </div>
                  <img src="assets/img/img_sq_4.jpg" alt="Image" class="img-fluid">
                </div>
              </div>
              <div class="swiper-slide">
                <div class="service-item">
                  <div class="service-item-contents">
                    <a href="#">
                      <span class="service-item-category">We do</span>
                      <h2 class="service-item-title">Watering</h2>
                    </a>
                  </div>
                  <img src="assets/img/img_sq_8.jpg" alt="Image" class="img-fluid">
                </div>
              </div>

              <div class="swiper-slide">
                <div class="service-item">
                  <div class="service-item-contents">
                    <a href="#">
                      <span class="service-item-category">We offer</span>
                      <h2 class="service-item-title">Fertilizers</h2>
                    </a>
                  </div>
                  <img src="assets/img/I chose this image because Winnie hates being proper and would rather play in the dirt_.jpeg" alt="Image" class="img-fluid">
                </div>
              </div>
              <div class="swiper-slide">
                <div class="service-item">
                  <div class="service-item-contents">
                    <a href="#">
                      <span class="service-item-category">expect perfect</span>
                      <h2 class="service-item-title">Harvesting</h2>
                    </a>
                  </div>
                  <img src="assets/img/img_sq_6.jpg" alt="Image" class="img-fluid">
                </div>
              </div>
              <div class="swiper-slide">
                <div class="service-item">
                  <div class="service-item-contents">
                    <a href="#">
                      <span class="service-item-category">We do</span>
                      <h2 class="service-item-title">Seeding Plants</h2>
                    </a>
                  </div>
                  <img src="assets/img/LE COQUET Indoor Planter - Bois _ 3 _ Avec trous + soucoupe (1).jpeg" alt="Image" class="img-fluid">
                </div>
              </div>
            </div>
            <div class="swiper-pagination"></div>
          </div>
        </div>
      </div>
    </section><!-- /Services 2 Section -->

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

      

  </main>
</asp:Content>
