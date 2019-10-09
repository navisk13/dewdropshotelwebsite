<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Booking Details</title>
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
					<li><a href="deletebooking.html">Cancel Booking</a></li>
				</ul>
			</div>
		</nav>
	</div>
	<br>
	<br>
	<br>
	<br>
	<center>
		<h1>Booking Details</h1>
		<form method="post" action="Viewbooking">
		<div class="form-group">
		<input type="text" placeholder="Booking ID" name="id"/>
		</div>
		<div class="form-group">
		<input type="submit" class="btn btn-default" value="View Details"/>
		</div>
		</form>

<%
String result = (String) request.getAttribute("details");
if(result!=null)
{
String arr[] = result.split(",");
out.println("Room type: "+arr[0]);%>
<br>
<% out.println("Arrival Date: "+arr[1]);%>
<br>
<% out.println("Departure Date: "+arr[2]);%>
<br>
<% out.println("Adults: "+arr[3]);%>
<br>
<% out.println("Children: "+arr[4]);
}
%>
</center>

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
</style> 
</body>
</html>