function addNote()
{
	let param ={
			title: $("#note_title").val(),
			content: $("#note_detail").val()
	}
	
	let ser_data = JSON.stringify(param);
	
	$.ajax({
		type:"POST",
		contentType:'application/json; charset=UTF-8',
		url:"addNote",
		data:ser_data,
		success: function(data) {
			alert(data);
		},error: function(data) {
			alert(data);
		}
	});
}