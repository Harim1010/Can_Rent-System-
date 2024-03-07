<%-- 
    Document   : Home
    Created on : Oct 24, 2023, 6:31:52 PM
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
                                <li><a href="home" class="active">Home</a></li>
                                <li><a href="car">Cars</a></li>
                                <li><a href="detail">Car Details</a></li>
                                <li><a href="#contact-section">Contact Us</a></li>
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

        <div class="main-banner">
            <div class="owl-carousel owl-banner">
                <div class="item item-1">
                    <div class="header-text">
                        <span class="category">Toronto, <em>Canada</em></span>
                        <h2>Hurry!<br>Get the Best Car for you</h2>
                    </div>
                </div>
                <div class="item item-2">
                    <div class="header-text">
                        <span class="category">Melbourne, <em>Australia</em></span>
                        <h2>Be Quick!<br>Get the best villa in town</h2>
                    </div>
                </div>
                <div class="item item-3">
                    <div class="header-text">
                        <span class="category">Miami, <em>South Florida</em></span>
                        <h2>Act Now!<br>Get the highest level penthouse</h2>
                    </div>
                </div>
            </div>
        </div>

        <div class="featured section">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4">
                        <div class="left-image">
                            <img src="assets/images/handshake.png" alt="Handshake" style="max-width: 80px; padding-left: 20px;margin-left:5px"></li> 
                        </div>
                        <div class="description" style="">
                            Select to deal
                        </div>
                    </div>
                    <div class="col-lg-5">
                        <div class="section-heading">
                            <h6>| Featured</h6>
                            <h2>Best Car Rental</h2>
                        </div>
                        <div class="accordion" id="accordionExample">
                            <div class="accordion-item">
                                <h2 class="accordion-header" id="headingOne">
                                    <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                        Best useful links ?
                                    </button>
                                </h2>
                                <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                                    <div class="accordion-body">
                                        Get <strong>the best car</strong> website template in HTML CSS and Bootstrap for your business. TemplateMo provides you the <a href="https://www.google.com/search?q=best+free+css+templates" target="_blank">best free CSS templates</a> in the world. Please tell your friends about it.</div>
                                </div>
                            </div>
                            <div class="accordion-item">
                                <h2 class="accordion-header" id="headingTwo">
                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                        How does this work ?
                                    </button>
                                </h2>
                                <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
                                    <div class="accordion-body">
                                        Dolor <strong>almesit amet</strong>, consectetur adipiscing elit, sed doesn't eiusmod tempor incididunt ut labore consectetur <code>adipiscing</code> elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                                    </div>
                                </div>
                            </div>
                            <div class="accordion-item">
                                <h2 class="accordion-header" id="headingThree">
                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                        Why is Villa Agency the best ?
                                    </button>
                                </h2>
                                <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
                                    <div class="accordion-body">
                                        Dolor <strong>almesit amet</strong>, consectetur adipiscing elit, sed doesn't eiusmod tempor incididunt ut labore consectetur <code>adipiscing</code> elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="info-table">
                            <ul>
                                <li>
                                    <img src="assets/images/info-icon-01.png" alt="" style="max-width: 52px;">
                                    <h4>All Car You Want<br><span>Car</span></h4>
                                </li>
                                <li>
                                    <img src="assets/images/info-icon-02.png" alt="" style="max-width: 52px;">
                                    <h4>Contract<br><span>Contract Ready</span></h4>
                                </li>
                                <li>
                                    <img src="assets/images/info-icon-03.png" alt="" style="max-width: 52px;">
                                    <h4>Payment<br><span>Payment Process</span></h4>
                                </li>
                                <li>
                                    <img src="assets/images/info-icon-04.png" alt="" style="max-width: 52px;">
                                    <h4>Safety<br><span>24/7 Under Control</span></h4>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="container site-section mb-5">
            <div class="row justify-content-center text-center">
                <div class="col-7 text-center mb-5">
                    <h2 style="color:#ff3333;padding-top: 30px">How it works</h2>
                </div>
            </div>
            <div class="how-it-works d-flex" style="display: flex;justify-content: center">
                <div class="step" style="display: flex;flex-direction: column;justify-content: center;text-align: center">

                    <span class="number" style="display:inline-block;border: #007bff solid 3px;border-radius: 100%;padding:12px;font-size: 25px"><span>01</span></span>
                    <span class="caption" style="padding-top: 5px">Time</span>  
                </div>
                <div class="step" style="display: flex;flex-direction: column;justify-content: center;text-align: center;padding-left: 40px">

                    <span class="number" style="display:inline-block;border: #007bff solid 3px;border-radius: 100%;padding:10px;font-size: 25px"><span>02</span></span>
                    <span class="caption" style="padding-top: 5px">Car</span>
                </div>
                <div class="step" style="display: flex;flex-direction: column;justify-content: center;text-align: center;padding-left: 40px">

                    <span class="number" style="display:inline-block;border: #007bff solid 3px;border-radius: 100%;padding:10px;font-size: 25px"><span>03</span></span>
                    <span class="caption" style="padding-top: 5px">Details</span>
                </div>
                <div class="step" style="display: flex;flex-direction: column;justify-content: center;text-align: center;padding-left: 40px">

                    <span class="number" style="display:inline-block;border: #007bff solid 3px;border-radius: 100%;padding:10px;font-size: 25px"><span>04</span></span>
                    <span class="caption" style="padding-top: 5px">Check</span>
                </div>
                <div class="step" style="display: flex;flex-direction: column;justify-content: center;text-align: center;padding-left: 40px">

                    <span class="number" style="display:inline-block;border: #007bff solid 3px;border-radius: 100%;padding:10px;font-size: 25px"><span>05</span></span>
                    <span class="caption" style="padding-top: 5px">Done</span>
                </div>
                <div class="step" style="display: flex;flex-direction: column;justify-content: center;text-align: center">

                    <span class="number" style="display:inline-block;border: #007bff solid 3px;border-radius: 100%;padding:12px;font-size: 25px"><span>06</span></span>
                    <span class="caption" style="padding-top: 5px">More </span>  
                </div>

            </div>
        </div>
        <div class="fun-facts">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="wrapper">
                            <div class="row">
                                <div class="col-lg-4">
                                    <div class="counter">
                                        <h2 class="timer count-title count-number" data-to="50" data-speed="1000"></h2>
                                        <p class="count-text ">Years<br>Experienced</p>
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="counter">
                                        <h2 class="timer count-title count-number" data-to="1100" data-speed="1000"></h2>
                                        <p class="count-text ">Total<br>Cars</p>
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="counter">
                                        <h2 class="timer count-title count-number" data-to="2000" data-speed="1000"></h2>
                                        <p class="count-text ">Happy<br>Customers</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="properties section">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 offset-lg-4">
                        <div class="section-heading text-center">
                            <h6>| Popular Car</h6>
                            <h2>We Provide The Best Car You Like</h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <c:forEach items="${list}" var="o">
                        <div class="col-lg-4 col-md-6">
                            <div class="item">
                                <a href="detail?pid=${o.vehicle_id}"><img src= "${o.image}" alt="" width="141,54" height="236"></a>
                                <span class="category">${o.cname}</span>
                                <h6>${o.dailyprice}$ per day</h6>
                                <p style="text-align: center;font-weight: 600">
                                    ${o.year}:
                                    ${o.description}
                                </p>
                                <div class="main-button">
                                    <a href="detail?pid=${o.vehicle_id}">Review before renting</a>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>

