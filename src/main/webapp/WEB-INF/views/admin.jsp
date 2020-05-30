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
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.js"></script>

    <link rel="stylesheet" href="asset/home/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="asset/home/css/animate.css">
    
    <link rel="stylesheet" href="asset/home/css/owl.carousel.min.css">
    <link rel="stylesheet" href="asset/home/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="asset/home/css/magnific-popup.css">

    <link rel="stylesheet" href="asset/home/css/aos.css">

    <link rel="stylesheet" href="asset/home/css/ionicons.min.css">
    
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
    <input type="text" hidden style="display: none" value="${user.id}" id="id" />
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
	          <li class="nav-item"><a href="logout" class="nav-link">Çıkış Yap</a></li>
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
		          		<span class="icon-car"></span>
		          	</div>
		            <p id="active"></p>
		          </div>
		          <div class="col-md-4 text-center border-height py-4">
		          	<div class="icon">
		          		<span class="icon-car"></span>
		          	</div>
		            <p id="waiting"></p>
		          </div>
		          <div class="col-md-4 text-center py-4">
		          	<div class="icon">
		          		<span class="icon-car"></span>
		          	</div>
		            <p id="denied"></p>
		          </div>
		        </div>
          </div>
        </div>
        
        <div class="row">
      		<div class="col-md-12 pills">
						<div class="bd-example bd-example-tabs">
							<div class="d-flex justify-content-center">
							  <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">

							    <li class="nav-item">
							      <a class="nav-link active" id="pills-description-tab" data-toggle="pill" href="#pills-description" role="tab" aria-controls="pills-description" aria-expanded="true">Kullanıcılar</a>
							    </li>
							    <li class="nav-item">
							      <a class="nav-link" id="pills-manufacturer-tab" data-toggle="pill" href="#pills-manufacturer" role="tab" aria-controls="pills-manufacturer" aria-expanded="true">Yayındaki İlanlar</a>
							    </li>
							    <li class="nav-item">
							      <a class="nav-link" id="waiting-ads-tab" data-toggle="pill" href="#pills-waiting" role="tab" aria-controls="pills-waiting" aria-expanded="true">Onay Bekleyen İlanlar</a>
							    </li>
							    <li class="nav-item">
							      <a class="nav-link" id="denied-ads-tab" data-toggle="pill" href="#pills-denied" role="tab" aria-controls="pills-denied" aria-expanded="true">Onaylanmayan İlanlar</a>
							    </li>
							  </ul>
							</div>

  <div class="tab-content" id="pills-tabContent">
    <div class="tab-pane fade show active" id="pills-description" role="tabpanel" aria-labelledby="pills-description-tab">
    	
        <div class="row block-9 justify-content-center mb-5">
          <div class="col-md-8 mb-md-5">
          	<p style="text-align: center;">Toplam Üye Sayısı : ${total}</p>
         </div>
	    </div>
	 </div>
						    
	    <div class="tab-pane fade" id="pills-manufacturer" role="tabpanel" aria-labelledby="pills-manufacturer-tab">
	      <!-- Cars -->
  
		  <div class="site-section">
		
			<div class="container">
			  <div class="row" id="active-ads">
	
	  
				<div class="col-12">
				</div>
			  </div>
			</div>
		  </div>

	
	<!-- Cars -->
	    </div>
	    
	    
	    <div class="tab-pane fade" id="pills-waiting" role="tabpanel" aria-labelledby="waiting-ads-tab">
	      <!-- Cars -->
  
		  <div class="site-section">
		
			<div class="container">
			  <div class="row" id="waiting-ads">
	
	  
				<div class="col-12">
				</div>
			  </div>
			</div>
		  </div>

	
	<!-- Cars -->
	    </div>
	    
	    <div class="tab-pane fade" id="pills-denied" role="tabpanel" aria-labelledby="denied-ads-tab">
	      <!-- Cars -->
  
		  <div class="site-section">
		
			<div class="container">
			  <div class="row" id="denied-ads">
	
	  
				<div class="col-12">
				</div>
			  </div>
			</div>
		  </div>

	
	<!-- Cars -->
	    </div>
   
	   </div>
	  </div>
	</div>
   </div>
 </div>
</section>

    <footer style="margin-top: -100px;" class="ftco-footer ftco-bg-dark ftco-section">
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
  <script src="asset/home/js/main.js"></script>
  
  <script src="asset/custom/admin.js"></script>
  
  <!-- Cars -->

  <script src="asset/home/cars/js/main.js"></script>

  <!-- Cars -->
    
  </body>
</html>
