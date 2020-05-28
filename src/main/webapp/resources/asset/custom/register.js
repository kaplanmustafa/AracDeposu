function addUser()
{
	let name = document.getElementById("name").value;
	let surname = document.getElementById("surname").value;
	let email = document.getElementById("email").value;
	let phone = document.getElementById("phone").value;
	let pass = document.getElementById("pass").value;
	let pass2 = document.getElementById("pass2").value;
	
	if(name.length == 0 || surname.length == 0 || email.length == 0 || pass.length == 0 || pass2.length == 0
			|| !email.includes("@") || !email.includes("."))
	{
		// do nothing
	}
	else if(phone.length<10)
	{
		alert("Lütfen Telefon Numaranızı Tamamlayınız!");
	}
	else
	{
		let param ={
				phone: $("#phone").val(),
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
}