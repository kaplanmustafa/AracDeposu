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
    <input type="text" hidden style="display: none" value="" id="ad_id" />
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
    
    <section class="hero-wrap hero-wrap-2 js-fullheight" style="background-image: url('asset/home/images/profile_img.jpg');" data-stellar-background-ratio="0.5">
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
		            <p id="count"></p>
		          </div>
		          <div class="col-md-4 text-center border-height py-4">
		          	<div class="icon">
		          		<span class="icon-mobile-phone"></span>
		          	</div>
		            <p><span>Telefon:</span>+90 ${user.phone}</p>
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
        
        <div class="row">
      		<div class="col-md-12 pills">
						<div class="bd-example bd-example-tabs">
							<div class="d-flex justify-content-center">
							  <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">

							    <li class="nav-item">
							      <a class="nav-link active" id="pills-description-tab" data-toggle="pill" href="#pills-description" role="tab" aria-controls="pills-description" aria-expanded="true">İlan Ver</a>
							    </li>
							    <li class="nav-item">
							      <a class="nav-link" id="pills-manufacturer-tab" data-toggle="pill" href="#pills-manufacturer" role="tab" aria-controls="pills-manufacturer" aria-expanded="true">Yayındaki İlanlarım</a>
							    </li>
							    <li class="nav-item">
							      <a class="nav-link" id="pills-manufacturer-tab2" data-toggle="pill" href="#pills-manufacturer2" role="tab" aria-controls="pills-manufacturer" aria-expanded="true">Yayında Olmayan İlanlarım</a>
							    </li>
							  </ul>
							</div>

						  <div class="tab-content" id="pills-tabContent">
						    <div class="tab-pane fade show active" id="pills-description" role="tabpanel" aria-labelledby="pills-description-tab">
						    	
        
        <div class="row block-9 justify-content-center mb-5">
          <div class="col-md-8 mb-md-5">
          	
            <form id="upload-file-form" class="bg-light p-5 contact-form">
	            <div class="form-group">
					<input type="file" name="files" accept='image/png,image/jpeg,image/jpg' id="profile-img" style="display:none">
					<input type="file" name="files" accept='image/png,image/jpeg,image/jpg' id="img1" style="display:none">
					<input type="file" name="files" accept='image/png,image/jpeg,image/jpg' id="img2" style="display:none">
					<input type="file" name="files" accept='image/png,image/jpeg,image/jpg' id="img3" style="display:none">
					<input type="file" name="files" accept='image/png,image/jpeg,image/jpg' id="img4" style="display:none">
					<input type="file" name="files" accept='image/png,image/jpeg,image/jpg' id="img5" style="display:none">
					<img src="asset/home/images/add_pp.png" id="profile-img-tag" width="194px" height="150px" /><tab></tab>
					<img src="asset/home/images/add.png" id="img1-tag" width="194px" height="150px" /><tab></tab>
					<img src="asset/home/images/add.png" id="img2-tag" width="194px" height="150px" /><br><br>
					<img src="asset/home/images/add.png" id="img3-tag" width="194px" height="150px" /><tab></tab>
					<img src="asset/home/images/add.png" id="img4-tag" width="194px" height="150px" /><tab></tab>
					<img src="asset/home/images/add.png" id="img5-tag" width="194px" height="150px" />
					<input type="button" id="showImages" style="display: none;" onclick="showImg()" value="Fotoğrafları Yeniden Yükle" class="btn btn-primary py-2 px-5" >
					<input type="button" id="hideImages" style="display: none;" onclick="hideImg()" value="İptal" class="btn btn-danger py-2 px-5" >
				</div>
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
					<select name="" id="fuel" class="form-control">
						<option value="">Yakıt Seç</option>
					</select>
				</div>
              <div class="form-group">
                 <div class="icon"></div>
					<select name="" id="gear" class="form-control">
						<option value="">Vites Seç</option>
					</select>
				</div>
              <div class="form-group">
                <div class="icon"></div>
					<select name="" id="type" class="form-control">
						<option value="">Kasa Tipi Seç</option>
					</select>
				</div>
			 <div class="form-group">
                <div class="icon"></div>
					<select name="" id="city" class="form-control">
						<option value="">Şehir Seç</option>
					</select>
			</div>
              <div class="form-group">
                <input type="text" id="year" class="form-control" placeholder="Yıl" maxlength="4" onkeypress='return event.charCode>= 48 &&event.charCode<= 57'>
				</div>
              <div class="form-group">
                <input type="text" id="km" class="form-control" placeholder="Kilometre" maxlength="6" onkeypress='return event.charCode>= 48 &&event.charCode<= 57'>
              </div>
              <div class="form-group">
                <div class="icon"></div>
					<select name="" id="con" class="form-control">
						<option value="">Durum Seç</option>
					</select>
			</div>
              <div class="form-group">
                <input type="text" id="price" class="form-control" placeholder="Fiyat" maxlength="12" onkeypress='return event.charCode>= 48 &&event.charCode<= 57'>
              </div>
              <div class="form-group">
                <input type="checkbox" id="prp1"> ABC
                <div style="float:right;">TV <input type="checkbox" id="prp2"></div><br>
                <input type="checkbox" id="prp3"> Hava Yastığı
                <div style="float:right;">Arka Eğlence Paketi <input type="checkbox" id="prp4"></div><br>
                <input type="checkbox" id="prp5"> Immobilizer
                <div style="float:right;">Klima <input type="checkbox" id="prp6"></div><br>
                <input type="checkbox" id="prp7"> Yokuş Kalkış Desteği
                <div style="float:right;">Hız Sabitleyici <input type="checkbox" id="prp8"></div><br>
                <input type="checkbox" id="prp9"> Şeritten Ayrılma İkazı
                <div style="float:right;">Geri Görüş Kamerası <input type="checkbox" id="prp10"></div><br>
                <input type="checkbox" id="prp11"> Radyo - CD Çalar
                <div style="float:right;">Boya <input type="checkbox" id="prp12"></div><br>
                <input type="checkbox" id="prp13"> Bluetooth - Telefon
                <div style="float:right;">Değişen <input type="checkbox" id="prp14"></div><br>
                <input type="checkbox" id="prp15"> Navigasyon
              </div>
              <div class="form-group">
                <textarea name="" id="des" cols="30" rows="7" class="form-control" placeholder="Açıklama"></textarea>
              </div>
              <div class="form-group">
               <input type="button" id="upload" onclick="uploadAd()" value="Onayla" class="btn btn-primary py-2 px-5" >
               <input type="button" id="edit" style="display: none;" onclick="updateAd()" value="Kaydet" class="btn btn-primary py-2 px-5" >
              </div>
            </form>
          
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
   
    <div class="tab-pane fade" id="pills-manufacturer2" role="tabpanel" aria-labelledby="pills-manufacturer-tab2">
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
  <script src="asset/home/js/main.js"></script>
  
  <script src="asset/custom/profile.js"></script>
  
  <!-- Cars -->

  <script src="asset/home/cars/js/main.js"></script>

  <!-- Cars -->
    
  </body>
</html>
