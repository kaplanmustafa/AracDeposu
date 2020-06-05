function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            
            reader.onload = function (e) {
                $('#profile-img-tag').attr('src', e.target.result);
            }
            reader.readAsDataURL(input.files[0]);
        }
        else
    	{
        	$('#profile-img-tag').attr('src', './asset/home/images/add_pp.png');
    	}
    }
    $("#profile-img").change(function(){
        readURL(this);
    });

    function readURL1(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            
            reader.onload = function (e) {
                $('#img1-tag').attr('src', e.target.result);
            }
            reader.readAsDataURL(input.files[0]);
        }
        else
    	{
        	$('#img1-tag').attr('src', './asset/home/images/add.png');
    	}
    }
    $("#img1").change(function(){
        readURL1(this);
    });
    
    function readURL2(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            
            reader.onload = function (e) {
                $('#img2-tag').attr('src', e.target.result);
            }
            reader.readAsDataURL(input.files[0]);
        }
        else
    	{
        	$('#img2-tag').attr('src', './asset/home/images/add.png');
    	}
    }
    $("#img2").change(function(){
        readURL2(this);
    });
    
    function readURL3(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            
            reader.onload = function (e) {
                $('#img3-tag').attr('src', e.target.result);
            }
            reader.readAsDataURL(input.files[0]);
        }
        else
    	{
        	$('#img3-tag').attr('src', './asset/home/images/add.png');
    	}
    }
    $("#img3").change(function(){
        readURL3(this);
    });
    
    function readURL4(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            
            reader.onload = function (e) {
                $('#img4-tag').attr('src', e.target.result);
            }
            reader.readAsDataURL(input.files[0]);
        }
        else
    	{
        	$('#img4-tag').attr('src', './asset/home/images/add.png');
    	}
    }
    $("#img4").change(function(){
        readURL4(this);
    });
    
    function readURL5(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            
            reader.onload = function (e) {
                $('#img5-tag').attr('src', e.target.result);
            }
            reader.readAsDataURL(input.files[0]);
        }
        else
    	{
        	$('#img5-tag').attr('src', './asset/home/images/add.png');
    	}
    }
    $("#img5").change(function(){
        readURL5(this);
    });
    
    $("#profile-img-tag").click(function () {
        $("#profile-img").trigger('click');
    });
    $("#img1-tag").click(function () {
        $("#img1").trigger('click');
    });
    $("#img2-tag").click(function () {
        $("#img2").trigger('click');
    });
    $("#img3-tag").click(function () {
        $("#img3").trigger('click');
    });
    $("#img4-tag").click(function () {
        $("#img4").trigger('click');
    });
    $("#img5-tag").click(function () {
        $("#img5").trigger('click');
    });

