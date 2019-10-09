<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>

  <title>Dewdrops Hotel</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" href="css/home.css">
  <link rel="stylesheet" href="css/font-awesome.min.css'">
  <script src="js/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>

</head>

<body>
  <div class="main">
    <div class="wrapper">
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
        <%
         if(session!=null){
          if(session.getAttribute("user")!=null){
           String username = (String) session.getAttribute("user");
           out.println("<ul class=\"nav navbar-nav navbar-right\">");
                 out.println("<li>");
                 out.println("<a href=\"\">"+ username +"</a>");
                 out.println("</li>");
                 out.println("<li>");
                 out.println("<a href=\"logout\">logout</a>");
                 out.println("</li>");
                 out.println("</ul>");
          }
          else{

                 out.println("<ul class=\"nav navbar-nav navbar-right\">");
				 out.println("<li>");
                 out.println("<a href=\"login.jsp\">Login</a>");
                 out.println("</li>");
                 out.println("<li>");
                 out.println("<a href=\"signup.jsp\">Sign Up</a>");
                 out.println("</li>");
                 out.println("</ul>");
                }
         }
         else{

             out.println("<ul class=\"nav navbar-nav navbar-right\">");
             out.println("<li>");
             out.println("<a href=\"login.jsp\">Login</a>");
             out.println("</li>");
             out.println("<li>");
             out.println("<a href=\"signup.jsp\">Sign Up</a>");
             out.println("</li>");
             out.println("</ul>");
            }
         
        %>
          </div>
        </nav>
      </div>

      <div class="jumbotron" id="jumbotron1" style="background-repeat: no-repeat;">
        <div id="j1text">
          <h1 class="display-3" id="j1">Rooms with a world class view</h1>
          <p class="lead" id="j1p">All our rooms have a beautiful view of the Himalayas right outside your window, perfect to enjoy with your loved ones.</p>

          <a class="btn btn-success btn-lg" href="bookroom.html" role="button" id="bt1">Book a room</a>
        </div>
      </p>
    </div>
    <div style="margin-left: 250px">
      <div class="card1" style="width: 20rem;">
        <img class="card-img-top" src="images/aus.png" alt="Card image cap">
        <div class="card-block">
          <p class="card-text"><b>The rooms were clean and spacious at an affordable price.</b><br><strong>-Elliot Anderson</strong></p>
        </div>
      </div>
      <div class="card2" style="width: 20rem;">
        <img class="card-img-top" src="images/can.png" alt="Card image cap">
        <div class="card-block">
          <p class="card-text"><b>Service was impeccable. All my needs were catered to promptly.</b><br><b>-John Appleseed</b></p>
        </div>
      </div>
      <div class="card3" style="width: 20rem;">
        <img class="card-img-top" src="images/ind.png" alt="Card image cap">
        <div class="card-block">
          <p class="card-text"><b>If there's one thing that really stood out, it was the view from my room.</b><br><strong>-Kennith Noah</strong></p>
        </div>
      </div>
    </div>


    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <div class="jumbotron" id="jumbotron2">
      <div id="j2text">
        <h1 class="display-3" id="j1">Food from around the world.</h1>
        <p class="lead" id="j1p">Our chefs go beyond the menu to offer you whatever you crave for.</p>

        <a class="btn btn-success btn-lg" href="gallery.jsp" role="button" id="bt1">View Gallery</a>
      </div>
    </p>
  </div>
  <div id="info-footer">
    <div style="width: 15%; display: inline-block">
      <h5 style="margin-left: 40px">Book a Room</h5>
      <ul style="list-style: none">
        <li><a style="color: gray" href="gallery.jsp">Gallery</a></li>
      </ul>
    </div>
    <div style="width: 15%; display: inline-block">
      <h5 style="margin-left: 40px">Contact Us</h5>
      <ul style="list-style: none">
        <li style="color: gray">+919555666123</li>
        <li style="color: gray">contact@dewdrops.com</li>
      </ul>
    </div>
  </div>
  <div class="row">
    <div class="copyright text-center text-muted">
      Â© 2019 <a style="color: gray" href="#">Dewdrops Hotel</a>, All Rights Reserved.
    </div>
  </div>
</div>
</div>
</body>

</html>