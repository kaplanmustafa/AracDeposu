<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ page session="false" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
  <head>
    <title>Araç Deposu</title>
    <meta charset="utf-8">
    <link rel="apple-touch-icon" sizes="180x180" href="asset/css/apple-touch-icon.png">
	<link rel="icon" type="image/png" sizes="32x32" href="asset/css/favicon-32x32.png">
	<link rel="icon" type="image/png" sizes="16x16" href="asset/css/favicon-16x16.png">
	<link rel="manifest" href="asset/css/site.webmanifest">
    
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="asset/home/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="asset/home/css/animate.css">
    
    <link rel="stylesheet" href="asset/home/css/owl.carousel.min.css">
    <link rel="stylesheet" href="asset/home/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="asset/home/css/magnific-popup.css">

    <link rel="stylesheet" href="asset/home/css/aos.css">

    <link rel="stylesheet" href="asset/home/css/ionicons.min.css">

    <link rel="stylesheet" href="asset/home/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="asset/home/css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="asset/home/css/flaticon.css">
    <link rel="stylesheet" href="asset/home/css/icomoon.css">
	<link rel="stylesheet" href="asset/home/css/style.css">
	
	<!-- Cars -->

	<link href="https://fonts.googleapis.com/css?family=DM+Sans:300,400,700&display=swap" rel="stylesheet">
    
    <!-- MAIN CSS -->
	<link rel="stylesheet" href="asset/home/cars/css/style.css">
	
	<!-- Cars -->

  </head>
  <body>
    
	<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container">
	      <a class="navbar-brand" href="index">Araç<span> deposu</span></a>
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>

	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav ml-auto">
	          <li class="nav-item"><a href="index" class="nav-link">Ana Sayfa</a></li>
			  <li class="nav-item active"><a href="car" class="nav-link">Araçlar</a></li>
	          <li class="nav-item"><a href="profile" class="nav-link">Profil</a></li>
	        </ul>
	      </div>
	    </div>
	  </nav>
    <!-- END nav -->
    
    <section class="hero-wrap hero-wrap-2 js-fullheight" style="background-image: url('asset/home/images/car-14.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-end justify-content-start">
          <div class="col-md-9 ftco-animate pb-5">
          	<p class="breadcrumbs"><span class="mr-2"><a href="index">Ana Sayfa <i class="ion-ios-arrow-forward"></i></a></span></p>
            <h1 class="mb-3 bread">ARAÇLAR</h1>
          </div>
        </div>
      </div>
    </section>

<section style="margin-bottom: -50px;" class="ftco-section ftco-no-pb ftco-no-pt">
    	<div class="container">
	    	<div class="row">
					<div class="col-md-12">
						<div class="search-wrap-1 ftco-animate mb-5">
							<form action="#" class="search-property-1">
		        		<div class="row">
							<div class="col-lg align-items-end">
		        				<div class="form-group">
		        					<label for="#">Araç</label>
		        					<div class="form-field">
		          					<div class="select-wrap">
		                      <div class="icon"><span class="ion-ios-arrow-down"></span></div>
		                      <select name="" id="vehicle" class="form-control" onchange="getBrand()">
		                      	<option value="">Araç Seç</option>
		                      </select>
		                    </div>
				              </div>
			              </div>
							</div>
							<div class="col-lg align-items-end">
		        				<div class="form-group">
		        					<label for="#">Marka</label>
		        					<div class="form-field">
		          					<div class="select-wrap">
		                      <div class="icon"><span class="ion-ios-arrow-down"></span></div>
		                      <select name="" id="brand" class="form-control" onchange="getModel()">
		                      	<option value="">Marka Seç</option>
		                      </select>
		                    </div>
				              </div>
			              </div>
		        			</div>
		        			<div class="col-lg align-items-end">
		        				<div class="form-group">
		        					<label for="#">Model</label>
		        					<div class="form-field">
		          					<div class="select-wrap">
		                      <div class="icon"><span class="ion-ios-arrow-down"></span></div>
		                      <select name="" id="model" class="form-control">
		                      	<option value="">Model Seç</option>
		                      </select>
		                    </div>
				              </div>
			              </div>
		        			</div>
		        			<div class="col-lg align-items-end">
		        				<div class="form-group">
		        					<label for="#">Min Yıl</label>
		        					<div class="form-field">
		          					<div class="select-wrap">
		                      <div class="icon"><span class="ion-ios-arrow-down"></span></div>
		                      <select name="" id="year" class="form-control">
								<option value="">Min Yıl Seç</option>
		                      </select>
		                    </div>
				              </div>
			              </div>
							</div>
							<div class="col-lg align-items-end">
		        				<div class="form-group">
		        					<label for="#">Max Km</label>
		        					<div class="form-field">
		          					<div class="select-wrap">
		                      <div class="icon"><span class="ion-ios-arrow-down"></span></div>
		                      <select name="" id="km" class="form-control">
		                      	<option value="">Km Seç</option>
		                      </select>
		                    </div>
				              </div>
			              </div>
							</div>
		        			<div class="col-lg align-items-end">
		        				<div class="form-group">
		        					<label for="#">Max Fiyat</label>
		        					<div class="form-field">
		          					<div class="select-wrap">
		                      <div class="icon"><span class="ion-ios-arrow-down"></span></div>
		                      <select name="" id="price" class="form-control">
		                      	<option value="">Fiyat Seç</option>
		                      </select>
		                    </div>
				              </div>
			              </div>
		        			</div>
		        			<div class="col-lg align-self-end">
		        				<div class="form-group">
		        					<div class="form-field">
				                <input type="button" value="Ara" onclick="filters()" class="form-control btn btn-primary">
				              </div>
			              </div>
		        			</div>
		        		</div>
		        	</form>
		        </div>
					</div>
	    	</div>
	    </div>
    </section>



