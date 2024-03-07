<%-- 
    Document   : Login
    Created on : Oct 24, 2023, 2:02:58 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <style>
            body {
                font-family: Arial, Helvetica, sans-serif;
            }
            form {
                background-color: #fff;
                border: 1px solid #e3e3e3;
                border-radius: 16px;
                box-sizing: border-box;
                font-family: Source Sans Pro;
                height: 100%;
                left: 0;
                padding: 48px;
                position: relative;
                text-align: left;
                top: 0;
                width: 40%;
                margin: auto;
            }

            h2 {
                text-align: center;
            }
            input[type=text], input[type=password] {
                width: 100%;
                padding: 12px 20px;
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
                width: 100%;
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
                padding: 16px;
            }

            span.psw {
                float: right;
                padding-top: 16px;
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

        <h2 style="margin:auto">Login Form</h2>

        <form action="login" method="post">
            <div class="imgcontainer">
                <img src="img_avatar2.png" alt="Avatar" class="avatar">
            </div>
            <div style="margin:auto;height:20px;text-align: center" class="alert alert-danger" role="alert">
                <p style="color:red;margin:center;font-style: oblique">${mess}</p>
            </div>
            <div class="container">
                <label for="username" ><b>Username</b></label>
                <input type="text" placeholder="Enter Username" name="user" >
                <label for="psw" ><b>Password</b></label>
                <input type="password" placeholder="Enter Password" name="pass" >

                <button type="submit">Login</button>
                <a href="Signup.jsp"><button type="button" style="background-color: #66ccff">Signup</button></a>
                <label>
                    <input type="checkbox" checked="checked" name="remember"> Remember me
                </label>
            </div>

            <div class="container" style="background-color:#f1f1f1">
                <a href="home"><button type="button" class="cancelbtn">Cancel</button></a>
                <span class="psw"><a href="#">Forgot password?</a></span>
            </div>
        </form>
    </body>
</html>
