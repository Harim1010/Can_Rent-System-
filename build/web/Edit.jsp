<%-- 
    Document   : Edit
    Created on : Nov 1, 2023, 5:20:00 PM
    Author     : User
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <style>
            *{
                margin: 0;
                padding: 0;
            }
            body {
                font-family: Arial, Helvetica, sans-serif;
            }
            form {
                display: block;
                justify-items: center;
                background-color: #fff;
                border: 1px solid #e3e3e3;
                border-radius: 16px;
                box-sizing: border-box;
                font-family: Source Sans Pro;
                height: 100%;
                left: 0;
                padding: 48px;
                text-align: left;
                top: 0;
                width: 50%;
                margin: auto;
            }

            h2 {
                text-align: center;
            }
            input[type=text], input[type=password] {
                width: 100%;
                padding: 12px 5px;
                margin: 8px 0;
                display: inline-block;
                border: 1px solid #ccc;
                box-sizing: border-box;
            }

            button {
                background-color: #04AA6D;
                color: white;
                padding: 14px 20px;
                margin: 8px 0;
                border: none;
                cursor: pointer;
                width: 50%;
            }

            button:hover {
                opacity: 0.8;
            }

            .cancelbtn {
                width: auto;
                padding: 10px 18px;
                background-color: #f44336;
            }

            .imgcontainer {
                text-align: center;
                margin: 24px 0 12px 0;
            }

            img.avatar {
                width: 40%;
                border-radius: 50%;
            }

            .container {
                width: 70%;
                display: block;
                padding: 16px;
                justify-content: center;
                align-items: center;
            }

            .container div {
                padding-left: 20%;
                width: 100%;
                justify-content: center;
                align-items: center;
            }

            .container input {
                width: 100%;
            }

            .container button {
                bottom: 0;
            }

            span.psw {
                float: right;
                padding-top: 16px;
            }
            
            .button{
                text-align: center;
            }
            /* Change styles for span and cancel button on extra small screens */
            @media screen and (max-width: 300px) {
                span.psw {
                    display: block;
                    float: none;
                }
                .cancelbtn {
                    width: 100%;
                }
            }
        </style>
    </head>
    <body>

        <h2 style="margin:auto">Edit Car</h2>

        <form action="load" method="post">
            <div class="container">
                <div>
                    <label><b>Id</b></label>
                    <input type="text" name="id" value="${detail.vehicle_id}" readonly="" >
                </div>
                <div>
                    <label><b>Car Name</b></label>
                    <input type="text" name="carname" value="${detail.cname}" required>
                </div>
                <div>
                    <label><b>Car Type</b></label>
                    <div style="padding-left: 0px">
                    <select name="cartype" class="form-select" aria-label="Default select example" style="width: 100%;height: 30px;">
                        <c:forEach items="${list2}" var="o">
                            <!-- options la value cua the select -->
                            <option value="${o.type_id}" style="">${o.car_type}</option>
                        </c:forEach>
                    </select>
                    </div>
                </div>
                <div>
                    <label><b>Image</b></label>
                    <input type="text" name="image" value="${detail.image}" required>
                </div>
                <div>
                    <label ><b>Rental Price Per Day</b></label>
                    <input type="text"  name="price" value="${detail.dailyprice}" required>
                </div>
                <div>
                    <label ><b>Manufacture Year</b></label>
                    <input type="text"  name="year" value="${detail.year}" required>
                </div>
                <div>
                    <label ><b>Description</b></label>
                    <input type="text" name="description" value="${detail.description}" required>
                </div>
                <div class="button"><button type="submit">Edit</button></div>
            </div>
        </form>
    </body>
</html>