<div class="contact section" id="contact-section">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 offset-lg-4">
                <div class="section-heading text-center">
                    <h6>| Contact Us</h6>
                    <h3 style="margin-top:20px;font-size: 35px">We welcome all of your comments and suggestions</h3>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="contact-content">
    <div class="container">
        <div class="row">
            <div class="col-lg-7">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="item phone">
                            <img src="assets/images/phone-icon.png" alt="" style="max-width: 52px;">
                            <h6>010-001-0011<br><span>Phone Number</span></h6>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="item email">
                            <img src="assets/images/email-icon.png" alt="" style="max-width: 52px;">
                            <h6>hoan@123.com<br><span>Business Email</span></h6>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-5">
                <form id="contact-form" action="" method="post">
                    <div class="row">
                        <div class="col-lg-12">
                            <fieldset>
                                <label for="name">Full Name</label>
                                <input type="name" name="name" id="name" placeholder="Your Name..." autocomplete="on" required>
                            </fieldset>
                        </div>
                        <div class="col-lg-12">
                            <fieldset>
                                <label for="email">Email Address</label>
                                <input type="text" name="email" id="email" pattern="[^ @]*@[^ @]*" placeholder="Your E-mail..." required="">
                            </fieldset>
                        </div>
                        <div class="col-lg-12">
                            <fieldset>
                                <label for="subject">Subject</label>
                                <input type="subject" name="subject" id="subject" placeholder="Subject..." autocomplete="on" >
                            </fieldset>
                        </div>
                        <div class="col-lg-12">
                            <fieldset>
                                <label for="message">Message</label>
                                <textarea name="message" id="message" placeholder="Your Message"></textarea>
                            </fieldset>
                        </div>
                        <div class="col-lg-12">
                            <fieldset>
                                <button type="submit" id="form-submit" class="orange-button">Send Message</button>
                            </fieldset>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<footer>
    <div class="container">
        <div class="col-lg-8" style="margin:auto">
            <p>Copyright © 2048 Villa Agency Co., Ltd. All rights reserved. 
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
