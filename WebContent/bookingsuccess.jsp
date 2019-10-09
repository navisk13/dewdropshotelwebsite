<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Booking Successful</title>
 <meta charset="utf-8">
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
      <li><a href="bookingdetails.jsp">View Booking Details</a></li>
      <li><a href="gallery.jsp">Gallery</a></li>
    </ul>
  </div>
</nav>
</div>
<br>
<br>
<center>
<h2>You have successfully booked your room! We hope you enjoy your stay.</h2>
<p>Your booking id is <%out.println(request.getAttribute("details")); %>.Remember this, as you may need it for further processes.</p>
<a href="index.jsp" class="btn btn-default" role="button">Go Home</a>
</center>
</body>
</html>