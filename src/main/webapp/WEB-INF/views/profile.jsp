<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ page session="false" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
  <head>
    <title>Araç Deposu</title>
    <meta charset="utf-8">
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
  </head>
  <body>
    
	  <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container">
	      <a class="navbar-brand" href="index">Araç<span> Deposu</span></a>
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menü
	      </button>

	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav ml-auto">
	          <li class="nav-item"><a href="index" class="nav-link">Ana Sayfa</a></li>
			  <li class="nav-item"><a href="car" class="nav-link">Araçlar</a></li>
	          <li class="nav-item active"><a href="profile" class="nav-link">Profil</a></li>
	        </ul>
	      </div>
	    </div>
	  </nav>
    <!-- END nav -->
    
    <section class="hero-wrap hero-wrap-2 js-fullheight" style="background-image: url('asset/home/images/bg_2.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-end justify-content-start">
          <div class="col-md-9 ftco-animate pb-5">
          	<p class="breadcrumbs"><span class="mr-2"><a href="index">Ana Sayfa <i class="ion-ios-arrow-forward"></i></a></span><span><a href="profile">Profil</a><i class="ion-ios-arrow-forward"></i></span></p>
            <h1 class="mb-3 bread">${user.name} ${user.surname}</h1>
          </div>
        </div>
      </div>
    </section>

		<section class="ftco-section contact-section">
      <div class="container">
        <div class="row d-flex mb-5 contact-info justify-content-center">
        	<div class="col-md-8">
        		<div class="row mb-5">
		          <div class="col-md-4 text-center py-4">
		          	<div class="icon">
		          		<span class="icon-map-o"></span>
		          	</div>
		            <p><span>İlan Sayısı:</span>3</p>
		          </div>
		          <div class="col-md-4 text-center border-height py-4">
		          	<div class="icon">
		          		<span class="icon-mobile-phone"></span>
		          	</div>
		            <p><span>Telefon:</span>${user.phone}</p>
		          </div>
		          <div class="col-md-4 text-center py-4">
		          	<div class="icon">
		          		<span class="icon-envelope-o"></span>
		          	</div>
		            <p><span>Email:</span>${user.email}</p>
		          </div>
		        </div>
          </div>
        </div>
        
        <div class="row block-9 justify-content-center mb-5">
          <div class="col-md-8 mb-md-5">
          	<h2 class="text-center">Ücretsiz İlan Ver</h2>
            <form action="#" class="bg-light p-5 contact-form">
              <div class="form-group">
				<div class="icon"></div>
					<select name="" id="vehicle" class="form-control" onchange="getBrand()">
						<option value="">Araç Seç</option>
					</select>
				</div>
              <div class="form-group">
                <div class="icon"></div>
					<select name="" id="brand" class="form-control" onchange="getModel()">
						<option value="">Marka Seç</option>
					</select>
				</div>
              <div class="form-group">
                <div class="icon"></div>
					<select name="" id="model" class="form-control">
						<option value="">Model Seç</option>
					</select>
				</div>
              <div class="form-group">
                <div class="icon"></div>
					<select name="" id="" class="form-control">
						<option value="">Yakıt Seç</option>
						<option value="">Benzin</option>
						<option value="">Benzin & LPG</option>
						<option value="">Dizel</option>
						<option value="">Hybrid</option>
						<option value="">Elektrik</option>
					</select>
				</div>
              <div class="form-group">
                 <div class="icon"></div>
					<select name="" id="" class="form-control">
						<option value="">Vites Seç</option>
					<option value="">Manuel</option>
					<option value="">Yarı Otomatik</option>
					<option value="">Otomatik</option>
					</select>
				</div>
              <div class="form-group">
                <div class="icon"></div>
					<select name="" id="" class="form-control">
						<option value="">Kasa Tipi Seç</option>
					<option value="">Cabrio</option>
					<option value="">Coupe</option>
					<option value="">Hatchback 3 kapı</option>
					<option value="">Hatchback 5 kapı</option>
					<option value="">Sedan</option>
					<option value="">Station Wagon</option>
					<option value="">Crossover</option>
					<option value="">MPV</option>
					<option value="">Roadster</option>
					</select>
				</div>
              <div class="form-group">
                <input type="text" class="form-control" placeholder="Yıl">
				</div>
              <div class="form-group">
                <input type="text" class="form-control" placeholder="Kilometre">
              </div>
              <div class="form-group">
                <textarea name="" id="" cols="30" rows="7" class="form-control" placeholder="Açıklama"></textarea>
              </div>
              <div class="form-group">
                <input type="submit" value="Onayla" class="btn btn-primary py-3 px-5">
              </div>
            </form>
          
          </div>
        </div>
      </div>
    </section>

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
				  <li><a href="#" class="py-2 d-block">About</a></li>
				  <li><a href="#" class="py-2 d-block">Services</a></li>
				  <li><a href="#" class="py-2 d-block">Term and Conditions</a></li>
				  <li><a href="#" class="py-2 d-block">Best Price Guarantee</a></li>
				  <li><a href="#" class="py-2 d-block">Privacy &amp; Cookies Policy</a></li>
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
  <script src="asset/home/js/main.js"></script>
  
  <script src="asset/custom/profile.js"></script>
    
  </body>
</html>
