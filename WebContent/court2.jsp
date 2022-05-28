<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page import="court.model.courtbean, court.dao.courtdao,court.controller.courtcontroller, java.sql.*, java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%><!DOCTYPE html>
<html lang="en">
  <head>
    <title>Confe &mdash; Court</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
 <meta charset="UTF-8">

    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  
  <link rel='stylesheet' href='http://maxcdn.bootstrapcdn.com/bootswatch/3.2.0/sandstone/bootstrap.min.css'>
<link rel='stylesheet' href='http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css'>

      <link rel="stylesheet" href="css/style.css">

    <link href="https://fonts.googleapis.com/css?family=Amatic+SC:400,700|Work+Sans:300,400,700" rel="stylesheet">
    <link rel="stylesheet" href="fonts/icomoon/style.css">

    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">
    <link rel="stylesheet" href="css/jquery-ui.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/animate.css">
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/mediaelement@4.2.7/build/mediaelementplayer.min.css">
    
    
    
    <link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">
  
    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/style.css">
    
  </head>
  <body>
  
  <div class="site-wrap">

    <div class="site-mobile-menu">
      <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close mt-3">
          <span class="icon-close2 js-menu-toggle"></span>
        </div>
      </div>
      <div class="site-mobile-menu-body"></div>
    </div> <!-- .site-mobile-menu -->
    
    
    <div class="site-navbar-wrap js-site-navbar bg-white">
      
      <div class="container">
        <div class="site-navbar bg-light">
          <div class="py-1">
            <div class="row align-items-center">
              <div class="col-2">
                <h2 class="mb-0 site-logo"><a href="index.html">Sport Center.</a></h2>
              </div>
              <div class="col-10">
                <nav class="site-navigation text-right" role="navigation">
                  <div class="container">
                    <!-- d-lg-none -->
                    <div class="d-inline-block  ml-md-0 mr-auto py-3"><a href="#" class="site-menu-toggle js-menu-toggle"><span class="icon-menu h3"></span></a></div>
                     <!-- d-lg-block -->
                    <ul class="site-menu js-clone-nav d-none">
                      <li>
                        <a href="index2.jsp">Home</a>
                      </li>
                      <li><a href="booking2.jsp">Booking Court</a></li>
                      <li class="active"><a href="court2.jsp">Court list</a></li>

                      <li><a href="login.jsp">Login</a></li>
                      <li><a href="register.jsp">  Register</a></li>
                    </ul>
                  </div>
                </nav>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  
    
    
      
    <div class="site-blocks-cover overlay" style="background-image: url(images/hero_1.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row align-items-center justify-content-center">
          <div class="col-md-10 text-center" data-aos="fade">
            <h1 class="mb-4">Court List</h1>
            <p>Batu Berendam Sport Center</p>
          </div>
        </div>
      </div>
    </div>  

    
    <div class="site-section">
     <div class="container" ng-app="sortApp" ng-controller="mainController">
  <!-- Trigger the modal with a button -->
<button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Book Court</button>
<br><br>
<!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
     
      </div>
      <div class="modal-body">
        <form method="post"  action="login.jsp">
 
    <table class='table table-bordered' role="dialog" >

           
        <tr>
            <td>IC Number</td>
            <td><input type='text' name='custic' class='form-control' value='custic' required></td>
        </tr>
       
   <tr>
            <td>Book id</td>
            <td><input type='text' name='book_id' class='form-control' value='book_id' required></td>
        </tr>
       
       
        <tr>
            <td>Court List</td>
            <td><select class="custom-select" name="courtid">
                                      
                                      <option value="1">FUTSAL ROOM 1</option>
                                      <option value="2">FUTSAL ROOM 2</option>
                                      <option value="3">FUTSAL ROOM 3</option>
				       <option value="4">FUTSAL ROOM 4</option>
                                      <option value="5">FUTSAL ROOM 5</option>
                                      <option value="6">BADMINTON ROOM 1</option>
				       <option value="7">BADMINTON ROOM 2</option>
                                      <option value="8">BADMINTON ROOM 3</option>
                                      <option value="9">BADMINTON ROOM 4</option>
				      <option value="10">TENNIS ROOM 1</option>
				       <option value="11">TENNIS ROOM 2</option>
                                      <option value="12">TENNIS ROOM 3</option>
                                      <option value="13">TENNIS ROOM 4</option>
									 </select></td>
        </tr>
 
      
       
            <td colspan="2">
            <button type="submit" class="btn btn-primary" >
    		<span class="glyphicon glyphicon-plus"></span> Book
			</button>  
            </td>
        </tr>
 
    </table>
