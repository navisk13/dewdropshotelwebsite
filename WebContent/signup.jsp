<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Sign Up</title>
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
					<li><a href="login.jsp">Login</a></li>
				</ul>
			</div>
		</nav>
	</div>
	<br>
	<br>
	<br>
	<center>
		<h1>Sign Up</h1>
		<form method="post" action="CreateUser" "name="signupForm" novalidate
			ng-app="formValidationApp" ng-controller="ValidationCtrl">
			<div class="form-group"
				ng-class="{'has-error': loginForm.uname.$invalid && loginForm.uname.$dirty, 'has-success': loginForm.uname.$valid }">
				<input type="text" placeholder="Username" name="uname"
					ng-model="user.uname" required />
				<p class="help-block"
					ng-if="loginForm.uname.$invalid && loginForm.uname.$dirty">Username should not be empty!</p>
			</div>
			<div class="form-group"
				ng-class="{'has-error': loginForm.fname.$invalid && loginForm.fname.$dirty, 'has-success': loginForm.fname.$valid }">
				<input type="text" placeholder="First Name" name="fname"
					ng-model="user.fname" required />
				<p class="help-block"
					ng-if="loginForm.fname.$invalid && loginForm.fname.$dirty">First
					Name should not be empty!</p>
			</div>
			<div class="form-group"
				ng-class="{'has-error': loginForm.lname.$invalid && loginForm.lname.$dirty, 'has-success': loginForm.lname.$valid }">
				<input type="text" placeholder="Last Name" name="lname"
					ng-model="user.lname" required />
				<p class="help-block"
					ng-if="loginForm.lname.$invalid && loginForm.lname.$dirty">Last
					Name should not be empty!</p>
			</div>
			<p>
				Gender: <input type="radio" name="gender" value="male"> Male
				<input type="radio" name="gender" value="female"> Female<br>
			</p>
			<div class="form-group"
				ng-class="{'has-error': loginForm.mobile.$invalid && loginForm.mobile.$dirty, 'has-success': loginForm.mobile.$valid }">
				<input type="text" placeholder="Mobile" name="mobile"
					ng-model="user.mobile" ng-minlength="10" ng-maxlength="10"
					ng-pattern="/[0-9]/" required />
				<p class="help-block"
					ng-if="loginForm.mobile.$invalid && loginForm.mobile.$dirty">Mobile
					number should be only digits and have length 10!</p>
			</div>
			<div class="form-group"
				ng-class="{'has-error': loginForm.password.$invalid && loginForm.password.$dirty, 'has-success': loginForm.password.$valid}">
				<input type="password" placeholder="Password" name="password"
					ng-model="user.password" ng-minLength="8"
					ng-pattern="/(?=.*[a-z])(?=.*[A-Z])(?=.*[^a-zA-Z])/" required />
				<p class="help-block"
					ng-if="loginForm.password.$invalid && loginForm.password.$dirty">Password
					must have atleast 8 characters, one uppercase letter, one lowercase
					letter and one special character!</p>
			</div>
			<div class="form-group"
				ng-class="{'has-error': loginForm.cpassword.$invalid && loginForm.cpassword.$dirty, 'has-success': loginForm.cpassword.$valid}">
				<input type="password" placeholder="Confirm Password"
					name="cpassword" ng-model="user.cpassword" ng-minLength="8"
					ng-pattern="/(?=.*[a-z])(?=.*[A-Z])(?=.*[^a-zA-Z])/" required />
				<p class="help-block" ng-if="user.password != user.cpassword">Passwords
					must match!</p>
			</div>
			<p>
				<input
					ng-disabled="loginForm.fname.$invalid || loginForm.lname.$invalid || loginForm.mobile.$invalid || loginForm.password.$invalid"
					value="Sign Up" type="submit">
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















