<%-- 
    Document   : Cardetails
    Created on : Oct 26, 2023, 4:19:12 AM
    Author     : User
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">

        <title>Car Book - every car you want</title>

        <!-- Bootstrap core CSS -->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">


        <!-- Additional CSS Files -->
        <link rel="stylesheet" href="assets/css/fontawesome.css">
        <link rel="stylesheet" href="assets/css/templatemo-villa-agency.css">
        <link rel="stylesheet" href="assets/css/owl.css">
        <link rel="stylesheet" href="assets/css/animate.css">
        <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css"/>
        <!--
        
        https://templatemo.com/tm-591-villa-agency
        
        -->
    </head>

    <body>

        <!-- ***** Preloader Start ***** -->
        <div id="js-preloader" class="js-preloader">
            <div class="preloader-inner">
                <span class="dot"></span>
                <div class="dots">
                    <span></span>
                    <span></span>
                    <span></span>
                </div>
            </div>
        </div>
        <!-- ***** Preloader End ***** -->

        <div class="sub-header">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-md-8">
                        <ul class="info">
                            <li><i class="fa fa-envelope"></i> rentcar@company.com</li>
                                <c:if test="${sessionScope.acc != null}">
                                <li><i style="font-style: normal;font-weight: 300;font-family:serif">Hello ${sessionScope.acc.user}</i></li>
                                </c:if>
                        </ul>
                    </div>
                    <div class="col-lg-4 col-md-4" style="display: flex;padding-left: 10%">
                        <ul class="social-links">
                            <li><a href="#"><i class="fab fa-facebook"></i></a></li>
                            <li><a href="#" target="_blank"><i class="fab fa-twitter"></i></a></li>
                            <li><a href="#"><i class="fab fa-instagram"></i></a></li>
                        </ul>
                        <ul style="padding-left:40px;line-height: 30px">
                            <li>
                                <c:if test="${sessionScope.acc != null}">
                                    <a href="logout"><strong>Log out</strong></a>
                                </c:if>
                                <c:if test="${sessionScope.acc == null}">
                                    <a href="Signup.jsp"><strong>Sign up/</ strong></a>
                                    <a href="Login.jsp" style="font-weight: 400"><strong>Log in</strong></a>
                                </c:if>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <!-- ***** Header Area Start ***** -->
        <header class="header-area header-sticky">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <nav class="main-nav">
                            <!-- ***** Logo Start ***** -->
                            <a href="home" class="logo">
                                <img src="assets/images/logo.jpg" alt="alt" height="80px" weight="150px" style=justify-content: center/>
                            </a>
                            <ul style="display:flex">
                                <c:if test="${sessionScope.acc.isAdmin == 1}">
                                    <li>
                                        <a href="">Manage Account</a>
                                    </li>
                                </c:if>
                                <c:if test="${sessionScope.acc.isSell == 1}">
                                    <li>
                                        <a href="manage">Manage Car</a>
                                    </li>
                                </c:if>
                            </ul>
                            <!-- ***** Logo End ***** -->
                            <!-- ***** Menu Start ***** -->
                            <ul class="nav">
                                <li><a href="home">Home</a></li>
                                <li><a href="car">Cars</a></li>
                                <li><a href="property-details.html" class="active">Car Details</a></li>
                                <li><a href="home#contact-section">Contact Us</a></li>
                                <li><a href="Rentcar.jsp"><i class="fa fa-calendar"></i>Rent now</a></li>
                            </ul>   
                            <a class='menu-trigger'>
                                <span>Menu</span>
                            </a>
                            <!-- ***** Menu End ***** -->
                        </nav>
                    </div>
                </div>
            </div>
        </header>
        <!-- ***** Header Area End ***** -->

        <div class="single-property section">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8">
                        <div class="main-image">
                            <img src="${detail.image}" alt="">
                            <c:if test="${detail.image == null}">
                                <img style="height: 500px"src="assets/images/cardetails11.jpg" alt="">
                            </c:if>
                        </div>
                        <div class="main-content">
                            <!-- foreach -->
                            <h3 style="padding-left: 37%;padding-top: 10px;padding-bottom: 20px;color: #ff6633">${detail.cname}</h3>
                            <h6 style="font-size: 18px;text-align: center"> ${detail.deepdescription} </h6>
                        </div> 
                    </div>
                    <div class="col-lg-4">
                        <div class="info-table">
                            <ul>
                                <li>
                                    <h4>${detail.cname}<br><span>Name</span></h4>
                                    <c:if test="${detail.cname == null}">
                                        <h4>Every car you want</h4>
                                    </c:if>
                                </li>
                                <li>
                                    <h4>${detail.dailyprice}<br><span>Rent Price A Day</span></h4>
                                    <c:if test="${detail.dailyprice == null}">
                                        <h4>Always good price to deal</h4>
                                    </c:if>
                                </li>
                                <li>
                                    <h4>${detail.description}<br><span>Summarize</span></h4>
                                    <c:if test="${detail.description == null}">
                                        <h4>Fast and safe</h4>
                                    </c:if>
                                </li>
                                <c:if test="${detail.description == null}">
                                    <li>
                                        <h4></h4>
                                    </li>
                                    </c:if>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="section best-deal">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4">
                        <div class="section-heading">
                            <h6>| Best Deal</h6>
                            <h2>Find Your Best Deal Right Now!</h2>
                        </div>
                    </div>
                    <div class="col-lg-12">
                        <div class="tabs-content">
                            <div class="row">
                                <div class="nav-wrapper ">
                                    <ul class="nav nav-tabs" role="tablist">
                                        <li class="nav-item" role="presentation">
                                            <button class="nav-link active" id="appartment-tab" data-bs-toggle="tab" data-bs-target="#appartment" type="button" role="tab" aria-controls="appartment" aria-selected="true">Honda Odyssey</button>
                                        </li>
                                        <li class="nav-item" role="presentation">
                                            <button class="nav-link" id="villa-tab" data-bs-toggle="tab" data-bs-target="#villa" type="button" role="tab" aria-controls="villa" aria-selected="false">Toyota Sienna</button>
                                        </li>
                                        <li class="nav-item" role="presentation">
                                            <button class="nav-link" id="penthouse-tab" data-bs-toggle="tab" data-bs-target="#penthouse" type="button" role="tab" aria-controls="penthouse" aria-selected="false">Toyota Corolla</button>
                                        </li>
                                    </ul>
                                </div>              
                                <div class="tab-content" id="myTabContent">
                                    <div class="tab-pane fade show active" id="appartment" role="tabpanel" aria-labelledby="appartment-tab">
                                        <div class="row">
                                            <div class="col-lg-3">
                                                <div class="info-table">
                                                    <ul>
                                                        <li>Car Type <span>Minivan</span></li>
                                                        <li>Old Price <span>100$/Day</span></li>
                                                        <li>New Price <span>80$/Day</span></li>
                                                        <li>Available <span>Yes</span></li>
                                                        <li>Year <span>2023</span></li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="col-lg-6">
                                                <img src="assets/images/carsale1.jpg" alt="">
                                            </div>
                                            <div class="col-lg-3">
                                                <h4>All Info About This Car</h4>
                                                <p>The Honda Odyssey is a reliable and spacious minivan, perfect for family trips. It offers comfortable seating, advanced safety features, and ample cargo space for all your needs.</p>
                                                <div class="icon-button">
                                                    <a href="#"><i class="fa fa-calendar"></i> Rent now</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="villa" role="tabpanel" aria-labelledby="villa-tab">
                                        <div class="row">
                                            <div class="col-lg-3">
                                                <div class="info-table">
                                                    <ul>
                                                        <li>Car Type <span>Minivan</span></li>
                                                        <li>Old Price <span>120$/Day</span></li>
                                                        <li>New Price <span>85$/Day</span></li>
                                                        <li>Available <span>Yes</span></li>
                                                        <li>Year <span>2023</span></li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="col-lg-6">
                                                <img src="assets/images/carsale2.jpg" alt="">
                                            </div>
                                            <div class="col-lg-3">
                                                <h4>All Info About This Car</h4>
                                                <p>The Toyota Sienna is a stylish and efficient minivan with a focus on modern design and advanced technology. It provides a smooth and comfortable ride for families on the go.
                                                <div class="icon-button">
                                                    <a href="#"><i class="fa fa-calendar"></i> Rent now</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="penthouse" role="tabpanel" aria-labelledby="penthouse-tab">
                                        <div class="row">
                                            <div class="col-lg-3">
                                                <div class="info-table">
                                                    <ul>
                                                        <li>Car Type <span>Compact</span></li>
                                                        <li>Old Price <span>80$/Day</span></li>
                                                        <li>New Price <span>60$/Day</span></li>
                                                        <li>Available <span>Yes</span></li>
                                                        <li>Year <span>2021</span></li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="col-lg-6">
                                                <img src="assets/images/carsale4.jpg" alt="">
                                            </div>
                                            <div class="col-lg-3">
                                                <h4>All Info About This Car</h4>
                                                <p>Compact car for city driving', 'The Toyota Corolla is a compact car that excels in fuel efficiency and maneuverability. Ideal for city driving, it offers a practical and reliable transportation solution with modern features.
                                                <div class="icon-button">
                                                    <a href="#"><i class="fa fa-calendar"></i> Rent now</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <footer class="footer-no-gap">
            <div class="container">
                <div class="col-lg-12">
                    <p>Copyright © 2048 Villa Agency Co., Ltd. All rights reserved. 

                        Design: <a rel="nofollow" href="https://templatemo.com" target="_blank">TemplateMo</a> Distribution: <a href="https://themewagon.com">ThemeWagon</a></p>
                </div>
            </div>
        </footer>

        <!-- Scripts -->
        <!-- Bootstrap core JavaScript -->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/js/isotope.min.js"></script>
        <script src="assets/js/owl-carousel.js"></script>
        <script src="assets/js/counter.js"></script>
        <script src="assets/js/custom.js"></script>

    </body>
</html>
