function loginBtn()
{
	let param ={
			username: $("#username").val(),
			password: $("#pass").val()
	}
	
	let ser_data = JSON.stringify(param);
	
	$.ajax({
		type:"POST",
		contentType:'application/json; charset=UTF-8',
		url:"controlUser",
		data:ser_data,
		success: function(data) {
			
			if(data == 'ERROR')
			{
				alert("Kullanıcı Adı veya Şifre Hatalı!");
			}
			else if(data == 'OK')
			{
				$(location).attr('href','index');
			}
			
		},error: function(data) {
			alert(data);
		}
	});
}