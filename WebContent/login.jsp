<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Login</title>
<meta charset="utf-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/font-awesome.min.css'">
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</head>
<body>
	<div id="navbar">
		<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand" href="index.jsp">Dewdrops Hotel</a>
				</div>
				<ul class="nav navbar-nav">
					<li><a href="bookroom.html">Book a Room</a></li>
              		<li><a href="gallery.jsp">Gallery</a></li>
              		<li><a href="bookingdetails.jsp">View Booking Details</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="signup.jsp">Sign Up</a></li>
				</ul>
			</div>
		</nav>
	</div>
	<br>
	<br>
	<br>
	<br>
	<%Cookie[] cookies = request.getCookies();
	String uname = "";
	String password = "";
	if(cookies!=null  ){
		if(cookies.length >1)
		for(int i=0;i<cookies.length;i++){
			if(cookies[i].getName().equals("username")){
				uname = cookies[i].getValue();
			}
			else if(cookies[i].getName().equals("password")){
				password = cookies[i].getValue();
			}
		}
	} %>
	<center>
		<h1>Login</h1>
		<form method="post" action="LoginCheck" name="loginForm" novalidate
			ng-app="formValidationApp" ng-controller="ValidationCtrl">
			<div class="form-group"
				ng-class="{'has-error': loginForm.uname.$invalid && loginForm.uname.$dirty, 'has-success': loginForm.uname.$valid }">
				<% out.println("<input type = \"text\"   name = \"uname\" placeholder =\"   Username\"  ng-model=\"user.uname\"  ng-init = \"user.uname='"+uname+"'\" required >"); %>					
				<p class="help-block"
					ng-if="loginForm.uname.$invalid && loginForm.uname.$dirty">Username
					should not be empty!</p>
			</div>
			<div class="form-group"
				ng-class="{'has-error': loginForm.password.$invalid && loginForm.password.$dirty, 'has-success': loginForm.password.$valid}">
				<% out.println("<input type = \"password\" name = \"password\" placeholder =\"  Password\" ng-model=\"user.password\" ng-minLength=\"8\" ng-pattern=\"/(?=.*[a-z])(?=.*[A-Z])(?=.*[^a-zA-Z])/\" ng-init = \"user.password='"+password+"'\" required >"); %>
				<p class="help-block"
					ng-if="loginForm.password.$invalid && loginForm.password.$dirty">Password
					must have atleast 8 characters, one uppercase letter, one lowercase
					letter and one special character!</p>
			</div>
			<p>Remember Me 
			<input type="checkbox" name = "rememberMe" value="remember" checked></p>
					<h3 style="color:red;">
					<%
    if(null!=request.getAttribute("errorMessage"))
    {
        out.println(request.getAttribute("errorMessage"));
    }
        %>
        </h3>
			<p>
				<input
					ng-disabled="loginForm.uname.$invalid || loginForm.password.$invalid"
					value="Login" type="submit">
			</p>
			<p>
				<input type="reset">
			</p>
		</form>
	</center>
	<script>
		angular.module('formValidationApp', []).controller('ValidationCtrl',
				function() {
				})
	</script>
	<style>
input[type=text], select {
	width: 25%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

input[type=password], select {
	width: 25%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

input[type=submit] {
	width: 25%;
	background-color: #4CAF50;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

input[type=reset] {
	width: 25%;
	background-color: #FF0000;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}
</style>
</body>
</html>















