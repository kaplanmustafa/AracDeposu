$(document).ready(function(){
	getAd();
});

function getAd(){
	$.ajax({
		type:"POST",
		contentType:'text/plain',
		url:"./../getAd",
		data: $("#id").val()+"",
		success: function(data) {
			$(data).each(function(i,val){
				let images = '<div class="img" style="background-image: url(./../'+val.pp+'); height:350px;"></div>';
				
				if(val.img1 != null)
					images += '<div class="img" style="background-image: url(./../'+val.img1+'); height:350px;"></div>';
				if(val.img2 != null)
					images += '<div class="img" style="background-image: url(./../'+val.img2+'); height:350px;"></div>';
				if(val.img3 != null)
					images += '<div class="img" style="background-image: url(./../'+val.img3+'); height:350px;"></div>';
				if(val.img4 != null)
					images += '<div class="img" style="background-image: url(./../'+val.img4+'); height:350px;"></div>';
				if(val.img5 != null)
					images += '<div class="img" style="background-image: url(./../'+val.img5+'); height:350px;"></div>';
							 
				
				images += '<div class="text text-center">'
					+'<span class="subheading" id="brand">'+val.brand+'</span>'
					+'<h2 id="model">'+val.model+'</h2>'
					+'</div>';
				
				let km = val.km;
				let gear = val.gear;
				let type = val.type;
				let year = val.year;
				let fuel = val.fuel;
				let des = val.description;
				
				if(val.abc == "0")
				{
					document.getElementById("abc").className = "ion-ios-close";
					document.getElementById("abcColor").className = "remove";
				}
				if(val.airbag == "0")
				{
					document.getElementById("ab").className = "ion-ios-close";
					document.getElementById("abColor").className = "remove";
				}
				if(val.immobilizer == "0")
				{
					document.getElementById("im").className = "ion-ios-close";
					document.getElementById("imColor").className = "remove";
				}
				if(val.hill == "0")
				{
					document.getElementById("hill").className = "ion-ios-close";
					document.getElementById("hillColor").className = "remove";
				}
				if(val.lane == "0")
				{
					document.getElementById("lane").className = "ion-ios-close";
					document.getElementById("laneColor").className = "remove";
				}
				if(val.cd == "0")
				{
					document.getElementById("cd").className = "ion-ios-close";
					document.getElementById("cdColor").className = "remove";
				}
				if(val.bluetooth == "0")
				{
					document.getElementById("bl").className = "ion-ios-close";
					document.getElementById("blColor").className = "remove";
				}
				if(val.navigation == "0")
				{
					document.getElementById("nv").className = "ion-ios-close";
					document.getElementById("nvColor").className = "remove";
				}
				if(val.tv == "0")
				{
					document.getElementById("tv").className = "ion-ios-close";
					document.getElementById("tvColor").className = "remove";
				}
				if(val.entertainment == "0")
				{
					document.getElementById("en").className = "ion-ios-close";
					document.getElementById("enColor").className = "remove";
				}
				if(val.ac == "0")
				{
					document.getElementById("ac").className = "ion-ios-close";
					document.getElementById("acColor").className = "remove";
				}
				if(val.cruise == "0")
				{
					document.getElementById("sp").className = "ion-ios-close";
					document.getElementById("spColor").className = "remove";
				}
				if(val.camera == "0")
				{
					document.getElementById("cm").className = "ion-ios-close";
					document.getElementById("cmColor").className = "remove";
				}
				if(val.color == "0")
				{
					document.getElementById("cl").className = "ion-ios-close";
					document.getElementById("clColor").className = "remove";
				}
				if(val.changing == "0")
				{
					document.getElementById("ch").className = "ion-ios-close";
					document.getElementById("chColor").className = "remove";
				}
				
				$("#images").html(images);
				$("#km").html(km);
				$("#gear").html(gear);
				$("#type").html(type);
				$("#year").html(year);
				$("#fuel").html(fuel);
				$("#des").html(des);
				
				$("#price").html('Fiyat: ₺' + val.price);
				$("#city").html('Şehir: ' + val.city);
				$("#date").html('İlan Tarihi: ' + new Date(val.ad_date).toLocaleDateString());

				document.getElementById("user_id").value = val.user_id;
				
				getUser();
				
				getCars();
			});
			
		},error: function(data) {
			alert(data);
		}
	});
}

function getCars(){
	$.ajax({
		type:"POST",
		url:"./../getCars",
		data: {'id': $("#id").val(), 'brand': document.getElementById('brand').innerHTML, 'model': document.getElementById('model').innerHTML},
		success: function(data) {
			let list = "";
			$(data).each(function(i,val){
				let cons = "";
				
				if(val.con == 'Yeni')count=5;
				else if(val.con == 'Yeni Gibi')count=4;
				else if(val.con == 'Mükemmel')count=3;
				else if(val.con == 'İyi')count=2;
				else if(val.con == 'Hasarlı')count=1;
				
				for(let i=0; i<count; i++)
				{
					cons += '<span class="icon-star text-warning"></span>';
				}
				
				list = list  
				+'<div class="col-lg-4 col-md-6 mb-4">'
				+'<div class="item-1 ">'
				+'  <a href="./../car-single/'+val.ad_id+'"><img src="./../'+val.pp+'" alt="'+val.brand+' '+val.model+'" class="img-fluid"></a>'
				+' <div class="item-1-contents bg-light">'
				+'	<div class="text-center">'
				+'	<h3><a href="car-single/'+val.ad_id+'">'+val.brand+' '+val.model+'</a></h3>'
				+'	<div class="rating">'
				+ cons	
				+'</div>'
				+'	<div class="rent-price"><span>₺'+val.price+'</span></div>'
				+'	</div>'
				+'	<ul class="specs">'
				+'	  <li>'
				+'		<span>Yıl</span>'
				+'		<span class="spec">'+val.year+'</span>'
				+'	  </li>'
				+'	  <li>'
				+'		<span>Km</span>'
				+'		<span class="spec">'+val.km+'</span>'
				+'	  </li>'
				+'  <li>'
				+'	<span>Yakıt</span>'
				+'	<span class="spec">'+val.fuel+'</span>'
				+'  </li>'
				+'  <li>'
				+'	<span>Vites</span>'
				+'	<span class="spec">'+val.gear+'</span>'
				+'  </li>'
				+'</ul>'
				+'<div class="d-flex action">'
				+'  <a href="./../car-single/'+val.ad_id+'" class="btn btn-primary">İncele</a>'
				+'</div>'
				+'  </div>'
				+'</div>'
				+'</div>';
			});
			$("#list").html(list);
		},error: function(data) {
			
		}
	});
}

function getUser(){
	$.ajax({
		type:"POST",
		url:"./../getAdUser",
		data: {'id': $("#user_id").val()+""},
		success: function(data) {
			$(data).each(function(i,val){
				$("#name-surname").html('İlan Sahibi: ' + val.name + ' ' + val.surname);
				$("#phone").html('Telefon: +90 ' + val.phone);
			});
			
		},error: function(data) {
			alert(data);
		}
	});
}