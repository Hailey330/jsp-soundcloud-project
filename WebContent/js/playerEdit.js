function playButton() {
	$("#play-btn").trigger("click");
}

$(document).ready(function() {
	$('.audioplayer-playpause').attr('id','play-btn');
});
