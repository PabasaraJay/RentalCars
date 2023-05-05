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
            <h1 class="mb-3 bread">Admin Dashboard</h1>
          </div>
        </div>
      </div>
    </section>

    <hr>
    <div class="para">
        <h1>WELCOME Admin</h1>
    </div>
    <hr>
<center>
    <div class="main">
        <!--card1-->
        <div class="cards">
        <div class="image">
             <img src="images/car3.jpg"></div>
                    <div class="title">
                        <h1>Vehicle </h1>
                        <button><a href="#">Manage</a></button>  
                    </div>  
        </div>

        <!--card2-->  
        <div class="cards">
            <div class="image">
                 <img src="images/user.jpg"></div>
                        <div class="title">
                            <h1>User</h1>
                            <button><a href="#">Manage</a></button>  
                        </div>  
                        
            </div>
			<br>
            <!--card3-->
            <div class="cards">
                <div class="image">
                     <img src="images/driver.jpg"></div>
                            <div class="title">
                                <h1>Driver</h1>
                                <button><a href="#">Manage</a></button>  
                            </div>  
                            
                </div>

                <!--card4-->
                <div class="cards">
                    <div class="image">
                         <img src="images/res1.jpg"></div>
                                <div class="title">
                                    <h1>Reservation</h1>
                                    <form action= "ReservationRead" method="post" >
                                    <input type = "submit" name = "submit" value ="view">
                                    </form>  
                                </div>  
                    </div>
            
        </div>
   </center> 
<br><br><br><br>	
    
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="js/jquery.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/jquery.waypoints.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/jquery.animateNumber.min.js"></script>
  <script src="js/bootstrap-datepicker.js"></script>
  <script src="js/jquery.timepicker.min.js"></script>
  <script src="js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="js/google-map.js"></script>
  <script src="js/main.js"></script>
  
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
	
	
	<script type="text/javascript"> 
	var status = document.getElementById("status").value;
	
	if(status == "recorddeleted"){
		
		swal("Reservation Deleted Successfully!!","..","success");
	}
	if(status == "failed"){
		
		swal("Sorry!!","Wrong Username or Password","error");
	}
	else if(status == "InvalidLocation"){
			
			swal("Sorry!!","Please enter a Valid Location","error");
	}
	else if(status == "invalidUpwd"){
		
		swal("Sorry!!","Please Eneter Password","error");
	}
	
	
	
	</script>
    
  </body>
</html>