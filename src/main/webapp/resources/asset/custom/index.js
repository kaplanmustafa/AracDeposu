$(document).ready(function(){
	getCars();
});

function getCars(){
	$.ajax({
		type:"POST",
		url:"getCars",
		success: function(data) {
			let list = "";
			let count = 0;
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
				+'  <a href="car-single/'+val.ad_id+'" class="btn btn-primary">İncele</a>'
				+'</div>'
				+'  </div>'
				+'</div>'
				+'</div>';
			});
			$("#list").html(list);
		},error: function(data) {
			alert(data);
		}
	});
}