<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <title>RentalCars</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">
    
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">

    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/ionicons.min.css">

    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/icomoon.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/adminhome.css">
  </head>
  <body>
    	<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">   
	  <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container">
	      <a class="navbar-brand" href="index.html">Rental<span>Cars</span></a>
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>

	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav ml-auto">
	          <li class="nav-item"><a href="home.jsp" class="nav-link">Home</a></li>          
	          <li class="nav-item active"><a href="login.jsp" class="nav-link">Login</a></li>
	          <li class="nav-item"><a href="register.jsp" class="nav-link">Register Now</a></li>
	          <li class="nav-item "><a href="cars.jsp" class="nav-link">Cars</a></li>
              <li class="nav-item"><a href="about.jsp" class="nav-link">About</a></li>
	          <li class="nav-item"><a href="contact.jsp" class="nav-link">Contact</a></li>
	        </ul>
	      </div>
	    </div>
	  </nav>
    <!-- END nav -->
    
    <section class="hero-wrap hero-wrap-2 js-fullheight" style="background-image: url('images/bg_3.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-end justify-content-start">
          <div class="col-md-9 ftco-animate pb-5">
          	<p class="breadcrumbs"><span class="mr-2"><a href="home.jsp">Home <i class="ion-ios-arrow-forward"></i></a></span> <span>Login <i class="ion-ios-arrow-forward"></i></span></p>
            <h1 class="mb-3 bread">Reservation Delete</h1>
          </div>
        </div>
      </div>
    </section>
    <br><center>
	<%
		String resid = request.getParameter("resid");
	    String plocation = request.getParameter("plocation");
	    String dlocation = request.getParameter("dlocation");
	    String pdate = request.getParameter("pdate");
	    String ddate = request.getParameter("ddate");
	    String ptime = request.getParameter("ptime");
	    String vtype = request.getParameter("vtype");
	    String uid = request.getParameter("uid");
	    
	%>
	
	
	
		<form action = "ReservationDelete" method = "post">
		
		Reservation ID<input type="text" name="resid" value="<%= resid %>" readonly><br>
		Pickup Location<input type="text" name="plocation" value="<%= plocation %>"  readonly><br>
		Drop Location<input type="text" name="dlocation" value="<%= dlocation %>"  readonly><br>
		Pickup Date<input type="text" name="pdate" value="<%= pdate %>"  readonly><br>
		Drop Date<input type="text" name="ddate" value="<%= ddate %>"  readonly><br>
		Pickup Time<input type="text" name="ptime" value="<%= ptime %>"  readonly><br>
		Vehicle Type<input type="text" name="vtype" value="<%= vtype %>"  readonly><br>
		User ID<input type="text" name="uid" value="<%= uid %>"  readonly><br>
		
		<input type = "submit" name="submit" value="Delete Data" ><br>
		
		
	</form>
	</center><br>
</body>
</html>