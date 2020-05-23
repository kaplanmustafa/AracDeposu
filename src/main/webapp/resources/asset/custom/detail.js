$(document).ready(function(){
	getNote();
});

function getNote(){
	$.ajax({
		type:"POST",
		contentType:'text/plain',
		url:"./../getNote",
		data: $("#id").val()+"",
		success: function(data) {
			$("#note_title").val(data.title);
			$("#note_detail").html(data.content);
			
		},error: function(data) {
			alert(data);
		}
	});
}


function updateNote()
{
	let param ={
			id: $("#id").val(),
			title: $("#note_title").val(),
			content: $("#note_detail").val()
	}
	
	let ser_data = JSON.stringify(param);
	
	$.ajax({
		type:"POST",
		contentType:'application/json; charset=UTF-8',
		url:"./../updateNote",
		data:ser_data,
		success: function(data) {
			getNote();
		},error: function(data) {
			alert(data);
		}
	});
}
	
	function deleteNote()
	{
		let param ={
				id: $("#id").val()
		}
		
		let ser_data = JSON.stringify(param);
		
		$.ajax({
			type:"POST",
			contentType:'application/json; charset=UTF-8',
			url:"./../deleteNote",
			data:ser_data,
			success: function(data) {
				alert(data);
				window.history.back();
			},error: function(data) {
				alert(data);
			}
		});
}