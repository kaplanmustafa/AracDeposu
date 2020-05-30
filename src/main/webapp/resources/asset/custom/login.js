function loginBtn()
{
	let param ={
			email: $("#email").val(),
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
				$(location).attr('href','profile');
			}
			else if(data == 'ADMIN')
			{
				$(location).attr('href','admin');
			}
			else if(data == 'NOTACTIVE')
			{
				alert("Lütfen Mail Adresinizi Doğrulayın!");
			}
			
		},error: function(data) {
			alert(data);
		}
	});
}