$(document).ready(function()
{
	getVehicle();
	getCity();
	getCars();
	
	let fuels = ["Benzin", "Benzin & LPG", "Dizel", "Hybrid", "Elektrik"];
	let x = document.getElementById("fuel");
	for(let i=0; i<5; i++)
	{
		let option = document.createElement("option");
		option.text = fuels[i];
		x.add(option);
	}
	
	let gears = ["Manuel", "Yarı Otomatik", "Otomatik"];
	let y = document.getElementById("gear");
	for(let i=0; i<3; i++)
	{
		let option = document.createElement("option");
		option.text = gears[i];
		y.add(option);
	}
	
	let cons = ["Yeni", "Yeni Gibi", "Mükemmel", "İyi", "Hasarlı"];
	let z = document.getElementById("con");
	for(let i=0; i<5; i++)
	{
		let option = document.createElement("option");
		option.text = cons[i];
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

function getCity()
{
	$.ajax({
		type:"POST",
		url:"getCity",
		success: function(data) {
			let x = document.getElementById("city");
			$(data).each(function(i,val){
				let option = document.createElement("option");
				option.text = val.city_name;
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
	
	select = document.getElementById("type");
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
	
	
		$.ajax({
			type:"POST",
			url:"getType",
			data: { 'id' : x},
			success: function(data) {
				let y = document.getElementById("type");
				$(data).each(function(i,val){
					let option = document.createElement("option");
					option.text = val.type_name;
					y.add(option);
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

function uploadAd()
{
	let vehicle = document.getElementById('vehicle').selectedIndex;
	let brand = document.getElementById('brand').selectedIndex;
	let model = document.getElementById('model').selectedIndex;
	let fuel = document.getElementById('fuel').selectedIndex;
	let gear = document.getElementById('gear').selectedIndex;
	let con = document.getElementById('con').selectedIndex;
	let type = document.getElementById('type').selectedIndex;
	let city = document.getElementById('city').selectedIndex;
	let year = document.getElementById('year').value;
	let km = document.getElementById('km').value;
	let price = document.getElementById('price').value;
	
	if(vehicle == 0 || brand == 0 || model == 0 || fuel == 0 || gear == 0 || con == 0 || type == 0 || city == 0 || 
			year.length <4 || km.length == 0 || price.length == 0)
	{
		alert("Lütfen Gerekli Alanları Doldurunuz!");
	}
	else if(year < 1900 || year > 2020)
	{
		alert("Lütfen 1900 veya Sonrası Bir Yıl Giriniz (Max : 2020)");
	}
	else if(document.getElementById("profile-img").value == "")
	{
		alert("Lütfen Vitrin Fotoğrafı Seçiniz!")
	}
	else
	{
		let prp1=0,prp2=0,prp3=0,prp4=0,prp5=0,prp6=0,prp7=0,prp8=0,prp9=0,prp10=0,prp11=0,prp12=0,prp13=0,prp14=0,prp15=0;
		
		let formData = new FormData();
		formData.append('section', 'general');
		formData.append('action', 'previewImg');
		
		formData.append('files', $('#profile-img')[0].files[0]);
		
		for(let i=1; i<6; i++)
		{
			if(document.getElementById("img"+i).value != "") 
			{
				formData.append('files', $('#img'+i)[0].files[0]);
			}
		}
		
		if(document.getElementById("prp1").checked)
			prp1 = 1;
		if(document.getElementById("prp2").checked)
			prp2 = 1;
		if(document.getElementById("prp3").checked)
			prp3 = 1;
		if(document.getElementById("prp4").checked)
			prp4 = 1;
		if(document.getElementById("prp5").checked)
			prp5 = 1;
		if(document.getElementById("prp6").checked)
			prp6 = 1;
		if(document.getElementById("prp7").checked)
			prp7 = 1;
		if(document.getElementById("prp8").checked)
			prp8 = 1;
		if(document.getElementById("prp9").checked)
			prp9 = 1;
		if(document.getElementById("prp10").checked)
			prp10 = 1;
		if(document.getElementById("prp11").checked)
			prp11 = 1;
		if(document.getElementById("prp12").checked)
			prp12 = 1;
		if(document.getElementById("prp13").checked)
			prp13 = 1;
		if(document.getElementById("prp14").checked)
			prp14 = 1;
		if(document.getElementById("prp15").checked)
			prp15 = 1;
		
		let param ={
				vehicle: $("#vehicle").val(),
				brand: $("#brand").val(),
				model: $("#model").val(),
				fuel: $("#fuel").val(),
				gear: $("#gear").val(),
				con: $("#con").val(),
				type: $("#type").val(),
				city: $("#city").val(),
				year: $("#year").val(),
				km: $("#km").val(),
				price: $("#price").val(),
				description: $("#des").val(),
				abc: prp1,
				tv: prp2,
				airbag: prp3,
				entertainment: prp4,
				immobilizer: prp5,
				ac: prp6,
				hill: prp7,
				cruise: prp8,
				lane: prp9,
				camera: prp10,
				cd: prp11,
				color: prp12,
				bluetooth: prp13,
				changing: prp14,
				navigation: prp15
		}
		
		let ser_data = JSON.stringify(param);
		
		$.ajax({
			type:"POST",
			contentType:'application/json; charset=UTF-8',
			url:"addAd",
			data:ser_data,
			success:  {
				
			},error:  {
				
			}
		});
		
		$.ajax({
			type:"POST",
			url:"uploadImage",
			data: formData,
			enctype: "multipart/form-data",
			processData: false,
		    contentType: false,
		    cache: false,
			success: function(data) {
				if(data == 'OK')
				{
					alert("İlanınız Onaylandıktan Sonra Yayınlanacaktır");
					location.reload();
				}
				else if(data == 'ERROR')
				{
					alert("Lütfen Tekrar Deneyiniz!");
					location.reload();
				}
			},error:  function(data){
				
			}
		});
	}
}

function getCars(){
	$.ajax({
		type:"POST",
		url:"getCarsProfile",
		data: {'id': $("#id").val()+""},
		success: function(data) {
			let list = "";
			let list1 = "";
			let list2 = "";
			let count = 0;
			let ad_count = 0;
			
			let addWaiting ="";
			let addActive="";
			
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
				
				addActive="";
				addWaiting ="";
				if(val.active == "0")
				{
					addWaiting = '<a style="color: white;" class="btn btn-primary">Onay Bekliyor</a>';
				}
				else if(val.active == "-1")
				{
					addWaiting = '<a style="color: white;" class="btn btn-danger">Onaylanmadı</a>';
				}
				else
				{
					addActive = '<a style="margin-right: 10px; color: white;" id="'+val.ad_id+'" onclick="notPublishAd(id)" class="btn btn-danger">Yayından Kaldır</a>'
								  +'<a style="margin-right: 10px; color: white;" id="'+val.ad_id+'" onclick="editAd(id)" class="btn btn-info">Düzenle</a>';
				}
				
				list="";
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
				+ addActive
				+ addWaiting
				+'</div>'
				+'  </div>'
				+'</div>'
				+'</div>';
				
				if(val.active == "0" || val.active == "-1")
				{
					list2 += list;
				}
				else
				{
					list1 += list;
				}
			});
			$("#active-ads").html(list1);
			$("#waiting-ads").html(list2);
			$("#count").html('<span>İlan Sayısı:</span>' + ad_count);
		},error: function(data) {
			alert(data);
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
				getCars();
			}
		},error:  {
			
		}
	});
}

function editAd(id)
{	
	document.getElementById("pills-description-tab").click();
	document.getElementById("upload").style.display = "none";
	document.getElementById("edit").style.display = "block";
	
	$.ajax({
		type:"POST",
		url:"getAdByAdId",
		data: {'id': id+""},
		success: function(data) {
			$(data).each(function(i,val){
				$('#ad_id').attr('value', val.ad_id);
				$('#profile-img-tag').attr('src', val.pp);
				
				if(val.img1 != null)
					$('#img1-tag').attr('src', val.img1);
				if(val.img2 != null)
					$('#img2-tag').attr('src', val.img2);
				if(val.img3 != null)
					$('#img3-tag').attr('src', val.img3);	
				if(val.img4 != null)
					$('#img4-tag').attr('src', val.img4);
				if(val.img5 != null)
					$('#img5-tag').attr('src', val.img5);
				
				document.getElementById("vehicle").style.display = "none";
				document.getElementById("brand").style.display = "none";
				document.getElementById("model").style.display = "none";
				document.getElementById("type").style.display = "none";
				
				document.getElementById("fuel").value = val.fuel;
				document.getElementById("gear").value = val.gear;
				document.getElementById("city").value = val.city;
				
				document.getElementById("year").value = val.year;
				document.getElementById("km").value = val.km;
				document.getElementById("con").value = val.con;
				document.getElementById("price").value = val.price;
				document.getElementById("des").value = val.description;
				
				if(val.abc == "1")
				{
					document.getElementById("prp1").checked = true;
				}
				if(val.airbag == "1")
				{
					document.getElementById("prp3").checked = true;
				}
				if(val.immobilizer == "1")
				{
					document.getElementById("prp5").checked = true;
				}
				if(val.hill == "1")
				{
					document.getElementById("prp7").checked = true;
				}
				if(val.lane == "1")
				{
					document.getElementById("prp9").checked = true;
				}
				if(val.cd == "1")
				{
					document.getElementById("prp11").checked = true;
				}
				if(val.bluetooth == "1")
				{
					document.getElementById("prp13").checked = true;
				}
				if(val.navigation == "1")
				{
					document.getElementById("prp15").checked = true;
				}
				if(val.tv == "1")
				{
					document.getElementById("prp2").checked = true;
				}
				if(val.entertainment == "1")
				{
					document.getElementById("prp4").checked = true;
				}
				if(val.ac == "1")
				{
					document.getElementById("prp6").checked = true;
				}
				if(val.cruise == "1")
				{
					document.getElementById("prp8").checked = true;
				}
				if(val.camera == "1")
				{
					document.getElementById("prp10").checked = true;
				}
				if(val.color == "1")
				{
					document.getElementById("prp12").checked = true;
				}
				if(val.changing == "1")
				{
					document.getElementById("prp14").checked = true;
				}
				
			});
		},error: {
			
		}
	});
}

function updateAd()
{
	let fuel = document.getElementById('fuel').selectedIndex;
	let gear = document.getElementById('gear').selectedIndex;
	let con = document.getElementById('con').selectedIndex;
	let city = document.getElementById('city').selectedIndex;
	let year = document.getElementById('year').value;
	let km = document.getElementById('km').value;
	let price = document.getElementById('price').value;
	
	if(fuel == 0 || gear == 0 || con == 0 || city == 0 || year.length <4 || km.length == 0 || price.length == 0)
	{
		alert("Lütfen Gerekli Alanları Doldurunuz!");
	}
	else if(year < 1900 || year > 2020)
	{
		alert("Lütfen 1900 veya Sonrası Bir Yıl Giriniz (Max : 2020)");
	}
	else if(document.getElementById("profile-img-tag").src == "http://localhost:8085/aracdeposu/asset/home/images/add_pp.png")
	{
		alert("Lütfen Vitrin Fotoğrafı Seçiniz!")
	}
	else
	{
		let prp1=0,prp2=0,prp3=0,prp4=0,prp5=0,prp6=0,prp7=0,prp8=0,prp9=0,prp10=0,prp11=0,prp12=0,prp13=0,prp14=0,prp15=0;
		
		let formData = new FormData();
		formData.append('section', 'general');
		formData.append('action', 'previewImg');
		
		formData.append('files', $('#profile-img')[0].files[0]);
		
		for(let i=1; i<6; i++)
		{
			if(document.getElementById("img"+i).value != "") 
			{
				formData.append('files', $('#img'+i)[0].files[0]);
			}
		}
		
		if(document.getElementById("prp1").checked)
			prp1 = 1;
		if(document.getElementById("prp2").checked)
			prp2 = 1;
		if(document.getElementById("prp3").checked)
			prp3 = 1;
		if(document.getElementById("prp4").checked)
			prp4 = 1;
		if(document.getElementById("prp5").checked)
			prp5 = 1;
		if(document.getElementById("prp6").checked)
			prp6 = 1;
		if(document.getElementById("prp7").checked)
			prp7 = 1;
		if(document.getElementById("prp8").checked)
			prp8 = 1;
		if(document.getElementById("prp9").checked)
			prp9 = 1;
		if(document.getElementById("prp10").checked)
			prp10 = 1;
		if(document.getElementById("prp11").checked)
			prp11 = 1;
		if(document.getElementById("prp12").checked)
			prp12 = 1;
		if(document.getElementById("prp13").checked)
			prp13 = 1;
		if(document.getElementById("prp14").checked)
			prp14 = 1;
		if(document.getElementById("prp15").checked)
			prp15 = 1;
		
		let param ={
				ad_id: document.getElementById("ad_id").value,
				fuel: $("#fuel").val(),
				gear: $("#gear").val(),
				con: $("#con").val(),
				city: $("#city").val(),
				year: $("#year").val(),
				km: $("#km").val(),
				price: $("#price").val(),
				description: $("#des").val(),
				abc: prp1,
				tv: prp2,
				airbag: prp3,
				entertainment: prp4,
				immobilizer: prp5,
				ac: prp6,
				hill: prp7,
				cruise: prp8,
				lane: prp9,
				camera: prp10,
				cd: prp11,
				color: prp12,
				bluetooth: prp13,
				changing: prp14,
				navigation: prp15
		}
		
		let ser_data = JSON.stringify(param);
		
		$.ajax({
			type:"POST",
			contentType:'application/json; charset=UTF-8',
			url:"updateAd",
			data:ser_data,
			success:  {
				
			},error:  {
				
			}
		});
		/*
		$.ajax({
			type:"POST",
			url:"uploadImage",
			data: formData,
			enctype: "multipart/form-data",
			processData: false,
		    contentType: false,
		    cache: false,
			success: function(data) {
				if(data == 'OK')
				{
					alert("İlanınız Onaylandıktan Sonra Yayınlanacaktır");
					location.reload();
				}
				else if(data == 'ERROR')
				{
					alert("Lütfen Tekrar Deneyiniz!");
					location.reload();
				}
			},error:  function(data){
				
			}
		});*/
	}
}