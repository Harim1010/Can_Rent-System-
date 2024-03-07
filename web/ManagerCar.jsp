<%-- 
    Document   : ManagerCar
    Created on : Oct 28, 2023, 9:17:06 AM
    Author     : User
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.io.*,java.util.*" %>
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
        <link rel="stylesheet"href="https://unpkg.com/swiper@7/swiper-bundle.min.css"/>
        <link rel="stylesheet" href="assets/css/formpopup.css">
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
                        </ul>
                    </div>
                    <div class="col-lg-4 col-md-4">
                        <ul class="social-links">
                            <li><a href="#"><i class="fab fa-facebook"></i></a></li>
                            <li><a href="" target="_blank"><i class="fab fa-twitter"></i></a></li>
                            <li><a href="#"><i class="fab fa-linkedin"></i></a></li>
                            <li><a href="#"><i class="fab fa-instagram"></i></a></li>
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

        <div class="section properties">
            <div class="container">
                <ul class="properties-filter">
                    <li>
                        <a href="manage?tid=0">Your Own Cars</a>
                    </li>

                    <li>
                        <a href="manage?tid=1">Rent Other Cars</a>
                    </li>   
                </ul>
                <div class="row properties-box">
                    <c:forEach items="${list}" var="o">
                        <div class="col-lg-4 col-md-6 align-self-center mb-30 properties-items col-md-6 adv">
                            <div class="item">
                                <a href="property-details.html"><img src= "${o.image}" alt="" width="141,54" height="236"></a>
                                <span class="category">${o.cname}</span>
                                <h6>${o.dailyprice}$ per day</h6>
                                <h4><a href="property-details.html">${o.year}</a></h4>
                                <ul> 
                                    <li>${o.description}</li>
                                </ul>
                                <div class="main-button">
                                    <c:if test="${a == 0}">
                                        <a href="edit?pid=${o.vehicle_id}" style="padding: 0px 38px 0px 38px">Edit</a>
                                        <a href="delete?cid=${o.vehicle_id}">Delete</a>
                                    </c:if>
                                    <c:if test="${a == 1}">
                                        <a href="rent?pid=${o.vehicle_id}" style="padding: 0px 38px 0px 38px">Rent</a>
                                        <a href="detail?pid=${o.vehicle_id}">Details</a>
                                    </c:if>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                    <c:if test="${a == 0}">
                        <div class="col-lg-4 col-md-6 align-self-center mb-30 properties-items col-md-6 adv">
                            <div class="item" style="padding-right:70px;padding-left: 70px;margin-bottom: 0;padding-bottom: 0;width: 70%;padding-top: 70px">
                                    <a style="padding-bottom: 20px" class="open-button" onclick="openForm()"><img src= "assets/images/add.png" alt="" width="30" height="150" style="border: #cccccc solid 2px;border-radius: 100%"></a>
                                <h7 style="color:#ff6666;font-size: 20px;padding-left: 10px;padding-top: 20px"> Add New Car </h7>
                            </div>
                        </div>
                    </c:if>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <ul class="pagination">
                            <li><a class="is_active" href="#">1</a></li>
                            <li><a class="is_active" href="#">2</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="form-popup" id="myForm" style="height: 400px">
            <form action="add" class="form-container" style="padding: 10px" method="post" >
                <h1 style="text-align: center;color: #0033ff" >New Car</h1>
                <div style="display: inline-flex; flex-direction: column;width: 100%">
                    <div>
                        <label><b>Car Name: </b></label>
                        <input style="width: 30%" type="text" name="carname" required>
                        <label style="justify-content: center;padding-left: 17%"><b>Rental Price Per Day: </b></label>
                        <input type="text" name="price" style="width: 30%" required>
                    </div>

                </div>
                <div style="width: 100%;text-align: center">
                    <div style="display: inline-flex;flex-direction: row;width: 100%;;text-align: center">
                        <label style="justify-content: center;line-height: 60px;padding-right: 13px"><b>Car Type: </b></label>
                        <select name="cartype" class="form-select" aria-label="Default select example" style="width: 30%;height: 54px">
                            <c:forEach items="${list2}" var="o">
                                <!-- options la value cua the select -->
                                <option value="${o.type_id}" style="">${o.car_type}</option>
                            </c:forEach>
                        </select>
                        <label style="justify-content: center;line-height: 60px;padding-left: 18%;padding-right:12px"><b>Manufacture Year: </b></label>
                        <input type="text" name="year" style="width: 30%" required>
                    </div>
                </div>
                <div style="display: inline-flex; flex-direction: column;width: 100%">
                    <div style="width: 100% ">
                        <label style="padding-right: 30px"><b>Image:</b></label>
                        <input name="image" type="text" style="width: 30%" >
                        <label style="padding-left: 18%;padding-right:9px"><b>Some Description: </b></label>
                        <input type="text" name="description" style="width: 30%">
                    </div>
                </div>
                <div style="display: flex;margin: 0;position: absolute;width: 99%;justify-content: center">
                    <!-- Buttons at the bottom -->
                    <button type="submit" class="btn" style="width: 40%">Add</button>
                    <button type="button" class="btn cancel" onclick="closeForm()" style="width: 39%">Close</button>
                </div>
            </form>
        </div>
        <footer>
            <div class="container">
                <div class="col-lg-12">
                    <p>Copyright © 2048 Villa Agency Co., Ltd. All rights reserved. 
                </div>
            </div>
        </footer>

        <!-- Scripts -->
        <!-- Bootstrap core JavaScript -->
        <script>
            function openForm() {
                document.getElementById("myForm").style.display = "block";
            }

            function closeForm() {
                document.getElementById("myForm").style.display = "none";
            }
        </script>
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/js/isotope.min.js"></script>
        <script src="assets/js/owl-carousel.js"></script>
        <script src="assets/js/counter.js"></script>
        <script src="assets/js/custom.js"></script>

    </body>
</html>