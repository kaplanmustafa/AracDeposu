$(document).ready(function()
{
	getWaitingAds();
	getActiveAds();
	getDeniedAds();
});

function getWaitingAds(){
	$.ajax({
		type:"POST",
		url:"getWaitingAds",
		success: function(data) {
			let list = "";
			let count = 0;
			let ad_count = 0;
			$(data).each(function(i,val){
				ad_count++;
				
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
				+'  <a href="car-single/'+val.ad_id+'"><img src="'+val.pp+'" alt="'+val.brand+' '+val.model+'" class="img-fluid"></a>'
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
				+'  <a style="margin-right: 10px;" href="car-single/'+val.ad_id+'" class="btn btn-primary">İncele</a>'
				+'  <a style="margin-right: 10px; color: white;" id="'+val.ad_id+'" onclick="publishAd(id)" class="btn btn-success">Yayınla</a>'
				+'  <a style="color: white;" id="'+val.ad_id+'" onclick="denyAd(id)" class="btn btn-danger">Onaylama</a>'
				+'</div>'
				+'  </div>'
				+'</div>'
				+'</div>';
			});
			$("#waiting-ads").html(list);
			$("#waiting").html('<span>Onay Bekleyen İlan:</span>' + ad_count);
		},error:  {
			
		}
	});
}

function getDeniedAds(){
	$.ajax({
		type:"POST",
		url:"getDeniedAds",
		success: function(data) {
			let list = "";
			let count = 0;
			let ad_count = 0;
			$(data).each(function(i,val){
				ad_count++;
				
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
				+'  <a href="car-single/'+val.ad_id+'"><img src="'+val.pp+'" alt="'+val.brand+' '+val.model+'" class="img-fluid"></a>'
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
				+'  <a style="margin-right: 10px;" href="car-single/'+val.ad_id+'" class="btn btn-primary">İncele</a>'
				+'  <a style="margin-right: 10px; color: white;" id="'+val.ad_id+'" onclick="publishAd(id)" class="btn btn-success">Yayınla</a>'
				+'  <a style="margin-right: 10px; color: white;" id="'+val.ad_id+'" onclick="deleteAd(id)" class="btn btn-danger">Sil</a>'
				+'</div>'
				+'  </div>'
				+'</div>'
				+'</div>';
			});
			$("#denied-ads").html(list);
			$("#denied").html('<span>Onaylanmayan İlan:</span>' + ad_count);
		},error:  {
			
		}
	});
}

function publishAd(id)
{
	$.ajax({
		type:"POST",
		url:"publishAd",
		data: {'id': id+""},
		success: function(data) {
			if(data == 'OK')
			{
				alert("İlan Yayınlandı");
				getWaitingAds();
				getActiveAds();
				getDeniedAds();
			}
		},error:  {
			
		}
	});
}

function denyAd(id)
{
	$.ajax({
		type:"POST",
		url:"denyAd",
		data: {'id': id+""},
		success: function(data) {
			if(data == 'OK')
			{
				alert("İlan Onaylanmadı");
				getWaitingAds();
				getActiveAds();
				getDeniedAds();
			}
		},error:  {
			
		}
	});
}

function notPublishAd(id)
{
	$.ajax({
		type:"POST",
		url:"notPublishAd",
		data: {'id': id+""},
		success: function(data) {
			if(data == 'OK')
			{
				alert("İlan Yayından Kaldırıldı");
				getWaitingAds();
				getActiveAds();
				getDeniedAds();
			}
		},error:  {
			
		}
	});
}

function deleteAd(id)
{
	$.ajax({
		type:"POST",
		url:"deleteAd",
		data: {'id': id+""},
		success: function(data) {
			if(data == 'OK')
			{
				alert("İlan Silindi");
				getWaitingAds();
				getActiveAds();
				getDeniedAds();
			}
		},error:  {
			
		}
	});
}

function getActiveAds(){
	$.ajax({
		type:"POST",
		url:"getActiveAds",
		success: function(data) {
			let list = "";
			let count = 0;
			let ad_count = 0;
			$(data).each(function(i,val){
				ad_count++;
				
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
				+'  <a href="car-single/'+val.ad_id+'"><img src="'+val.pp+'" alt="'+val.brand+' '+val.model+'" class="img-fluid"></a>'
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
				+'  <a style="margin-right: 10px;" href="car-single/'+val.ad_id+'" class="btn btn-primary">İncele</a>'
				+'  <a style="margin-right: 10px; color: white;" id="'+val.ad_id+'" onclick="notPublishAd(id)" class="btn btn-danger">Yayından Kaldır</a>'
				+'  <a style="margin-right: 10px; color: white;" id="'+val.ad_id+'" onclick="deleteAd(id)" class="btn btn-danger">Sil</a>'
				+'</div>'
				+'  </div>'
				+'</div>'
				+'</div>';
			});
			$("#active-ads").html(list);
			$("#active").html('<span>Yayındaki İlan:</span>' + ad_count);
		},error: {
			
		}
	});
}
