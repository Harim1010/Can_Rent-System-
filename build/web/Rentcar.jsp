<%-- 
    Document   : Cardetails
    Created on : Oct 26, 2023, 4:19:12 AM
    Author     : User
--%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="dao.DAO" %>
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
    <style>
        .site-section {
            padding: 2.5em 0;
        }
        @media (min-width: 768px) {
            .site-section {
                padding: 5em 0;
            }
        }
        .site-section.site-section-sm {
            padding: 4em 0;
        }

        .site-section-heading {
            font-size: 30px;
            color: #25262a;
            position: relative;
        }
        .site-section-heading:before {
            content: "";
            left: 0%;
            top: 0;
            position: absolute;
            width: 40px;
            height: 2px;
            background: #7971ea;
        }
        .site-section-heading.text-center:before {
            content: "";
            left: 50%;
            top: 0;
            -webkit-transform: translateX(-50%);
            -ms-transform: translateX(-50%);
            transform: translateX(-50%);
            position: absolute;
            width: 40px;
            height: 2px;
            background: #7971ea;
        }
    </style>
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
                                <li><a href="property-details.html" >Car Details</a></li>
                                <li><a href="home#contact-section">Contact Us</a></li>
                                <li><a href="Rentcar.jsp"><i class="fa fa-calendar" class="is_active"></i>Rent now</a></li>
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

        <div class="site-section section best-deal">
            <div class="container">
                <div class="row mb-5">
                    <form class="col-md-12" method="post">
                        <div class="site-blocks-table">
                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <th class="">Image</th>
                                        <th class="">Car Name</th>
                                        <th class="">Price/Day</th>
                                        <th class="">Start Date</th>
                                        <th class="">Return Date</th>
                                        <th class="">Total</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td class="">
                                            <img src="${car.image}" alt="Image" class="img-fluid" style="width: 180px;height: 100px">
                                        </td>
                                        <td class="">
                                            <h2 class="h5 text-black">${car.cname}</h2>
                                        </td>
                                        <td name="price">${car.dailyprice}$</td>
                                        <td>
                                            <div style="max-width: 120px;">
                                                <div class="input-group-prepend">
                                                    <input name="startdate" type="date" class="date-calculation" > 
                                                </div>
                                            </div>

                                        </td>
                                        <td>
                                            <div style="max-width: 120px;">
                                                <div class="input-group-prepend">
                                                    <input name="returndate" type="date" class="date-calculation"> 
                                                </div>
                                            </div>
                                        </td>
                                        <td>
                                            <div style="max-width: 120px;">
                                                <div class="total-cell">
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </form>
                </div>

                <div class="row">
                    <div class="col-md-6">
                        <div class="row mb-5">
                            <div class="col-md-6 mb-3 mb-md-0">
                                <a class="btn btn-primary btn-sm btn-block" href="car">Rent Other Car</a>
                            </div>
                        </div>
                    </div>
                    <!--
                    <div class="col-md-6 pl-5">
                        <div class="row justify-content-end">
                            <div class="col-md-7">
                                <div class="row">
                                    <div class="col-md-12 text-right border-bottom mb-5">
                                        <h3 class="text-black h4 text-uppercase">Cart Totals</h3>

                                    </div>
                                </div>
                                <div class="col-md-6 text-right">
                                    <strong class="total-cell"></strong>
                                </div>
                            </div>
                            
                            <div class="row">
                                <div class="col-md-12">
                                    <button class="btn btn-primary btn-lg py-3 btn-block" onclick="window.location = 'checkout.html'">Proceed To Checkout</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    -->
                </div>
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
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script>
                                            document.addEventListener('DOMContentLoaded', function () {
                                                var dateCalculationInputs = document.querySelectorAll('.date-calculation');

                                                dateCalculationInputs.forEach(function (input) {
                                                    input.addEventListener('input', function () {
                                                        updateTotal(this.closest('tr'));
                                                    });
                                                });

                                                function updateTotal(row) {
                                                    var startDateInput = row.querySelector('input[name="startdate"]');
                                                    var returnDateInput = row.querySelector('input[name="returndate"]');
                                                    var price = parseFloat(row.querySelector('[name="price"]').textContent.replace('$', ''));
                                                    var totalCell = row.querySelector('.total-cell');

                                                    var startDate = new Date(startDateInput.value);
                                                    var returnDate = new Date(returnDateInput.value);

                                                    if (!isNaN(startDate.getTime()) && !isNaN(returnDate.getTime())) {
                                                        var days = (returnDate - startDate) / (1000 * 60 * 60 * 24);
                                                        var total = days * price;
                                                        if(days < 0){
                                                            return;
                                                        }
                                                        totalCell.textContent = total.toFixed(2) + '$';
                                                    } else {
                                                        totalCell.textContent = '';
                                                    }

                                                    updateCartTotal();
                                                }

                                                function updateCartTotal() {
                                                    var cartTotal = 0;
                                                    var totalCells = document.querySelectorAll('.total-cell');

                                                    totalCells.forEach(function (cell) {
                                                        var total = parseFloat(cell.textContent.replace('$', ''));
                                                        if (!isNaN(total)) {
                                                            cartTotal += total;
                                                        }
                                                    });

                                                    var subtotalAmount = document.querySelector('.subtotal-amount');
                                                    var totalAmount = document.querySelector('.total-amount');

                                                    if (subtotalAmount && totalAmount) {
                                                        subtotalAmount.textContent = cartTotal.toFixed(2) + '$';
                                                        totalAmount.textContent = cartTotal.toFixed(2) + '$';
                                                    }
                                                }
                                            });
</script>
</body>
</html>