<!-- Cars -->
  
<div class="site-section">

	<div class="container">
	  <div class="row" id="list">

		<div class="col-12">
		</div>
	  </div>
	</div>
  </div>


<!-- Cars -->

<footer class="ftco-footer ftco-bg-dark ftco-section">
	<div class="container">
	  <div class="row mb-5">
		<div class="col-md">
		  <div class="ftco-footer-widget mb-4">
			<h2 class="ftco-heading-2">Araç Deposu Hakkında</h2>
			<p>Ücretsiz araç ilanı verme, çeşitli araçları arama, filtreleme ve satın alma</p>
			<ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-5">
			  <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
			  <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
			  <li class="ftco-animate"><a href="https://www.instagram.com/aracdeposu/"><span class="icon-instagram"></span></a></li>
			</ul>
		  </div>
		</div>
		<div class="col-md">
		  <div class="ftco-footer-widget mb-4 ml-md-5">
			<h2 class="ftco-heading-2">Bilgi</h2>
			<ul class="list-unstyled">
			  <li><a href="#" class="py-2 d-block">Hakkımızda</a></li>
                <li><a href="#" class="py-2 d-block">Servisler</a></li>
                <li><a href="#" class="py-2 d-block">Şartlar ve Koşullar</a></li>
                <li><a href="#" class="py-2 d-block">En İyi Fiyat Garantisi</a></li>
                <li><a href="#" class="py-2 d-block">Gizlilik &amp; Çerez Politikası</a></li>
			</ul>
		  </div>
		</div>
		
		<div class="col-md">
		  <div class="ftco-footer-widget mb-4">
			  <h2 class="ftco-heading-2">Sorunuz mu var?</h2>
			  <div class="block-23 mb-3">
				<ul>
				  <li><span class="icon icon-map-marker"></span><span class="text">Emniyet, Milas Sk. No:30, 06560 Yenimahalle, Ankara, TÜRKİYE</span></li>
				  <li><a href="#"><span class="icon icon-phone"></span><span class="text">+90 (312) 202 89 42</span></a></li>
				  <li><a href="mailto:aracdeposu@gmail.com"><span class="icon icon-envelope"></span><span class="text">aracdeposu@gmail.com</span></a></li>
				</ul>
			  </div>
		  </div>
		</div>
	  </div>
	  <div class="row">
		<div class="col-md-12 text-center">

            <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script>  Tüm hakları saklıdır | Araç Deposu bir Kaplan Holding markasıdır.
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
          </div>
        </div>
      </div>
    </footer>
    
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="asset/home/js/jquery.min.js"></script>
  <script src="asset/home/js/jquery-migrate-3.0.1.min.js"></script>
  <script src="asset/home/js/popper.min.js"></script>
  <script src="asset/home/js/bootstrap.min.js"></script>
  <script src="asset/home/js/jquery.easing.1.3.js"></script>
  <script src="asset/home/js/jquery.waypoints.min.js"></script>
  <script src="asset/home/js/jquery.stellar.min.js"></script>
  <script src="asset/home/js/owl.carousel.min.js"></script>
  <script src="asset/home/js/jquery.magnific-popup.min.js"></script>
  <script src="asset/home/js/aos.js"></script>
  <script src="asset/home/js/jquery.animateNumber.min.js"></script>
  <script src="asset/home/js/bootstrap-datepicker.js"></script>
  <script src="asset/home/js/jquery.timepicker.min.js"></script>
  <script src="asset/home/js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="asset/home/js/google-map.js"></script>
  <script src="asset/home/js/main.js"></script>

  <script src="asset/custom/car.js"></script>

  <!-- Cars -->

  <script src="asset/home/cars/js/main.js"></script>

  <!-- Cars -->
    
  </body>
</html>