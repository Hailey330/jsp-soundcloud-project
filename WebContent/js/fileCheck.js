$("#musicFile").on("change", function(e) {
	console.log(e);
	var f = e.target.files[0];
	if (!f.type.match("audio*")) {
		alert("오디오 파일만 업로드할 수 있습니다.");
		$("#musicFile").val('');
		return;
	}
	
})