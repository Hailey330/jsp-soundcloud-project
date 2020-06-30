$("#musicImage").on("change", function(e) {
	console.log(e);
	var f = e.target.files[0];
	if (!f.type.match("image*")) {
		alert("이미지만 첨부할 수 있습니다.");
		$("#musicImage").val('');
		return;
	}
	
	var reader = new FileReader();
	
	reader.onload = function(e) {
		$("#img__wrap").attr("src", e.target.result);
	};
	
	reader.readAsDataURL(f); // 비동기
	
	
})