function deleteById(boardId) {
	
	$.ajax({
		type: "post",
		url: `/soundcloud/board?cmd=delete&boardId=${boardId}`,
		dataType: "text"
	}).done(function(result) {
		console.log(result);
		if(result == 1) {
			alert("삭제 성공");
			location.href="/soundcloud/board?cmd=stream";
		} else {
			alert("삭제 실패");
		}
	}).fail(function(error) {
		console.log(error);
		console.log(error.responseText);
		console.log(error.status);
		alert("서버 오류");
	});
}