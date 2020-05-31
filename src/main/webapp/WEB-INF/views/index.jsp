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
	        <span class="oi oi-menu"></span> Menü
	      </button>

	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav ml-auto">
	          <li class="nav-item active"><a href="index" class="nav-link">Ana Sayfa</a></li>
			  <li class="nav-item"><a href="car" class="nav-link">Araçlar</a></li>
	          <li class="nav-item"><a href="profile" class="nav-link">Profil</a></li>
	        </ul>
	      </div>
	    </div>
	  </nav>
    <!-- END nav -->
    
    <div class="hero-wrap" style="background-image: url('asset/home/images/bg_1.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text justify-content-start align-items-center">
          <div class="col-lg-6 col-md-6 ftco-animate d-flex align-items-end">
          	<div class="text">
	            <h1 class="mb-4">Şimdi araç<span> almak ve satmak</span> <span>daha kolay</span></h1>
	            <p style="font-size: 18px;">Araç Deposu ile araç ilanını ücretsiz yayınla. Hızlı ve güvenilir bir şekilde aracını sat veya hayalindeki araca sahip ol.</p>
	            <a href="https://vimeo.com/83897060" class="icon-wrap popup-vimeo d-flex align-items-center mt-4">
	            	 <div class="icon d-flex align-items-center justify-content-center">
	            		<span class="ion-ios-play"></span>
	            	</div>
	            	<div class="heading-title ml-5">
		            	<span>Araç almanın en kolay yolu</span>
	            	</div> 
	            </a>
            </div>
          </div>
          <div class="col-lg-2 col"></div>
          <div class="col-lg-4 col-md-6 mt-0 mt-md-5 d-flex">
          	
          </div>
        </div>
      </div>
    </div>


	<!-- Cars -->
  
	  <div class="site-section">

		<section style="margin-top: -150px; margin-bottom: -100px;" class="ftco-section">
			<div class="container-fluid px-4">
				<div class="row justify-content-center">
			  <div class="col-md-12 heading-section text-center ftco-animate mb-5">
				  <span class="subheading">VİTRİN</span>
				<h2 class="mb-2">Aracını Seç</h2>
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


    <section class="ftco-section services-section img" style="background-image: url(asset/home/images/bg_2.jpg);">
    	<div class="overlay"></div>
    	<div class="container">
    		<div class="row justify-content-center mb-5">
          <div class="col-md-7 text-center heading-section heading-section-white ftco-animate">
            <h2 class="mb-3">Araç Deposu</h2>
          </div>
        </div>
    		<div class="row">
    			<div class="col-md-3 d-flex align-self-stretch ftco-animate">
            <div class="media block-6 services services-2">
              <div class="media-body py-md-4 text-center">
              	<div class="icon d-flex align-items-center justify-content-center"><span class="flaticon-route"></span></div>
                <h3>Konum ile Arama</h3>
                <p>Türkiye genelindeki tüm araç ilanlarına hızlı bir şekilde eriş</p>
              </div>
            </div>      
          </div>
          <div class="col-md-3 d-flex align-self-stretch ftco-animate">
            <div class="media block-6 services services-2">
              <div class="media-body py-md-4 text-center">
              	<div class="icon d-flex align-items-center justify-content-center"><span class="flaticon-select"></span></div>
                <h3>Filtreleme</h3>
                <p>Birçok filtreleme seçeneği ile hayalindeki aracı kolayca bul</p>
              </div>
            </div>      
          </div>
          <div class="col-md-3 d-flex align-self-stretch ftco-animate">
            <div class="media block-6 services services-2">
              <div class="media-body py-md-4 text-center">
              	<div class="icon d-flex align-items-center justify-content-center"><span class="flaticon-rent"></span></div>
                <h3>İlan Ver</h3>
                <p>Ücretsiz ve kolay bir şekilde aracını ilana ver ve anında sat</p>
              </div>
            </div>      
          </div>
          <div class="col-md-3 d-flex align-self-stretch ftco-animate">
            <div class="media block-6 services services-2">
              <div class="media-body py-md-4 text-center">
              	<div class="icon d-flex align-items-center justify-content-center"><span class="flaticon-review"></span></div>
                <h3>Hayalinizdeki Araç</h3>
                <p>Binlerce ilan ile hayalindeki araca sahip ol</p>
              </div>
            </div>      
          </div>
    		</div>
    	</div>
    </section>

		<section style="margin-top: 150px;" class="ftco-section ftco-no-pt ftco-no-pb">
			<div class="container">
				<div class="row no-gutters">
					<div class="col-md-6 p-md-5 img img-2 d-flex justify-content-center align-items-center" style="background-image: url(asset/home/images/about.jpg);">
					</div>
					<div class="col-md-6 wrap-about py-md-5 ftco-animate">
	          <div class="heading-section mb-5 pl-md-5">
	          	<span class="subheading">Hakkımızda</span>
	            <h2 class="mb-4">Mükemmel Bir Araç Seçin</h2>

	            <p>Araç Deposu ile çeşitli türdeki araçlarınızı ilan vererek kolay, güvenilir ve hızlı bir şekilde satabilirsiniz.</p>
	            <p>Tüm Türkiye genelindeki araç ilanlarını görebilirsiniz. Filtreleme özellikleri ile istemiş olduğunuz aracı çok daha kolay bir şekilde bulabilirsiniz. Araçlar hakkında detaylı bilgi ve fotoğrafları görebilir, araç sahibine iletişim bilgileri ile ulaşabilirsiniz. Tüm bu işlemleri hızlı, kolay ve güvenilir bir şekilde yapacak ve Araç Deposu ile hizmet ve kaliteyi hissedeceksiniz.</p>
	            <p><a href="car" class="btn btn-primary">Araç Ara</a></p>
	          </div>
					</div>
				</div>
			</div>
		</section>

    <footer style="margin-top: 150px;" class="ftco-footer ftco-bg-dark ftco-section">
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
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> Tüm hakları saklıdır | Araç Deposu bir Kaplan Holding markasıdır.
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

  <script src="asset/custom/index.js"></script>

  <!-- Cars -->

  <script src="asset/home/cars/js/main.js"></script>

  <!-- Cars -->
    
  </body>
</html>







