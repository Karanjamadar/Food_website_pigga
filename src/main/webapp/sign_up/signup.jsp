
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
String flag = request.getParameter("flag");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>RegistrationForm</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- MATERIAL DESIGN ICONIC FONT -->
    <link rel="stylesheet" href="fonts/material-design-iconic-font/css/material-design-iconic-font.min.css">

    <!-- STYLE CSS -->
    <link rel="stylesheet" href="css/style.css">
</head>

<body>
<div class="wrapper">
    <div class="image-holder">
        <img src="images/registration-form-8.jpg" alt="">
    </div>
    <div class="form-inner">
        <div id="logo">
            <img src="/images/navbar-brand.svg" alt="" id="img_logo">
        </div>
        <%
        if (flag != null){
        %>
        <h1>Successfully Registered</h1>
        <button onclick="window.location.href='../sign_in/login.jsp'">Go To Login</button><br>
        <%
            }
        else{
        %>

        <form action="../add_creds" method="post">
            <div class="form-header">
                <h3>Pigga Sign Up</h3>
                <img src="images/sign-up.png" alt="" class="sign-up-icon">
            </div>
            <div class="form-group">
                <label for="mail">E-mail:</label>
                <input type="text" id="mail" name="email" class="form-control" data-validation="email">
            </div>
            <div class="form-group" >
                <label for="pass">Password:</label>
                <input type="password" id="pass" class="form-control" name="pass" data-validation="length" data-validation-length="min8">
            </div>
            <div class="form-group" >
                <label for="mob_no">Phone Number:</label>
                <input type="text" id="mob_no" class="form-control" name="mob_no" data-validation="length" data-validation-length="max10">
            </div>
            <button>create my account</button><br>
            <div id="login_link">
                <a href="../sign_in/login.jsp" id="login">Or Login</a>
            </div>
        </form>
        <%
            }
        %>
    </div>

</div>

<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/jquery.form-validator.min.js"></script>
<script src="js/main.js"></script>
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>