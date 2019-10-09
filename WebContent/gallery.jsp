<!DOCTYPE html>
<html>
<head>
<title>Gallery</title>
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
      <li><a href="bookroom.html">Book a Room</a></li>
	  <li><a href="bookingdetails.jsp">View Booking Details</a></li>
    </ul>
  </div>
</nav>
</div>
<br>
<br>
<h2> <center>Gallery</center></h2>
<br>
<div class="responsive">
  <div class="gallery">
      <img src="images/room1.jpg" alt="Cinque Terre">
    <div class="desc">Princess Suite</div>
  </div>
</div>
<div class="responsive">
  <div class="gallery">
      <img src="images/room2.jpg" alt="Forest">
    <div class="desc">King Suite</div>
  </div>
</div>

<div class="responsive">
  <div class="gallery">
      <img src="images/room3.jpg" alt="Northern Lights">
    <div class="desc">Queen Suite</div>
  </div>
</div>

<div class="responsive">
  <div class="gallery">
      <img src="images/room4.jpg" alt="Mountains">
    <div class="desc">Mountain Suite</div>
  </div>
</div>
<div class="clearfix"></div>

<center>
<form method="post" action="Addcomment">
<div>
<br>
<textarea name="comments" id="comments" placeholder="Tell us what you feel!" style="font-family:sans-serif;font-size:1.2em;"></textarea>
</div>
<br>
<input class="submit" type="submit" value="Submit">
</form>
<br>
<br>

<% if(null!=request.getAttribute("message")) out.println(request.getAttribute("message")); %>

</center>

<style>
div.gallery {
  border: 1px solid #ccc;
}

div.gallery:hover {
  border: 1px solid #777;
}

div.gallery img {
  width: 327px;
  height: 200px;
}

div.desc {
  padding: 15px;
  text-align: center;
}

.responsive {
  padding: 0 6px;
  float: left;
  width: 24.99999%;
}

@media only screen and (max-width: 700px) {
  .responsive {
    width: 49.99999%;
    margin: 6px 0;
  }
}

@media only screen and (max-width: 500px) {
  .responsive {
    width: 100%;
  }
}

.clearfix:after {
  content: "";
  display: table;
  clear: both;
}

.submit {
color: #494949 !important;
text-transform: uppercase;
text-decoration: none;
background: #ffffff;
padding: 5px;
border: 2px solid #494949 !important;
display: inline-block;
/*transition: all 0.4s ease 0s;
*/}

</style>
</body>
</html>
