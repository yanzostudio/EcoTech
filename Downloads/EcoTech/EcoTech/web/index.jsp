<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <title>EcoTech - Homepage</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="" name="keywords">
        <meta content="" name="description">

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wdth,wght@0,75..100,300..800;1,75..100,300..800&family=Playfair+Display:ital,wght@0,400..900;1,400..900&display=swap" rel="stylesheet"> 

        <!-- Icon Font Stylesheet -->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

        <!-- Libraries Stylesheet -->
        <link href="lib/animate/animate.min.css" rel="stylesheet">
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">


        <!-- Customized Bootstrap Stylesheet -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Template Stylesheet -->
        <link href="css/style.css" rel="stylesheet">
    </head>

    <body>

        <!-- Spinner Start -->
        <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
            <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
                <span class="sr-only">Loading...</span>
            </div>
        </div>
        <!-- Spinner End -->

        <!-- Navbar & Hero Start -->
        <div class="container-fluid position-relative p-0">
            <nav class="navbar navbar-expand-lg navbar-light px-4 px-lg-5 py-3 py-lg-0">
                <a href="index.jsp" class="navbar-brand p-0 active">
                    <img src="img/EcoTech Logo.png" alt="Logo" width="130" height="28">
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                    <span class="fa fa-bars"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarCollapse">
                    <div class="navbar-nav ms-2 py-0"><div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Sustainability</a>
                            <div class="dropdown-menu m-0">
                                <a href="energy_efficiency.jsp" class="dropdown-item">Energy Efficiency</a>
                                <a href="carbon_tracking.jsp" class="dropdown-item">Carbon Tracking</a>
                                <a href="waste_mgmnt.jsp" class="dropdown-item">Waste Management</a>
                                <a href="water_conservation.jsp" class="dropdown-item">Water Conservation</a>
                            </div>

                        </div>
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Customers</a>
                            <div class="dropdown-menu m-0">
                                <a href="casestudy.jsp" class="dropdown-item">Case Study</a>
                                <a href="faq.jsp" class="dropdown-item">FAQ</a>
                            </div>
                        </div><div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Support</a>
                            <div class="dropdown-menu m-0">
                                <a href="helpcenter.jsp" class="dropdown-item">Help Center</a>
                                <a href="contact_us.jsp" class="dropdown-item">Contact Us</a>
                               </div>
                        </div>
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">About</a>
                            <div class="dropdown-menu m-0">
                                <a href="aboutus.jsp" class="dropdown-item">About Us</a>
                                <a href="sustainability_goals.jsp" class="dropdown-item">Sustainability Goals</a>
                                </div>
                        </div>
                    </div>
                    <div class="d-none d-xl-flex me-3">
                        <div class="d-flex flex-column pe-3 border-end border-primary">
                            </div>
                    </div>
                    <div style="padding-left: 300px;"></div>
                    <button class="btn btn-primary btn-md-square d-flex flex-shrink-0 mb-3 mb-lg-0 rounded-circle me-3" data-bs-toggle="modal" data-bs-target="#searchModal"><i class="fas fa-search"></i></button>
                    <a href="register.jsp" class="btn btn-primary rounded-pill d-inline-flex flex-shrink-0 py-2 px-4">Register</a>
                    <a href="login.jsp" class="btn btn-primary rounded-pill d-inline-flex flex-shrink-0 py-2 px-4 ms-3">Login</a>
                </div>
            </nav>

            <!-- Carousel Start -->
            <div class="carousel-header">
                <div id="carouselId" class="carousel slide" data-bs-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-bs-target="#carouselId" data-bs-slide-to="0" class="active"></li>
                        <li data-bs-target="#carouselId" data-bs-slide-to="1"></li>
                        <li data-bs-target="#carouselId" data-bs-slide-to="2"></li>
                    </ol>
                    <div class="carousel-inner" role="listbox">
                        <div class="carousel-item active">
                            <img src="img/carousel-1.png" class="img-fluid w-100" alt="Image">
                            <div class="carousel-caption-1">
                                <div class="carousel-caption-1-content" style="max-width: 900px;">
                                    <h4 class="text-white text-uppercase fw-bold mb-4 fadeInLeft animated" data-animation="fadeInLeft" data-delay="1s" style="animation-delay: 1s;" style="letter-spacing: 3px;">Sustainability Matters</h4>
                                    <h1 class="display-2 text-capitalize text-white mb-4 fadeInLeft animated" data-animation="fadeInLeft" data-delay="1.3s" style="animation-delay: 1.3s;">Innovating for a Greener Tomorrow</h1>
                                    <p class="mb-5 fs-5 text-white fadeInLeft animated" data-animation="fadeInLeft" data-delay="1.5s" style="animation-delay: 1.5s;">Our Sustainability Management System can empower organizations to optimize resources, reduce waste and achieve lasting environmental impact.</p>
                                    <div class="carousel-caption-1-content-btn fadeInLeft animated" data-animation="fadeInLeft" data-delay="1.7s" style="animation-delay: 1.7s;">
                                        <a class="btn btn-primary rounded-pill flex-shrink-0 py-3 px-5 me-2" href="#features">Explore Features</a>
                                        <a class="btn btn-secondary rounded-pill flex-shrink-0 py-3 px-5 ms-2" href="contact_us.jsp">Contact Us</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <img src="img/carousel-2.png" class="img-fluid w-100" alt="Image">
                            <div class="carousel-caption-2">
                                <div class="carousel-caption-2-content" style="max-width: 900px;">
                                    <h4 class="text-white text-uppercase fw-bold mb-4 fadeInRight animated" data-animation="fadeInRight" data-delay="1s" style="animation-delay: 1s;" style="letter-spacing: 3px;">Eco-Friendly Practices</h4>
                                    <h1 class="display-2 text-capitalize text-white mb-4 fadeInRight animated" data-animation="fadeInRight" data-delay="1.3s" style="animation-delay: 1.3s;">Streamline Your Sustainability Goals</h1>
                                    <p class="mb-5 fs-5 text-white fadeInRight animated" data-animation="fadeInRight" data-delay="1.5s" style="animation-delay: 1.5s;">Our tools help track carbon footprints, manage resources, and report progress toward a more sustainable future. 
                                    </p>
                                    <div class="carousel-caption-2-content-btn fadeInRight animated" data-animation="fadeInRight" data-delay="1.7s" style="animation-delay: 1.7s;">
                                        <a class="btn btn-primary rounded-pill flex-shrink-0 py-3 px-5 me-2" href="#">Explore Features</a>
                                        <a class="btn btn-secondary rounded-pill flex-shrink-0 py-3 px-5 ms-2" href="contact_us.jsp">Contact Us</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselId" data-bs-slide="prev">
                        <span class="carousel-control-prev-icon btn btn-primary fadeInLeft animated" aria-hidden="true" data-animation="fadeInLeft" data-delay="1.1s" style="animation-delay: 1.3s;"> <i class="fa fa-angle-left fa-3x"></i></span>
                        <span class="visually-hidden">Previous</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#carouselId" data-bs-slide="next">
                        <span class="carousel-control-next-icon btn btn-primary fadeInRight animated" aria-hidden="true" data-animation="fadeInLeft" data-delay="1.1s" style="animation-delay: 1.3s;"><i class="fa fa-angle-right fa-3x"></i></span>
                        <span class="visually-hidden">Next</span>
                    </button>
                </div>
            </div>
            <!-- Carousel End -->
        </div>
        <!-- Navbar & Hero End -->

        <!-- Modal Search Start -->
        <div class="modal fade" id="searchModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-fullscreen">
                <div class="modal-content rounded-0">
                    <div class="modal-header">
                        <h4 class="modal-title mb-0" id="exampleModalLabel">Search by keyword</h4>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body d-flex align-items-center">
                        <div class="input-group w-75 mx-auto d-flex">
                            <input type="search" class="form-control p-3" placeholder="keywords" aria-describedby="search-icon-1">
                            <span id="search-icon-1" class="input-group-text btn border p-3"><i class="fa fa-search text-white"></i></span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Modal Search End -->

        <!-- feature Start -->
        <div class="container-fluid feature bg-light py-5">
            <div class="container py-5"  id="features">
                <div class="text-center mx-auto pb-5 wow fadeInUp" data-wow-delay="0.2s" style="max-width: 800px;">
                    <h4 class="text-uppercase text-primary">Our Feature</h4>
                    <h1 class="display-3 text-capitalize mb-3">Sustainable Practices, Lasting Impact</h1>
                </div>
                <div class="row g-3">
                    <div class=" col-md-6 col-lg-6 col-xl-3 wow fadeInUp" data-wow-delay="0.2s">
                        <div class="feature-item p-4">
                            <div class="feature-icon mb-3"><i class="fas fa-leaf text-white fa-3x"></i></div>
                            <a href="#" class="h4 mb-3">Sustainability</a>
                            <p class="mb-3">Implementing eco-friendly practices and innovative solutions ensures a greener future and drives change that has a positive impact on the planet.</p>
                            <a href="sustainabilities.jsp" class="btn text-secondary">Read More <i class="fa fa-angle-right"></i></a>
                        </div>
                    </div>
                    <!--<div class="col-md-6 col-lg-6 col-xl-3 wow fadeInUp" data-wow-delay="0.4s">
                        <div class="feature-item p-4">
                            <div class="feature-icon mb-3"><i class="fas fa-industry text-white fa-3x"></i></div>
                            <a href="#" class="h4 mb-3">Industries</a>
                            <p class="mb-3">Collaborate with various industries such as manufacturing, construction and healthcare by providing solutions aligned with their sustainability goals.</p>
                            <a href="industries.jsp" class="btn text-secondary">Read More <i class="fa fa-angle-right"></i></a>
                        </div>
                    </div>-->
                    <div class="col-md-6 col-lg-6 col-xl-3 wow fadeInUp" data-wow-delay="0.6s">
                        <div class="feature-item p-4">
                            <div class="feature-icon mb-3"><i class="fas fa-user-tie text-white fa-3x"></i></div>
                            <a href="#" class="h4 mb-3">Customers</a>
                            <p class="mb-3">Our customers are at the heart of sustainability implementation through several case studies, testimonials and comprehensive support.</p>
                            <a href="customers.jsp" class="btn text-secondary">Read More <i class="fa fa-angle-right"></i></a>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-6 col-xl-3 wow fadeInUp" data-wow-delay="0.8s">
                        <div class="feature-item p-4">
                            <div class="feature-icon mb-3"><i class="fas fa-hands-helping text-white fa-3x"></i></div>
                            <a href="#" class="h4 mb-3">Support</a>
                            <p class="mb-3">With a strong vision and dedicated leadership in innovation, we committed to supporting the community by implementing sustainable practices.</p>
                            <a href="support.jsp" class="btn text-secondary">Read More <i class="fa fa-angle-right"></i></a>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-6 col-xl-3 wow fadeInUp" data-wow-delay="0.8s">
                        <div class="feature-item p-4">
                            <div class="feature-icon mb-3"><i class="fas fa-building text-white fa-3x"></i></div>
                            <a href="#" class="h4 mb-3">About</a>
                            <p class="mb-3">Our journey are driven by a mission to inspire positive change through innovative practices, strategic collaborations, and environmental stewardship. </p>
                            <a href="about.jsp" class="btn text-secondary">Read More <i class="fa fa-angle-right"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- feature End -->


        <!-- About Start -->
        <div class="container-fluid about overflow-hidden py-5">
            <div class="container py-5">
                <div class="row g-5">
                    <div class="col-xl-6 wow fadeInLeft" data-wow-delay="0.2s">
                        <div class="about-img rounded h-100">
                            <img src="img/about.png" class="img-fluid rounded h-100 w-100" style="object-fit: cover;" alt="">
                            <div class="about-exp"><span>Empowering Sustainable Futures</span></div>
                        </div>
                    </div>
                    <div class="col-xl-6 wow fadeInRight" data-wow-delay="0.2s">
                        <div class="about-item">
                            <h4 class="text-primary text-uppercase">About Us</h4>
                            <h1 class="display-3 mb-3">Driving Sustainability for a Better Tomorrow</h1>
                            <p class="mb-4">Our Sustainability Management System is designed to empower organizations in achieving eco-friendly goals by optimizing resource management, reducing waste, and promoting environmentally responsible practices.
                            </p>
                            <div class="bg-light rounded p-4 mb-4">
                                <div class="row">
                                    <div class="col-12">
                                        <div class="d-flex">
                                            <div class="pe-4">
                                                <div class="rounded-circle bg-primary d-flex align-items-center justify-content-center" style="width: 80px; height: 80px;"><i class="fas fa-leaf text-white fa-2x"></i></div>
                                            </div>
                                            <div class="">
                                                <a href="#" class="h4 d-inline-block mb-3">Eco-Friendly Solutions</a>
                                                <p class="mb-0">Track and optimize resource usage while reducing environmental impact to achieve your sustainability goals.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="bg-light rounded p-4 mb-4">
                                <div class="row">
                                    <div class="col-12">
                                        <div class="d-flex">
                                            <div class="pe-4">
                                                <div class="rounded-circle bg-primary d-flex align-items-center justify-content-center" style="width: 80px; height: 80px;"><i class="fas fa-recycle text-white fa-2x"></i></div>
                                            </div>
                                            <div class="">
                                                <a href="#" class="h4 d-inline-block mb-3">Sustainable Practices</a>
                                                <p class="mb-0">Implement systems to monitor waste, emissions, and resource efficiency with actionable insights.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <a href="aboutus.jsp" class="btn btn-secondary rounded-pill py-3 px-5">Read More</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- About End -->


        <!-- Fact Counter -->
        <!--<div class="container-fluid counter py-5">
            <div class="container py-5">
                <div class="row g-5">
                    <div class="col-md-6 col-lg-6 col-xl-3 wow fadeInUp" data-wow-delay="0.2s">
                        <div class="counter-item">
                            <div class="counter-item-icon mx-auto">
                                <i class="fas fa-project-diagram fa-3x text-white"></i>
                            </div>
                            <h4 class="text-white my-4">Sustainability Projects</h4>
                            <div class="counter-counting">
                                <span class="text-white fs-2 fw-bold" data-toggle="counter-up">20</span>
                                <span class="h1 fw-bold text-white">+</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-6 col-xl-3 wow fadeInUp" data-wow-delay="0.4s">
                        <div class="counter-item">
                            <div class="counter-item-icon mx-auto">
                                <i class="fas fa-leaf fa-3x text-white"></i>
                            </div>
                            <h4 class="text-white my-4">Resources Optimized</h4>
                            <div class="counter-counting">
                                <span class="text-white fs-2 fw-bold" data-toggle="counter-up">10</span>
                                <span class="h1 fw-bold text-white">+</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-6 col-xl-3 wow fadeInUp" data-wow-delay="0.6s">
                        <div class="counter-item">
                            <div class="counter-item-icon mx-auto">
                                <i class="fas fa-users fa-3x text-white"></i>
                            </div>
                            <h4 class="text-white my-4">Engaged Clients</h4>
                            <div class="counter-counting">
                                <span class="text-white fs-2 fw-bold" data-toggle="counter-up">20</span>
                                <span class="h1 fw-bold text-white">+</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-6 col-xl-3 wow fadeInUp" data-wow-delay="0.8s">
                        <div class="counter-item">
                            <div class="counter-item-icon mx-auto">
                                <i class="fas fa-globe fa-3x text-white"></i>
                            </div>
                            <h4 class="text-white my-4">Years of Sustainability</h4>
                            <div class="counter-counting">
                                <span class="text-white fs-2 fw-bold" data-toggle="counter-up">17</span>
                                <span class="h1 fw-bold text-white">+</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>-->
        <!-- Fact Counter -->

        <!-- Service Start -->
        <div class="container-fluid service bg-light overflow-hidden py-5">
            <div class="container py-5">
                <div class="text-center mx-auto pb-5 wow fadeInUp" data-wow-delay="0.2s" style="max-width: 800px;">
                    <h4 class="text-uppercase text-primary">Our Service</h4>
                    <h1 class="display-3 text-capitalize mb-3">Empowering Sustainability for a Better Future</h1>
                </div>
                <div class="row gx-0 gy-4 align-items-center">
                    <div class="col-lg-6 col-xl-4 wow fadeInLeft" data-wow-delay="0.2s">
                        <div class="service-item rounded p-4 mb-4">
                            <div class="row">
                                <div class="col-12">
                                    <div class="d-flex">
                                        <div class="service-content text-end">
                                            <a href="#" class="h4 d-inline-block mb-3">Renewable Energy Solutions</a>
                                            <p class="mb-0">Implementing sustainable energy practices for businesses and communities.</p>
                                        </div>
                                        <div class="ps-4">
                                            <div class="service-btn"><i class="fas fa-solar-panel text-white fa-2x"></i></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="service-item rounded p-4 mb-4">
                            <div class="row">
                                <div class="col-12">
                                    <div class="d-flex">
                                        <div class="service-content text-end">
                                            <a href="#" class="h4 d-inline-block mb-3">Waste Management</a>
                                            <p class="mb-0">Efficient waste disposal and recycling strategies for a cleaner environment.</p>
                                        </div>
                                        <div class="ps-4">
                                            <div class="service-btn"><i class="fas fa-recycle text-white fa-2x"></i></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="service-item rounded p-4 mb-0">
                            <div class="row">
                                <div class="col-12">
                                    <div class="d-flex">
                                        <div class="service-content text-end">
                                            <a href="#" class="h4 d-inline-block mb-3">Carbon Footprint Analysis</a>
                                            <p class="mb-0">Assess and reduce emissions to achieve sustainability goals.</p>
                                        </div>
                                        <div class="ps-4">
                                            <div class="service-btn"><i class="fas fa-cloud text-white fa-2x"></i></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-xl-4 wow fadeInUp" data-wow-delay="0.3s">
                        <div class="bg-transparent">
                            <img src="img/earth.png" class="img-fluid w-100" alt="">
                        </div>
                    </div>
                    <div class="col-lg-6 col-xl-4 wow fadeInRight" data-wow-delay="0.2s">
                        <div class="service-item rounded p-4 mb-4">
                            <div class="row">
                                <div class="col-12">
                                    <div class="d-flex">
                                        <div class="pe-4">
                                            <div class="service-btn"><i class="fas fa-hand-holding-water text-white fa-2x"></i></div>
                                        </div>
                                        <div class="service-content">
                                            <a href="#" class="h4 d-inline-block mb-3">Sustainable Water Management</a>
                                            <p class="mb-0">Optimizing water usage to meet present needs while preserving water resources for future generations.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--<div class="service-item rounded p-4 mb-4">
                            <div class="row">
                                <div class="col-12">
                                    <div class="d-flex">
                                        <div class="pe-4">
                                            <div class="service-btn"><i class="fas fa-handshake text-white fa-2x"></i></div>
                                        </div>
                                        <div class="service-content">
                                            <a href="#" class="h4 d-inline-block mb-3">Corporate Sustainability Training</a>
                                            <p class="mb-0">Guiding organizations toward sustainable business practices.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>-->
                        <div class="service-item rounded p-4 mb-0">
                            <div class="row">
                                <div class="col-12">
                                    <div class="d-flex">
                                        <div class="pe-4">
                                            <div class="service-btn"><i class="fas fa-project-diagram text-white fa-2x"></i></div>
                                        </div>
                                        <div class="service-content">
                                            <a href="#" class="h4 d-inline-block mb-3">Green Project Planning</a>
                                            <p class="mb-0">Comprehensive planning and execution of environmentally-friendly projects.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Service End -->


        <!-- Products Start -->
        <!--<div class="container-fluid product py-5">
            <div class="container py-5">
                <div class="text-center mx-auto pb-5 wow fadeInUp" data-wow-delay="0.2s" style="max-width: 800px;">
                    <h4 class="text-uppercase text-primary">Our Products</h4>
                    <h1 class="display-3 text-capitalize mb-3">We Deliver Best Quality Bottle Packs.</h1>
                </div>
                <div class="row g-4 justify-content-center">
                    <div class="col-lg-6 col-xl-4 wow fadeInUp" data-wow-delay="0.2s">
                        <div class="product-item">
                            <img src="img/product-3.png" class="img-fluid w-100 rounded-top"  alt="Image">
                            <div class="product-content bg-light text-center rounded-bottom p-4">
                                <p>2L 1 Bottle</p>
                                <a href="#" class="h4 d-inline-block mb-3">Mineral Water Bottle</a>
                                <p class="fs-4 text-primary mb-3">$35:00</p>
                                <a href="#" class="btn btn-secondary rounded-pill py-2 px-4">Read More</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-xl-4 wow fadeInUp" data-wow-delay="0.4s">
                        <div class="product-item">
                            <img src="img/product-2.png" class="img-fluid w-100 rounded-top"  alt="Image">
                            <div class="product-content bg-light text-center rounded-bottom p-4">
                                <p>4L 2 Bottles</p>
                                <a href="#" class="h4 d-inline-block mb-3">RO Water Bottle</a>
                                <p class="fs-4 text-primary mb-3">$70:00</p>
                                <a href="#" class="btn btn-secondary rounded-pill py-2 px-4">Read More</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-xl-4 wow fadeInUp" data-wow-delay="0.6s">
                        <div class="product-item">
                            <img src="img/product-1.png" class="img-fluid w-100 rounded-top"  alt="Image">
                            <div class="product-content bg-light text-center rounded-bottom p-4">
                                <p>6L 3 Bottles</p>
                                <a href="#" class="h4 d-inline-block mb-3">UV Water Bottle</a>
                                <p class="fs-4 text-primary mb-3">$100:00</p>
                                <a href="#" class="btn btn-secondary rounded-pill py-2 px-4">Read More</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>-->
        <!-- Products End -->


        <!-- Blog Start -->
        <!--<div class="container-fluid blog pb-5 py-5">
            <div class="container pb-5">
                <div class="text-center mx-auto pb-5 wow fadeInUp" data-wow-delay="0.2s" style="max-width: 800px;">
                    <h4 class="text-uppercase text-primary">Our Blog</h4>
                    <h1 class="display-3 text-capitalize mb-3">Latest Blog & News</h1>
                </div>
                <div class="row g-4 justify-content-center">
                    <div class="col-lg-6 col-xl-4 wow fadeInUp" data-wow-delay="0.2s">
                        <div class="blog-item">
                            <div class="blog-img">
                                <img src="img/blog-1.jpg" class="img-fluid rounded-top w-100" alt="">
                                <div class="blog-date px-4 py-2"><i class="fa fa-calendar-alt me-1"></i> Jan 12 2025</div>
                            </div>
                            <div class="blog-content rounded-bottom p-4">
                                <a href="#" class="h4 d-inline-block mb-3">Lorem ipsum dolor sit amet consectetur adipisicing elit. Unde</a>
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel, officiis?</p>
                                <a href="#" class="fw-bold text-secondary">Read More <i class="fa fa-angle-right"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-xl-4 wow fadeInUp" data-wow-delay="0.4s">
                        <div class="blog-item">
                            <div class="blog-img">
                                <img src="img/blog-2.jpg" class="img-fluid rounded-top w-100" alt="">
                                <div class="blog-date px-4 py-2"><i class="fa fa-calendar-alt me-1"></i> Jan 12 2025</div>
                            </div>
                            <div class="blog-content rounded-bottom p-4">
                                <a href="#" class="h4 d-inline-block mb-3">Lorem ipsum dolor sit amet consectetur adipisicing elit. Unde</a>
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel, officiis?</p>
                                <a href="#" class="fw-bold text-secondary">Read More <i class="fa fa-angle-right"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-xl-4 wow fadeInUp" data-wow-delay="0.6s">
                        <div class="blog-item">
                            <div class="blog-img">
                                <img src="img/blog-3.jpg" class="img-fluid rounded-top w-100" alt="">
                                <div class="blog-date px-4 py-2"><i class="fa fa-calendar-alt me-1"></i> Jan 12 2025</div>
                            </div>
                            <div class="blog-content rounded-bottom p-4">
                                <a href="#" class="h4 d-inline-block mb-3">Lorem ipsum dolor sit amet consectetur adipisicing elit. Unde</a>
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel, officiis?</p>
                                <a href="#" class="fw-bold text-secondary">Read More <i class="fa fa-angle-right"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>-->
        <!-- Blog End -->


        <!-- Team Start -->
        <div class="container-fluid team pb-5 py-5">
            <div class="container pb-5">
                <div class="text-center mx-auto pb-5 wow fadeInUp" data-wow-delay="0.2s" style="max-width: 800px;">
                    <h4 class="text-uppercase text-primary">Our Team</h4>
                    <h1 class="display-3 text-capitalize mb-3">What is Really seo & How Can I Use It?</h1>
                </div>
                <div class="row g-4 justify-content-center">
                    <div class="col-md-6 col-lg-6 col-xl-3 wow fadeInUp" data-wow-delay="0.2s">
                        <div class="team-item p-4">
                            <div class="team-inner rounded">
                                <div class="team-img">
                                    <img src="img/suffian.jpg" class="img-fluid rounded-top w-100" alt="Image">
                                    <div class="team-share">
                                        <a class="btn btn-secondary btn-md-square rounded-pill text-white mx-1" href=""><i class="fas fa-share-alt"></i></a>
                                    </div>
                                    <div class="team-icon rounded-pill py-2 px-2">
                                        <a class="btn btn-secondary btn-sm-square rounded-pill mx-1" href=""><i class="fab fa-facebook-f"></i></a>
                                        <a class="btn btn-secondary btn-sm-square rounded-pill me-1" href=""><i class="fab fa-twitter"></i></a>
                                        <a class="btn btn-secondary btn-sm-square rounded-pill me-1" href=""><i class="fab fa-linkedin-in"></i></a>
                                        <a class="btn btn-secondary btn-sm-square rounded-pill me-1" href=""><i class="fab fa-instagram"></i></a>
                                    </div>
                                </div>
                                <div class="bg-light rounded-bottom text-center py-4">
                                    <h4 class="mb-3">Suffian Bakar</h4>
                                    <p class="mb-0">Founder</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-6 col-xl-3 wow fadeInUp" data-wow-delay="0.4s">
                        <div class="team-item p-4">
                            <div class="team-inner rounded">
                                <div class="team-img">
                                    <img src="img/amirul.jpg" class="img-fluid rounded-top w-100" alt="Image">
                                    <div class="team-share">
                                        <a class="btn btn-secondary btn-md-square rounded-pill text-white mx-1" href=""><i class="fas fa-share-alt"></i></a>
                                    </div>
                                    <div class="team-icon rounded-pill py-2 px-2">
                                        <a class="btn btn-secondary btn-sm-square rounded-pill mx-1" href=""><i class="fab fa-facebook-f"></i></a>
                                        <a class="btn btn-secondary btn-sm-square rounded-pill me-1" href=""><i class="fab fa-twitter"></i></a>
                                        <a class="btn btn-secondary btn-sm-square rounded-pill me-1" href=""><i class="fab fa-linkedin-in"></i></a>
                                        <a class="btn btn-secondary btn-sm-square rounded-pill me-1" href=""><i class="fab fa-instagram"></i></a>
                                    </div>
                                </div>
                                <div class="bg-light rounded-bottom text-center py-4">
                                    <h4 class="mb-3">Amirul Rosli</h4>
                                    <p class="mb-0">Co-Founder & CEO</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-6 col-xl-3 wow fadeInUp" data-wow-delay="0.6s">
                        <div class="team-item p-4">
                            <div class="team-inner rounded">
                                <div class="team-img">
                                    <img src="img/afif.jpg" class="img-fluid rounded-top w-100" alt="Image">
                                    <div class="team-share">
                                        <a class="btn btn-secondary btn-md-square rounded-pill text-white mx-1" href=""><i class="fas fa-share-alt"></i></a>
                                    </div>
                                    <div class="team-icon rounded-pill py-2 px-2">
                                        <a class="btn btn-secondary btn-sm-square rounded-pill mx-1" href=""><i class="fab fa-facebook-f"></i></a>
                                        <a class="btn btn-secondary btn-sm-square rounded-pill me-1" href=""><i class="fab fa-twitter"></i></a>
                                        <a class="btn btn-secondary btn-sm-square rounded-pill me-1" href=""><i class="fab fa-linkedin-in"></i></a>
                                        <a class="btn btn-secondary btn-sm-square rounded-pill me-1" href=""><i class="fab fa-instagram"></i></a>
                                    </div>
                                </div>
                                <div class="bg-light rounded-bottom text-center py-4">
                                    <h4 class="mb-3">Afif Anuar</h4>
                                    <p class="mb-0">Co-Founder & Manager</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Team End -->

        <!-- Testimonial Start -->
        <!--<div class="container-fluid testimonial pb-5">
            <div class="container pb-5">
                <div class="text-center mx-auto pb-5 wow fadeInUp" data-wow-delay="0.2s" style="max-width: 800px;">
                    <h4 class="text-uppercase text-primary">Testimonials</h4>
                    <h1 class="display-3 text-capitalize mb-3">Our clients reviews.</h1>
                </div>
                <div class="owl-carousel testimonial-carousel wow fadeInUp" data-wow-delay="0.3s">
                    <div class="testimonial-item text-center p-4">
                        <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Incidunt pariatur officiis quis molestias, sit iure sunt voluptatibus accusantium laboriosam dolore.
                        </p>
                        <div class="d-flex justify-content-center mb-4">
                            <img src="img/testimonial-1.jpg" class="img-fluid border border-4 border-primary" style="width: 100px; height: 100px; border-radius: 50px;" alt="">
                        </div>
                        <div class="d-block">
                            <h4 class="text-dark">Client Name</h4>
                            <p class="m-0 pb-3">Profession</p>
                            <div class="d-flex justify-content-center text-secondary">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                            </div>
                        </div>
                    </div>
                    <div class="testimonial-item text-center p-4">
                        <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Incidunt pariatur officiis quis molestias, sit iure sunt voluptatibus accusantium laboriosam dolore.
                        </p>
                        <div class="d-flex justify-content-center mb-4">
                            <img src="img/testimonial-2.jpg" class="img-fluid border border-4 border-primary" style="width: 100px; height: 100px; border-radius: 50px;" alt="">
                        </div>
                        <div class="d-block">
                            <h4 class="text-dark">Client Name</h4>
                            <p class="m-0 pb-3">Profession</p>
                            <div class="d-flex justify-content-center text-secondary">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                            </div>
                        </div>
                    </div>
                    <div class="testimonial-item text-center p-4">
                        <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Incidunt pariatur officiis quis molestias, sit iure sunt voluptatibus accusantium laboriosam dolore.
                        </p>
                        <div class="d-flex justify-content-center mb-4">
                            <img src="img/testimonial-3.jpg" class="img-fluid border border-4 border-primary" style="width: 100px; height: 100px; border-radius: 50px;" alt="">
                        </div>
                        <div class="d-block">
                            <h4 class="text-dark">Client Name</h4>
                            <p class="m-0 pb-3">Profession</p>
                            <div class="d-flex justify-content-center text-secondary">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                            </div>
                        </div>
                    </div>
                    <div class="testimonial-item text-center p-4">
                        <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Incidunt pariatur officiis quis molestias, sit iure sunt voluptatibus accusantium laboriosam dolore.
                        </p>
                        <div class="d-flex justify-content-center mb-4">
                            <img src="img/testimonial-3.jpg" class="img-fluid border border-4 border-primary" style="width: 100px; height: 100px; border-radius: 50px;" alt="">
                        </div>
                        <div class="d-block">
                            <h4 class="text-dark">Client Name</h4>
                            <p class="m-0 pb-3">Profession</p>
                            <div class="d-flex justify-content-center text-secondary">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>-->
        <!-- Testimonial End -->

        <!-- Footer Start -->
        <div class="container-fluid footer py-5 wow fadeIn" data-wow-delay="0.2s">
            <div class="container py-5">
                <!--<div class="row g-5 mb-5 align-items-center">
                    <div class="col-lg-7">
                        <div class="position-relative mx-auto">
                            <input class="form-control rounded-pill w-100 py-3 ps-4 pe-5" type="text" placeholder="Email address to Subscribe">
                            <button type="button" class="btn btn-secondary rounded-pill position-absolute top-0 end-0 py-2 px-4 mt-2 me-2">Subscribe</button>
                        </div>
                    </div>
                    <div class="col-lg-5">
                        <div class="d-flex align-items-center justify-content-center justify-content-lg-end">
                            <a class="btn btn-secondary btn-md-square rounded-circle me-3" href=""><i class="fab fa-facebook-f"></i></a>
                            <a class="btn btn-secondary btn-md-square rounded-circle me-3" href=""><i class="fab fa-twitter"></i></a>
                            <a class="btn btn-secondary btn-md-square rounded-circle me-3" href=""><i class="fab fa-instagram"></i></a>
                            <a class="btn btn-secondary btn-md-square rounded-circle me-0" href=""><i class="fab fa-linkedin-in"></i></a>
                        </div>
                    </div>
                </div>-->
                <div class="row g-5">
                    <div class="col-md-6 col-lg-6 col-xl-3">
                        <div class="footer-item d-flex flex-column">
                            <div class="footer-item">
                                <h3 class="text-white mb-4">EcoTech</h3>
                                <p class="mb-3">Innovative solutions for a sustainable future by adopting eco-friendly practices to build a greener future.</p>
                            </div>
                            <!--<div class="position-relative">
                                <input class="form-control rounded-pill w-100 py-3 ps-4 pe-5" type="text" placeholder="Enter your email">
                                <button type="button" class="btn btn-secondary rounded-pill position-absolute top-0 end-0 py-2 mt-2 me-2">SignUp</button>
                            </div>-->
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-6 col-xl-3">
                        <div class="footer-item d-flex flex-column">
                            <h4 class="text-white mb-4">About Us</h4>
                            <a href="aboutus.jsp"><i class="fas fa-angle-right me-2"></i> Why Choose Us</a>
                            <a href="sustainability_goals.jsp"><i class="fas fa-angle-right me-2"></i> Our Sustainability Goals</a>
                            <a href="contact_us.jsp"><i class="fas fa-angle-right me-2"></i> Contact Us</a>
                            <a href="tnc.jsp"><i class="fas fa-angle-right me-2"></i> Terms & Conditions</a>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-6 col-xl-3">
                        <div class="footer-item d-flex flex-column">
                            <h4 class="text-white mb-4">Business Hours</h4>
                            <div class="mb-3">
                                <h6 class="text-muted mb-0">Mon - Thurdays:</h6>
                                <p class="text-white mb-0">09.00 am to 06.00 pm</p>
                            </div>
                            <div class="mb-3">
                                <h6 class="text-muted mb-0">Friday:</h6>
                                <p class="text-white mb-0">09.00 am to 12.30 pm</p>
                                <p class="text-white mb-0">02.00 pm to 06.00 pm</p>
                            </div>
                            <div class="mb-3">
                                <h6 class="text-muted mb-0">Saturday, Sunday and Public Holiday:</h6>
                                <p class="text-white mb-0">Close</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-6 col-xl-3">
                        <div class="footer-item d-flex flex-column">
                            <h4 class="text-white mb-4">Contact Info</h4>
                            <a href="https://maps.app.goo.gl/ixSPJKwZSZcnkKeq7"><i class="fa fa-map-marker-alt me-2"></i> 13-1, Jalan Desa 9/4, Bandar Country Homes, 48000 Rawang, Selangor.</a>
                            <a href="mailto:info@ecotech.com.my"><i class="fas fa-envelope me-2"></i> info@ecotech.com.my</a>
                            <a href="mailto:ecotech24@gmail.com"><i class="fas fa-envelope me-2"></i> ecotech24@gmail.com</a>
                            <a href="tel:+012 345 67890"><i class="fas fa-phone me-2"></i> +603-8765 4310</a>
                            <a href="tel:+012 345 67890" class="mb-3"><i class="fas fa-print me-2"></i> +603-8765 5310</a>
                        </div>
                        <div class="d-flex align-items-center justify-content-center justify-content-lg-start">
                            <a class="btn btn-secondary btn-md-square rounded-circle me-3" href=""><i class="fab fa-facebook-f"></i></a>
                            <a class="btn btn-secondary btn-md-square rounded-circle me-3" href=""><i class="fab fa-twitter"></i></a>
                            <a class="btn btn-secondary btn-md-square rounded-circle me-3" href=""><i class="fab fa-instagram"></i></a>
                            <a class="btn btn-secondary btn-md-square rounded-circle me-0" href=""><i class="fab fa-linkedin-in"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer End -->
        
        <!-- Copyright Start -->
        <div class="container-fluid copyright py-4">
            <div class="container">
                <div class="row g-4 align-items-center">
                    <div class="col-md-6 text-center text-md-start mb-md-0">
                        <span class="text-body text-white"><i class="fas fa-copyright text-light me-2"></i>EcoTech - Sustainability Management System, All right reserved.</span>
                    </div>
                    <div class="col-md-6 text-center text-md-end text-body">
                        <!--/*** This template is free as long as you keep the below author’s credit link/attribution link/backlink. ***/-->
                        <!--/*** If you'd like to use the template without the below author’s credit link/attribution link/backlink, ***/-->
                        <!--/*** you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". ***/-->
                        Designed & Distributed By EcoTech Group
                    </div>
                </div>
            </div>
        </div>
        <!-- Copyright End -->


        <!-- Back to Top -->
        <a href="#" class="btn btn-secondary btn-lg-square rounded-circle back-to-top"><i class="fa fa-arrow-up"></i></a>   

        
    <!-- JavaScript Libraries -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/wow/wow.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/counterup/counterup.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>
    

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
    </body>

</html>
