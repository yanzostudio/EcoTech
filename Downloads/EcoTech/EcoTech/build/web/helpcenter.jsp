<%-- 
    Document   : helpcenter
    Created on : Jan 23, 2025, 12:28:16 AM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <title>EcoTech - Help Center</title>
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
                    <!--<h1 class="text-primary"><!--<i class="fas fa-hand-holding-water me-3"></i>--><!--EcoTech</h1>-->
                    <img src="img/EcoTech Logo.png" alt="Logo" width="130" height="28">
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                    <span class="fa fa-bars"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarCollapse">
                    <div class="navbar-nav ms-2 py-0">
                        <!--<a href="index.html" class="nav-item nav-link active">Home</a>--->
                        <div class="nav-item dropdown">
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
                                <!--<a href="testimonials.html" class="dropdown-item">Testimonials</a>-->
                                <a href="faq.jsp" class="dropdown-item">FAQ</a>
                            </div>
                        </div><div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Support</a>
                            <div class="dropdown-menu m-0">
                                <a href="helpcenter.jsp" class="dropdown-item">Help Center</a>
                                <!--<a href="documentation.html" class="dropdown-item">Documentation</a>-->
                                <a href="contact_us.jsp" class="dropdown-item">Contact Us</a>
                                <!--<a href="training.html" class="dropdown-item">Training</a>-->
                            </div>
                        </div>
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">About</a>
                            <div class="dropdown-menu m-0">
                                <a href="aboutus.jsp" class="dropdown-item">About Us</a>
                                <a href="sustainability_goals.jsp" class="dropdown-item">Sustainability Goals</a>
                                <!--<a href="community_impact.jsp" class="dropdown-item">Community Impact</a>-->
                                <!--<a href="certification.html" class="dropdown-item">Certifications</a>-->
                            </div>
                        </div>
                    </div>
                    <div class="d-none d-xl-flex me-3">
                        <div class="d-flex flex-column pe-3 border-end border-primary">
                            <!--<span class="text-body">Get Free Delivery</span>
                            <a href="tel:+4733378901"><span class="text-primary">Free: + 0123 456 7890</span></a>-->
                        </div>
                    </div>
                    <div style="padding-left: 300px;"></div>
                    <button class="btn btn-primary btn-md-square d-flex flex-shrink-0 mb-3 mb-lg-0 rounded-circle me-3" data-bs-toggle="modal" data-bs-target="#searchModal"><i class="fas fa-search"></i></button>
                    <a href="register.jsp" class="btn btn-primary rounded-pill d-inline-flex flex-shrink-0 py-2 px-4">Register</a>
                    <a href="login.jsp" class="btn btn-primary rounded-pill d-inline-flex flex-shrink-0 py-2 px-4 ms-3">Login</a>
                </div>
            </nav>

            <!-- Header Start -->
            <div class="container-fluid bg-breadcrumb">
                <div class="container text-center py-5" style="max-width: 900px;">
                    <h4 class="text-white display-4 mb-4 wow fadeInDown" data-wow-delay="0.1s">Help Center</h4>
                    <ol class="breadcrumb d-flex justify-content-center mb-0 wow fadeInDown" data-wow-delay="0.3s">
                        <li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
                        <li class="breadcrumb-item"><a href="support.jsp">Support</a></li>
                        <li class="breadcrumb-item active text-primary">Help Center</li>
                    </ol>    
                </div>
            </div>
            <!-- Header End -->

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

        <!-- content -->
        <!-- Help Center Start -->
<div class="container-fluid bg-light py-5">
    <div class="container py-5">
        <div class="row justify-content-center">
            <!-- Help Center Heading -->
            <div class="col-lg-8 text-center wow fadeInUp" data-wow-delay="0.2s">
                <h2 class="display-4 mb-4">Help Center</h2>
                <p class="mb-4">Welcome to our Help Center! Find answers to common questions, resources on sustainability practices, and get in touch with our support team for more assistance.</p>
            </div>
        </div>

        <!-- FAQ Section -->
        <div class="row g-4">
            <!-- FAQ 1 -->
            <div class="col-lg-4 wow fadeInUp" data-wow-delay="0.4s">
                <div class="card shadow border-0">
                    <div class="card-header bg-primary text-white">
                        <h5 class="mb-0">How to Reduce Energy Consumption?</h5>
                    </div>
                    <div class="card-body">
                        <p>Learn effective ways to minimize energy waste through smart appliances, energy audits, and behavioral changes.</p>
                        <a href="#" class="btn btn-primary">Learn More</a>
                    </div>
                </div>
            </div>

            <!-- FAQ 2 -->
            <div class="col-lg-4 wow fadeInUp" data-wow-delay="0.6s">
                <div class="card shadow border-0">
                    <div class="card-header bg-primary text-white">
                        <h5 class="mb-0">How Can I Monitor My Sustainability Efforts?</h5>
                    </div>
                    <div class="card-body">
                        <p>Use our sustainability tracking tools to measure energy efficiency, water usage, waste reduction, and carbon emissions.</p>
                        <a href="#" class="btn btn-primary">Get Started</a>
                    </div>
                </div>
            </div>

            <!-- FAQ 3 -->
            <div class="col-lg-4 wow fadeInUp" data-wow-delay="0.8s">
                <div class="card shadow border-0">
                    <div class="card-header bg-primary text-white">
                        <h5 class="mb-0">How to Implement Renewable Energy?</h5>
                    </div>
                    <div class="card-body">
                        <p>Learn how to integrate solar, wind, and other renewable energy sources into your home or business for a sustainable future.</p>
                        <a href="#" class="btn btn-primary">Explore Solutions</a>
                    </div>
                </div>
            </div>
        </div>

        <!-- Contact Support Section -->
        <div class="row justify-content-center mt-5">
            <div class="col-lg-8 text-center wow fadeInUp" data-wow-delay="1s">
                <h3 class="display-5 mb-4">Still Need Help?</h3>
                <p>If you cannot find the answer you're looking for, feel free to contact our support team for personalized assistance.</p>
                <a href="contact_us.jsp" class="btn btn-primary py-3 px-5">Contact Support</a>
            </div>
        </div>
    </div>
</div>
<!-- Help Center End -->



        

        <!-- Footer Start -->
        <div class="container-fluid footer py-5 wow fadeIn" data-wow-delay="0.2s">
            <div class="container py-5">
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