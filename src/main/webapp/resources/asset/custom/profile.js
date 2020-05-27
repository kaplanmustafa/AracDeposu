function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            
            reader.onload = function (e) {
                $('#profile-img-tag').attr('src', e.target.result);
            }
            reader.readAsDataURL(input.files[0]);
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

$(document).ready(function(){
	getVehicle();
	getCity();
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

function getCity(){
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

function getBrand(){
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

function getModel(){
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

function uploadAd(){
	//var formData = new FormData($('#upload-file-form')[0]);

	var formData = new FormData();
	formData.append('section', 'general');
	formData.append('action', 'previewImg');
	// Attach file
	formData.append('files', $('#profile-img')[0].files[0]);
	formData.append('files', $('#img1')[0].files[0]);
	formData.append('files', $('#img2')[0].files[0]);
	formData.append('files', $('#img3')[0].files[0]);
	formData.append('files', $('#img4')[0].files[0]);
	formData.append('files', $('#img5')[0].files[0]);
	
	
	$.ajax({
		type:"POST",
		url:"uploadAd",
		data: formData,
		enctype: "multipart/form-data",
		processData: false,
	    contentType: false,
	    cache: false,
		success: {
			
		},error:  {
			
		}
	});
	
}