function addUser()
{
	let param ={
			username: $("#username").val(),
			name: $("#name").val(),
			surname: $("#surname").val(),
			email: $("#email").val(),
			password: $("#pass").val(),
			pass2: $("#pass2").val()
	}
	
	let ser_data = JSON.stringify(param);
	
	$.ajax({
		type:"POST",
		contentType:'application/json; charset=UTF-8',
		url:"addUser",
		data:ser_data,
		success: function(data) {
			if(data == '1')
			{
				alert("Parolalar Eşleşmiyor!");
			}
			else if(data == 'ERROR')
			{
				alert("İşlem Sırasında Bir Hata Oluştu!");
			}
			else if(data == 'OK')
			{
				alert("Kayıt Başarılı");
				$(location).attr('href','login');
			}
			
		},error: function(data) {
			alert(data);
		}
	});
}