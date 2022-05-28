<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Confe &mdash; Colorlib Website Template</title>
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
                        <a href="index.html">Home</a>
                      </li>
                      <li class="active"><a href="searchprocess.jsp">Details</a></li>
                       <li><a href="booking.jsp">Booking</a></li>
                      <li><a href="court.jsp">Court list</a></li>
                      <li><a href="bill.html">Bill</a></li>
                      <li><a href="login.html">login</a></li>
                      <li><a href="register.html">Register</a></li>
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
            <h1 class="mb-4">Booking Form </h1>
          </div>
        </div>
      </div>
    </div>  

    
    <div class="site-section">
      <div class="container">
     


  
            </form>
          </div>
	  
        </div>
      </div>
    </div>
</head>
<%@page import="com.court.ConnectionManager" %>
<%@page import="java.sql.*" %>

<%@page import=" java.sql.Connection" %>
<%@page import=" java.sql.DriverManager" %>
<%@page import=" java.sql.ResultSet" %>
<%@page import=" java.sql.SQLException" %>
<%@page import=" java.sql.Statement" %>
<table>

</table>
<%

Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con = DriverManager.getConnection("jdbc:oracle:thin:court/court@localhost");
Statement pst =con.createStatement();

%>
<html>
<body>
<center><h> .:: DETAILS ::.</h1></center>
<% String aaa =  request.getParameter("search"); %>
<table style="width:35%" align="center" border="1"><center>
<TR><th>Bookid</th><Th>identity card</th><th>date</th><th>Starttime</th><th>endtime</th></tr>
<%

ResultSet rs = pst.executeQuery("select * from booking where custic='"+aaa+"'");
int i=0;

while(rs.next())
{i++;
String aa=rs.getString("book_id");
String bb=rs.getString("custic");
String cc=rs.getString("booking_date");
String dd=rs.getString("starttime");
String ee=rs.getString("endtime");
out.println("<tr><td>"+aa+"</td><td>"+bb+"</td><td>"+cc+"</td><td>"+dd+"</td><td>"+ee+"</td></tr>");
}

rs.close();%>
</table></center>
<center>  <a href="booking.jsp" class="text-orange">BACK</a>
</body></html>
<body>
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

  </body>
</html>
</body>
</html>