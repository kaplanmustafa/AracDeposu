<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ page session="false" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
  <head>
    <title>Araç Deposu</title>
    <link rel="apple-touch-icon" sizes="180x180" href="./../asset/css/apple-touch-icon.png">
	<link rel="icon" type="image/png" sizes="32x32" href="./../asset/css/favicon-32x32.png">
	<link rel="icon" type="image/png" sizes="16x16" href="./../asset/css/favicon-16x16.png">
	<link rel="manifest" href="./../asset/css/site.webmanifest">
    
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="./../asset/home/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="./../asset/home/css/animate.css">
    
    <link rel="stylesheet" href="./../asset/home/css/owl.carousel.min.css">
    <link rel="stylesheet" href="./../asset/home/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="./../asset/home/css/magnific-popup.css">

    <link rel="stylesheet" href="./../asset/home/css/aos.css">

    <link rel="stylesheet" href="./../asset/home/css/ionicons.min.css">
    
    <link rel="stylesheet" href="./../asset/home/css/flaticon.css">
    <link rel="stylesheet" href="./../asset/home/css/icomoon.css">
	<link rel="stylesheet" href="./../asset/home/css/style.css">
	
<!-- Cars -->

<link href="https://fonts.googleapis.com/css?family=DM+Sans:300,400,700&display=swap" rel="stylesheet">

<!-- MAIN CSS -->
<link rel="stylesheet" href="./../asset/home/cars/css/style.css">

