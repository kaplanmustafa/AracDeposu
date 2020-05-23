$(document).ready(function(){
	getNotes();
	//setInterval(function(){ getNotes();; }, 3000);
});

function getNotes(){
	$.ajax({
		type:"POST",
		url:"getNotes",
		success: function(data) {
			let list = "";
			$(data).each(function(i,val){
				list = list  
				+'<article class="col-lg-3 col-md-3 col-sm-3 col-xs-6 col-xxs-12">' //animate-box
				+'<h2 class="fh5co-article-title"><a href="detay/'+val.id+'">'+val.title+'</a></h2>'
				+'<h3><a href="detay/'+val.id+'" style="color:#999999">'+val.content+'</a></h3>'
				+'<span class="fh5co-meta fh5co-date">'+new Date(val.create_date).toLocaleString()+'</span>'
				+'</article>';
			});
			$("#list").html(list);
		},error: function(data) {
			alert(data);
		}
	});
}