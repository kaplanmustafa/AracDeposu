$(document).ready(function()
{
	getCars();
	getVehicle();
	
	let x = document.getElementById("year");
	for(let i=2020; i>=1900; i--)
	{
		let option = document.createElement("option");
		option.text = i;
		x.add(option);
	}
	
	let kms = ["999999", "900000", "800000", "700000", "600000", "500000", "400000", "300000", "200000", "100000", "90000"
		, "80000", "70000", "60000", "50000", "40000", "30000", "20000", "15000", "10000", "5000", "0"];
	let y = document.getElementById("km");
	for(let i=0; i<kms.length; i++)
	{
		let option = document.createElement("option");
		option.text = kms[i];
		y.add(option);
	}
	
	let prices = ["10000000", "5000000", "1000000", "900000", "800000", "700000", "600000", "500000", "400000", "300000", "200000", "100000", 
		"90000", "80000", "70000", "60000", "50000", "40000", "30000", "20000", "15000", "10000", "5000", "1000"];
	let z = document.getElementById("price");
	for(let i=0; i<prices.length; i++)
	{
		let option = document.createElement("option");
		option.text = prices[i];
		z.add(option);
	}
});

function getVehicle()
{
	$.ajax({
		type:"POST",
		url:"getVehicle",
		success: function(data) {
			let x = document.getElementById("vehicle");
			$(data).each(function(i,val){
				let option = document.createElement("option");
				option.text = val.type;
				x.add(option);
			});
		},error: function(data) {
			alert("Hata");
		}
	});
}


function getBrand()
{
	let x = document.getElementById("vehicle").selectedIndex-1;
	
	let select = document.getElementById("brand");
	let length = select.options.length-1;
	for (i = length; i > 0; i--) {
	  select.options[i] = null;
	}
	
	select = document.getElementById("model");
	length = select.options.length-1;
	for (i = length; i > 0; i--) {
	  select.options[i] = null;
	}
	
	if(x >= 0)
	{
		$.ajax({
			type:"POST",
			url:"getBrand",
			data: { 'id' : x},
			success: function(data) {
				let x = document.getElementById("brand");
				$(data).each(function(i,val){
					let option = document.createElement("option");
					option.text = val.brand_name;
					x.add(option);
				});
			},error: function(data) {
				alert("Hata");
			}
		});
	}
}

function getModel()
{
	let x = document.getElementById("brand").selectedIndex-1;
	let y = document.getElementById("vehicle").selectedIndex-1;
	
	let select = document.getElementById("model");
	let length = select.options.length-1;
	for (i = length; i > 0; i--) {
	  select.options[i] = null;
	}
	
	if(x >= 0)
	{
		$.ajax({
			type:"POST",
			url:"getModel",
			data: { 'id' : x, 'id2': y},
			success: function(data) {
				var x = document.getElementById("model");
				$(data).each(function(i,val){
					var option = document.createElement("option");
					option.text = val.model_name;
					x.add(option);
				});
			},error: function(data) {
				alert("Hata");
			}
		});
	}
}

function getCars(){
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

function filters()
{
	let vehicle = document.getElementById('vehicle').selectedIndex;
	let brand = document.getElementById('brand').selectedIndex;
	let model = document.getElementById('model').selectedIndex;
	let year = document.getElementById('year').selectedIndex;
	let km = document.getElementById('km').selectedIndex;
	let price = document.getElementById('price').selectedIndex;
	
	if(vehicle == 0 && brand == 0 && model == 0 && year == 0 && km == 0 && price == 0) //Filtre yok
	{
		getCars();
	}
	else // En Az 1 Filtre Var
	{
		let vehicleVal = null;
		let brandVal = null;
		let modelVal = null;
		
		let yearVal = 1900;
		let kmVal = 999999;
		let priceVal = 10000000;
		
		if(vehicle != 0)
		{
			vehicleVal = $("#vehicle").val();
		}
		if(brand != 0)
		{
			brandVal = $("#brand").val();
		}
		if(model != 0)
		{
			modelVal = $("#model").val();
		}
		
		if(year != 0)
		{
			yearVal = $("#year").val();
		}
		if(km != 0)
		{
			kmVal = $("#km").val();
		}
		if(price != 0)
		{
			priceVal = $("#price").val();
		}
		
		$("#list").html('');
		
		$.ajax({
			type:"POST",
			url:"getFilters",
			data: { 'vehicle' : vehicleVal, 'brand' : brandVal, 'model' : modelVal, 'year' : yearVal, 'km' : kmVal, 'price' : priceVal},
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
	
}