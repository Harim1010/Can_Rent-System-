<%-- 
    Document   : Car
    Created on : Oct 26, 2023, 4:19:02 AM
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

        <title>Villa Agency - Property Listing by TemplateMo</title>

        <!-- Bootstrap core CSS -->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- Additional CSS Files -->
        <link rel="stylesheet" href="assets/css/fontawesome.css">
        <link rel="stylesheet" href="assets/css/templatemo-villa-agency.css">
        <link rel="stylesheet" href="assets/css/owl.css">
        <link rel="stylesheet" href="assets/css/animate.css">
        <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css"/>
        <!--
        
        TemplateMo 591 villa agency
        
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
                                <li><a href="car" class="active">Cars</a></li>
                                <li><a href="detail">Car Details</a></li>
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
        <div class="section properties" style="padding-top: 2px">
            <div class="container">
                <ul class="properties-filter">
                    <li>
                        <a href="car?type_id=0" >Show All</a>
                    </li>
                    <c:forEach items="${list1}" begin="0" end="3" var="o">
                        <li>
                            <a href="car?type_id=${o.type_id}">${o.car_type}</a>
                        </li>
                    </c:forEach>
                </ul>
                <div class="row properties-box">
                    <div class="align-self-center mb-30 properties-items adv row">
                        <c:forEach items="${list2}" var="o">
                            <div class="col-lg-4 col-md-6">
                                <div class="item">
                                    <a href="detail?pid=${o.vehicle_id}"><img src= "${o.image}" alt="" width="141,54" height="236"></a>
                                    <span class="category">${o.cname}</span>
                                    <h6>${o.dailyprice}$ per day</h6>
                                    <p>
                                        ${o.year}
                                        ${o.description}
                                    </p>
                                    <div class="main-button">
                                        <a href="rent?pid=${o.vehicle_id}&aid=${id}">Rent now</a>
                                        <a href="detail?pid=${o.vehicle_id}">Review before renting</a>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <ul class="pagination">
                            <li><a href="#">1</a></li>
                            <li><a class="is_active" href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#">>></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <footer>
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

