<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Confe &mdash; court</title>
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
                <h2 class="mb-0 site-logo"><a href="index.html">Sport Center</a></h2>
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
                      <li><a href="court2.jsp">Court list</a></li>
                     
                      <li><a href="login.jsp">Login</a></li>
                      <li class="active"><a href="register.jsp"> Register</a></li>
                    </ul>
                  </div>
                </nav>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  
    
    
      
    <div class="site-blocks-cover overlay" style="background-image: url(images/img_3.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row align-items-center justify-content-center">
          <div class="col-md-10 text-center" data-aos="fade">
            <h1 class="mb-4">Customer Registration</h1>
          </div>
        </div>
      </div>
    </div>  
    
    <div class="site-section bg-light">
      <div class="container">
        <div class="row">
       
          <div class="col-md-12 col-lg-8 mb-5">
          
        <h3>Customer Register</h3> 
          
            <form action="nonmemberregister" method="post" class="p-5 bg-white">

              <div class="row form-group">
                <div class="col-md-12 mb-3 mb-md-0">
                  <label class="font-weight-bold" for="custnames">Full Name</label>
                  <input type="text"  class="form-control"name="custnames" placeholder="Full Name"id="hidediv">
                </div>
              </div>
			    <div class="row form-group">
                <div class="col-md-12 mb-3 mb-md-0">
                  <label class="font-weight-bold" for="custic">Identity Card</label>
                  <input type="number"  class="form-control"name="custic" placeholder="Identity Card"id="hidediv">
                </div>
              </div>
              <div class="row form-group">
                <div class="col-md-12">
                  <label class="font-weight-bold" for="email">Email</label>
                  <input type="email" name="email" class="form-control" placeholder="Email Address"id="hidediv">
                </div>
              </div>


              <div class="row form-group">
               <div class="col-md-12 mb-3 mb-md-0">
    <label for="custpassword" class="font-weight-bold">Password</label>
  <input type="password" class="form-control" id="hidediv" name="custpassword">
    </div>
  </div>
			   <div class="row form-group">
                <div class="col-md-12 mb-3 mb-md-0">
                  <label class="font-weight-bold" for="contactnum">Phone</label>
                  <input type="text" class="form-control" name="contactnum"placeholder="Phone Number"id="hidediv">
                </div>
              </div>

              <div class="row form-group">
                <div class="col-md-12">
                  <label class="font-weight-bold" for="address">Address</label> 
                  <textarea name="address" cols="20" rows="3" class="form-control"id="hidediv" placeholder="Your Address"></textarea>
                </div>
              </div>
	      
	      


              <div class="row form-group">
                <div class="col-md-12">
               <center>   <input type="submit" value="register" align ="middle"id="hidediv"class="btn btn-primary px-4 py-2">
                </div>
              </div>
   </form>
          </div>
	   <div class="col-md-12 col-lg-8 mb-5">
          
            
            <h3>Premium Member</h3> 
            <form action="memberregister" class="p-5 bg-white">
	    
  <div class="show-onclick form-group">
    <label for="name" class="col-sm-2 control-label">Fullname</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="custnames" name="custnames">
    </div>
  </div>
         
<div class="show-onclick form-group">
    <label for="name" class="col-md-12">Identity Card</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="custic" name="custic">
    </div>
  </div>
           
<div class="show-onclick form-group">
    <label for="name" class="col-sm-2 control-label">Address</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="address" name="address">
    </div>
  </div>
  
  <div class="show-onclick form-group">
    <label for="name" class="col-sm-2 control-label">Phone</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="contactnum" name="contactnum">
    </div>
  </div>
  
  <div class="show-onclick form-group">
    <label for="name" class="col-sm-2 control-label">Email</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="email" name="email">
    </div>
  </div>
  
  <div class="show-onclick form-group">
    <label for="name" class="col-sm-2 control-label">Password</label>
    <div class="col-sm-10">
      <input type="password" class="form-control" id="custpassword" name="custpassword">
    </div>
  </div>
  
    <div class="show-onclick form-group">
    <label for="name" class="col-sm-2 control-label">Annual Fee</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="annual_fee" name="annual_fee" value="50"readonly>
    </div>
  </div>
  
  <div class="show-onclick form-group">
    <label for="name" class="col-sm-2 control-label">Discount</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="discount" value="50" name="discount"Readonly>
    </div>
  </div>
  
  <div class="show-onclick form-group">
                <div class="col-md-12">
               <center>   <input type="submit" value="register" align ="middle"id="hidediv"class="btn btn-primary px-4 py-2">
                </div>
              </div>
          <div class="col-lg-4">
            <div class="p-4 mb-3 bg-white">
              <h3 class="h5 text-black mb-3">Contact Info</h3>
              <p class="mb-0 font-weight-bold">Address</p>
              <p class="mb-4">6074-2, Jalan Datuk Seri Hj. Mohd Zin,
Batu Berendam 75350 Melaka</p>

              <p class="mb-0 font-weight-bold">Phone</p>
              <p class="mb-4"><a href="#">+606 317 8778</a></p>

              <p class="mb-0 font-weight-bold">Email Address</p>
              <p class="mb-0"><a href="#">info@batuberendamsports.com</a></p>

            </div>
            
  
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
<script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
<script> 
$(document).ready(function() {
    $('#additional-files').click(function() {
        $('.show-onclick').toggle();
	
	$("#hidediv").toggle();

    });
});
</script>
  </body>
</html>