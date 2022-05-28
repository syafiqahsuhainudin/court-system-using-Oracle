<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Batu Berendam Sports Centre</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

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
                <h2 class="mb-0 site-logo"><a href="index.html">Sports Centre</a></h2>
              </div>
              <div class="col-10">
                <nav class="site-navigation text-right" role="navigation">
                  <div class="container">
                    <!-- d-lg-none -->
                    <div class="d-inline-block  ml-md-0 mr-auto py-3"><a href="#" class="site-menu-toggle js-menu-toggle"><span class="icon-menu h3"></span></a></div>
                     <!-- d-lg-block -->
                    <ul class="site-menu js-clone-nav d-none">
                           <li><a href="adminindex.jsp">Home</a>
                      </li>
                     
						   <li><a href="bookingdetails.jsp">Booking Details</a></li>
						  <li><a href="staff.jsp">Staff</a></li>
						  <li class="active"><a href="editstaff.jsp">Edit Staff</a></li>
                      <li ><a href="admincourt.jsp">Court list</a></li>
                      <li><a href="adminlogout.jsp">Logout</a></li>
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
            <h1 class="mb-4">Staff</h1>
          </div>
        </div>
      </div>
    </div>  

        <form method='post' id='emp-SaveForm' action="StaffController">
 
    <table class='table table-bordered' role="dialog" >
 
        <tr>
            <td>Staff ID</td>
            <td><input type='text' name='staffid' class='form-control' value="<c:out value="${staff.staffid}"/>" readonly/></td>
        </tr>
        <tr>
            <td>Manager ID</td>
            <td><input type='text' name='managerid' class='form-control' value="<c:out value="${staff.managerid}"/>" /></td>
        </tr>
        <tr>
            <td>Staff Name</td>
            <td><input type='text' name='staffname' class='form-control' value="<c:out value="${staff.staffname}"/>"></td>
        </tr>
 
        <tr>
            <td>Phone Number</td>
            <td><input type='text' name='phoneno' class='form-control' value="<c:out value="${staff.phoneno}"/>"></td>
        </tr>
        
 		<tr>
            <td>Email</td>
            <td><input type='email' name='email' class='form-control' value="<c:out value="${staff.email}"/>"></td>
        </tr>
 
        <tr>
            <td>Password</td>
            <td><input type='password' name='password' class='form-control' value="<c:out value="${staff.password}"/>"></td>
        </tr>
        <tr>
            <td colspan="2">
            <button type="submit" class="btn btn-primary" name="btn-save" id="btn-save">
    		<span class="glyphicon glyphicon-plus"></span> Save this Record
			</button>  
            </td>
        </tr>
 
    </table>
    </form>

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
      </div>
    </div>
    </div class="site-section">        

    <div class="site-block-half d-flex images">
      <div class="image bg-image" style="background-image: url('images/img_4.jpg');">
      </div>
      <div class="image bg-image" style="background-image: url('images/img_3.jpg');">
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
            Copyright &copy; <script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script>document.write(new Date().getFullYear());</script> All Rights Reserved | This template is made with <i class="icon-heart text-primary" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank" >Colorlib</a>
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

  </body>
</html>