</form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>
  <br>  <br>  <br>
  </div>
</div>
  <br>
  <form>
    <div class="form-group">
      <div class="input-group">
        <div class="input-group-addon"><i class="fa fa-search"></i></div>
        <input type="text" class="form-control" placeholder="Search court" ng-model="searchFish">
      </div>      
    </div>
  </form>
    <% List<courtbean> courts = courtdao.getAllCourt();
   
%>
  <table class="table table-bordered table-striped">
    
    <thead>
          <tr>
	    <th>Court id</th>
        <th>court type</th>
        <th>court price</th>
        <th>court equipment</th>
		 <th>court room</th>
      
        
		
        </tr>
        </thead>
        	<% for(courtbean p:courts){%>
        <tbody>
      
			<tr>
			<td><%= p.getCourtid() %></td>
			<td><%= p.getCourttype() %></td>
			<td><%= p.getCourtprice() %></td>
			<td><%= p.getCourtequipment() %></td>
			<td><%= p.getCourtroom() %></td>
			 <%}%>
			</tr>
			
    </tbody>

  </table>
   

    <!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
     
      </div>
      <div class="modal-body">   
 	
	 <form method='post' id='emp-UpdateForm' action='login.jsp'>
 
    <table class='table table-bordered'>
 		<input type='hidden' name='courtid' value= />
        <tr>
            <td>Court type</td>
            <td><input type='text' name='courttype' class='form-control' value='courttype' required></td>
        </tr>
 
        <tr>
            <td>Court Price</td>
            <td><input type='Number' name='courtprice' class='form-control' value='courtprice' required></td>
        </tr>
 
        <tr>
            <td>Court Equipment</td>
            <td><input type='text' name='courtequitment' class='form-control' value='court_equipment' required></td>
        </tr>
 <tr>
            <td>Court Room</td>
            <td><input type='Number' name='courtprice' class='form-control' value='courtprice' required></td>
        </tr>
 
        <tr>
            <td>Status</td>
            <td><input type='text' name='courtstatus' class='form-control' value='court_status' required></td>
        </tr>
        <tr>
            <td colspan="2">
            <button type="submit" class="btn btn-primary" name="btn-update" id="btn-update">
    		<span class="glyphicon glyphicon-plus"></span> Save Updates
			</button>
            </td>
        </tr>
 
    </table>
</form>
        <a href="court.html" class="text-white">View Your Booking detail</a>
  <p class="text-center text-muted">
    <a href="#" target="_blank">Read the Tutorial</a>
  </p>
  
  <p class="text-center">
    by <a href="https://scotch.io" target="_blank">scotch.io</a>
  </p>
  