<!-- Cars -->

  </head>
  <body>
    <input type="text" hidden style="display: none" value="${id}" id="id" />
    <input type="text" hidden style="display: none" value="" id="user_id" />
	<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container">
	      <a class="navbar-brand" href="./../index">Araç<span> deposu</span></a>
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>

	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav ml-auto">
	          <li class="nav-item"><a href="./../index" class="nav-link">Ana Sayfa</a></li>
			  <li class="nav-item active"><a href="./../car" class="nav-link">Araçlar</a></li>
	          <li class="nav-item"><a href="./../profile" class="nav-link">Profil</a></li>
	        </ul>
	      </div>
	    </div>
	  </nav>
    <!-- END nav -->
    
    <section class="hero-wrap hero-wrap-2 js-fullheight" style="background-image: url('./../asset/home/images/car-14.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-end justify-content-start">
          <div class="col-md-9 ftco-animate pb-5">
          	<p class="breadcrumbs"><span class="mr-2"><a href="index">Ana Sayfa <i class="ion-ios-arrow-forward"></i></a></span> <span><a href="car.html">Araçlar</a><i class="ion-ios-arrow-forward"></i></span></p>
            <h1 class="mb-3 bread">ARAÇ DETAY</h1>
          </div>
        </div>
      </div>
	</section>
	
	
    <section class="ftco-section ftco-car-details">
      <div class="container">
      	<div class="row justify-content-center">
				<div class="col-md-12" style=" max-width: 50%; flex: 0 0 50%;">
				<div class="car-details" id="images">
					
				
				</div>
				</div>
				</div>
				<div class="row">
				<div class="col-md d-flex align-self-stretch ftco-animate">
				<div class="media block-6 services">
				<div class="media-body py-md-4">
				<div class="d-flex mb-3 align-items-center">
				 	<div class="icon"><span class="flaticon-dashboard"></span></div>
					<div class="text">
				      <h3 class="heading mb-0 pl-3">
				      	Kilometre
				      	<span id="km"></span>
				      </h3>
				  </div>
				</div>
				</div>
				 </div> 
				</div>
				<div class="col-md d-flex align-self-stretch ftco-animate">
				<div class="media block-6 services">
				<div class="media-body py-md-4">
				<div class="d-flex mb-3 align-items-center">
				 	<div class="icon"><span class="flaticon-car-machine"></span></div>
					<div class="text">
				      <h3 class="heading mb-0 pl-3">
				      	Vites
				      	<span id="gear"></span>
				      </h3>
				  </div>
				</div>
				</div>
				</div>
				</div>
				<div class="col-md d-flex align-self-stretch ftco-animate">
				<div class="media block-6 services">
				<div class="media-body py-md-4">
				<div class="d-flex mb-3 align-items-center">
					<div class="icon"><span class="flaticon-car-seat"></span></div>
					<div class="text">
				      <h3 class="heading mb-0 pl-3">
				      	Kasa Tipi
				      	<span id="type"></span>
				      </h3>
				  </div>
				</div>
				</div>
				</div> 
				</div>
				<div class="col-md d-flex align-self-stretch ftco-animate">
				<div class="media block-6 services">
				<div class="media-body py-md-4">
				<div class="d-flex mb-3 align-items-center">
				 	<div class="icon"><span class="flaticon-backpack"></span></div>
					<div class="text">
				      <h3 class="heading mb-0 pl-3">
				      	Yıl
				      	<span id="year"></span>
				      </h3>
				  </div>
				 </div>
				</div>
				</div>
				</div>
				 <div class="col-md d-flex align-self-stretch ftco-animate">
				<div class="media block-6 services">
				<div class="media-body py-md-4">
				<div class="d-flex mb-3 align-items-center">
				 	<div class="icon"><span class="flaticon-diesel"></span></div>
					<div class="text">
				      <h3 class="heading mb-0 pl-3">
				      	Yakıt
				      	<span id="fuel"></span>
				      </h3>
				  </div>
				</div>
				</div>
				 </div>
				</div>
				
				</div>
				
				<div class="row">
					<h6 style="margin-right: 50px;"><span id="price"></span></h6>
					<h6 style="margin-right: 50px;"><span id="city"></span></h6>
					<h6 style="margin-right: 50px;"><span id="date"></span></h6>
					<h6 style="margin-right: 50px;"><span id="name-surname"></span></h6>
					<h6 style="margin-right: 50px;"><span id="phone"></span></h6>
				</div>
				
				<div class="row">
				<div class="col-md-12 pills">
						<div class="bd-example bd-example-tabs">
						<div class="d-flex justify-content-center">
						  <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
						    <li class="nav-item">
						      <a class="nav-link active" id="pills-description-tab" data-toggle="pill" href="#pills-description" role="tab" aria-controls="pills-description" aria-expanded="true">Özellikler</a>
						    </li>
						    <li class="nav-item">
						      <a class="nav-link" id="pills-manufacturer-tab" data-toggle="pill" href="#pills-manufacturer" role="tab" aria-controls="pills-manufacturer" aria-expanded="true">Açıklama</a>
						    </li>
						  </ul>
						</div>
					  <div class="tab-content" id="pills-tabContent">
					    <div class="tab-pane fade show active" id="pills-description" role="tabpanel" aria-labelledby="pills-description-tab">
					    	<div class="row">
					    		<div class="col-md-4">
					    			<ul class="features">
					    				<li class="check" id="abcColor"><span class="ion-ios-checkmark" id="abc"></span>ABC</li>
					    				<li class="check" id="abColor"><span class="ion-ios-checkmark" id="ab"></span>Hava Yastığı</li>
					    				<li class="check" id="imColor"><span class="ion-ios-checkmark" id="im"></span>Immobilizer</li>
					    				<li class="check" id="hillColor"><span class="ion-ios-checkmark" id="hill"></span>Yokuş Kalkış Desteği</li>
					    				<li class="check" id="laneColor"><span class="ion-ios-checkmark" id="lane"></span>Şeritten Ayrılma İkazı</li>
					    			</ul>
					    		</div>          
					    		<div class="col-md-4">
					    			<ul class="features">
					    				<li class="check" id="cdColor"><span class="ion-ios-checkmark" id="cd"></span>Radyo - CD Çalar</li>
					    				<li class="check" id="blColor"><span class="ion-ios-checkmark" id="bl"></span>Bluetooth - Telefon</li>
					    				<li class="check" id="nvColor"><span class="ion-ios-checkmark" id="nv"></span>Navigasyon</li>
					    				<li class="check" id="tvColor"><span class="ion-ios-checkmark" id="tv"></span>TV</li>
					    				<li class="check" id="enColor"><span class="ion-ios-checkmark" id="en"></span>Arka Eğlence Paketi</li>
					    			</ul>
					    		</div>
					    		<div class="col-md-4">
					    			<ul class="features">
					    				<li class="check" id="acColor"><span class="ion-ios-checkmark" id="ac"></span>Klima</li>
					    				<li class="check" id="spColor"><span class="ion-ios-checkmark" id="sp"></span>Hız Sabitleyici</li>
					    				<li class="check" id="cmColor"><span class="ion-ios-checkmark" id="cm"></span>Geri Görüş Kamerası</li>
					    				<li class="check" id="clColor"><span class="ion-ios-checkmark" id="cl"></span>Boya</li>
					    				<li class="check" id="chColor"><span class="ion-ios-checkmark" id="ch"></span>Değişen</li>
					    			</ul>
					    		</div>
					    	</div>
					    </div>
					    <div class="tab-pane fade" id="pills-manufacturer" role="tabpanel" aria-labelledby="pills-manufacturer-tab">
					      <p id="des"></p>
					    </div>
					  </div>
					</div>
				</div>
				</div>
      </div>
    </section>

    <!-- Cars -->
  
	  <div class="site-section">

		<section style="margin-top: -150px; margin-bottom: -100px;" class="ftco-section">
			<div class="container-fluid px-4">
				<div class="row justify-content-center">
			  <div class="col-md-12 heading-section text-center ftco-animate mb-5">
				  <span class="subheading">ARAÇ SEÇ</span>
				<h2 class="mb-2">İlgili Araçlar</h2>
			  </div>
			  	</div>
			</div>
		</section>

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


  <script src="./../asset/home/js/jquery.min.js"></script>
  <script src="./../asset/home/js/jquery-migrate-3.0.1.min.js"></script>
  <script src="./../asset/home/js/popper.min.js"></script>
  <script src="./../asset/home/js/bootstrap.min.js"></script>
  <script src="./../asset/home/js/jquery.easing.1.3.js"></script>
  <script src="./../asset/home/js/jquery.waypoints.min.js"></script>
  <script src="./../asset/home/js/jquery.stellar.min.js"></script>
  <script src="./../asset/home/js/owl.carousel.min.js"></script>
  <script src="./../asset/home/js/jquery.magnific-popup.min.js"></script>
  <script src="./../asset/home/js/aos.js"></script>
  <script src="./../asset/home/js/jquery.animateNumber.min.js"></script>
  <script src="./../asset/home/js/scrollax.min.js"></script>
  <script src="./../asset/home/js/main.js"></script>

  <script src="./../asset/custom/car-single.js"></script>

  <!-- Cars -->
  
  <script src="./../asset/home/cars/js/main.js"></script>

  <!-- Cars -->
    
  </body>
</html>