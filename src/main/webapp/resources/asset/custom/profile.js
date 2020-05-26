$(document).ready(function(){
	getVehicle();
});


function getVehicle(){
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

function getBrand(){
	let x = document.getElementById("vehicle").selectedIndex-1;
	
	let select = document.getElementById("brand");
	let length = select.options.length-1;
	for (i = length; i > 0; i--) {
	  select.options[i] = null;
	}
	
	let select2 = document.getElementById("model");
	let length2 = select2.options.length-1;
	for (i = length2; i > 0; i--) {
	  select2.options[i] = null;
	}
	
	if(x >= 0)
	{
		$.ajax({
			type:"POST",
			url:"getBrand",
			data: { 'id' : x},
			success: function(data) {
				var x = document.getElementById("brand");
				$(data).each(function(i,val){
					var option = document.createElement("option");
					option.text = val.brand_name;
					x.add(option);
				});
			},error: function(data) {
				alert("Hata");
			}
		});
	}
}

function getModel(){
	let x = document.getElementById("brand").selectedIndex-1;
	
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
			data: { 'id' : x},
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