</div>
        </div>
      </div>
    </div>

  
    

      <div class="site-section">
      <div class="container">
        <div class="row">
          <div class="col-md-6 mx-auto text-center mb-5 section-heading">
            <h2 class="mb-5 text-uppercase">Why Us?</h2>
          </div>
        </div>
        <div class="row">
          <div class="col-md-4 col-lg-4">
            <div class="text-center p-4 item">
              <span class="flaticon-paper-plane display-3 mb-3 d-block text-primary"></span>
              <h2 class="h5 text-uppercase">Our Mission</h2>
              <p>To provide the great convenience for customer so that customer can booking our court without trouble</p>
            </div>
          </div>

          <div class="col-md-4 col-lg-4">
            <div class="text-center p-4 item">
              <span class="flaticon-email display-3 mb-3 d-block text-primary"></span>
              <h2 class="h5 text-uppercase">Booking Online</h2>
              <p>We provide court booking through online</p>
            </div>
          </div>

          <div class="col-md-4 col-lg-4">
            <div class="text-center p-4 item">
              <span class="flaticon-chat-1 display-3 mb-3 d-block text-primary"></span>
              <h2 class="h5 text-uppercase">Good Reviews</h2>
              <p>so that we will have the good feedback from our customer</p>
            </div>
          </div>

        </div>
      </div>
    </div>
   

    <div class="site-block-half d-flex images">
      <div class="image bg-image" style="background-image: url('images/img_3.jpg');">
      </div>
      <div class="image bg-image" style="background-image: url('images/img_4.jpg');">
      </div>
    </div>


    



        <div class="row">
          
        </div>
      </div>
    </div>
    

    <div class="py-5 quick-contact-info">
      <div class="container">
        <div class="row">
          <div class="col-md-4 text-center">
            <div>
              <span class="icon-room text-white h2 d-block"></span>
              <h2>Where</h2>
              <p class="mb-0">Melaka</p>
            </div>
          </div>
          <div class="col-md-4 text-center">
            <div>
              <span class="icon-clock-o text-white h2 d-block"></span>
              <h2>Date</h2>
              <p class="mb-0">May 13, 2019</p>
            </div>
          </div>
          <div class="col-md-4 text-center">
            <div>
              <span class="icon-comments text-white h2 d-block"></span>
              <h2>Email</h2>
              <p class="mb-0">Email: info@batuberendamsports.com</p>
            </div>
          </div>
        </div>
      </div>
    </div>

    
    <footer class="site-footer" style="background-image: url('images/hero_1.jpg');">
      <div class="container">
        

        <div class="row">
          <div class="col-md-4">
            <h3 class="footer-heading mb-4 text-white">About</h3>
            <p>Sport center that provide online booking court.</p>
            <p><a href="#" class="btn btn-primary pill text-white px-4">Read More</a></p>
          </div>
          <div class="col-md-6">
            <div class="row">
              <div class="col-md-6">
                <h3 class="footer-heading mb-4 text-white">Facilities</h3>
                  <ul class="list-unstyled">
                    <li><a href="#">Badminton court</a></li>
                    <li><a href="#">Futsal court</a></li>
                    <li><a href="#">Free Parking</a></li>
                    <li><a href="#">Basic PA system</a></li>
                    <li><a href="#">Shower/Restroom</a></li>
					<li><a href="#">Sport shop</a></li>
				    <li><a href="#">Cafetaria</a></li>
				    <li><a href="#">Lounge Area with Astro</a></li>
                  </ul>
              </div>
              <div class="col-md-6">
                <h3 class="footer-heading mb-4 text-white">&nbsp;</h3>
                  <ul class="list-unstyled">
                    <li><a href="#">Contact</a></li>
                    <li><a href="#">Event</a></li>
                    <li><a href="#">Be a Sponsor</a></li>
                  </ul>
              </div>
            </div>
          </div>

          
          <div class="col-md-2">
            <div class="col-md-12"><h3 class="footer-heading mb-4 text-white">Social Icons</h3></div>
              <div class="col-md-12">
                <p>
                  <a href="https://www.facebook.com/pages/Batu-Berendam-Sport-Centre/249242479102302" class="pb-2 pr-2 pl-0"><span class="icon-facebook"></span></a>
                  <a href="#" class="p-2"><span class="icon-twitter"></span></a>
                  <a href="#" class="p-2"><span class="icon-instagram"></span></a>
                  <a href="#" class="p-2"><span class="icon-vimeo"></span></a>

                </p>
              </div>
          </div>
        </div>
        <div class="row pt-5 mt-5 text-center">
          <div class="col-md-12">
            <p>
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            Copyright &copy; <script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script>document.write(new Date().getFullYear());</script> All Rights Reserved | This template is made with <i class="icon-heart text-primary" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank" >Team uitm</a>
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            </p>
          </div>
          
        </div>
      </div>
    </footer>
  </div>

  <script src="js/jquery-3.3.1.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/jquery-ui.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/jquery.countdown.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/bootstrap-datepicker.min.js"></script>
  <script src="js/aos.js"></script>

  
  <script src="js/mediaelement-and-player.min.js"></script>

  <script src="js/main.js"></script>
    

  <script>
  
      document.addEventListener('DOMContentLoaded', function() {
                var mediaElements = document.querySelectorAll('video, audio'), total = mediaElements.length;

                for (var i = 0; i < total; i++) {
                    new MediaElementPlayer(mediaElements[i], {
                        pluginPath: 'https://cdn.jsdelivr.net/npm/mediaelement@4.2.7/build/',
                        shimScriptAccess: 'always',
                        success: function () {
                            var target = document.body.querySelectorAll('.player'), targetTotal = target.length;
                            for (var j = 0; j < targetTotal; j++) {
                                target[j].style.visibility = 'visible';
                            }
                  }
                });
                }
            });
    </script>
  <script src='http://ajax.googleapis.com/ajax/libs/angularjs/1.3.2/angular.min.js'></script>

  

    <script  src="js/index.js"></script>



  </body>
</html>