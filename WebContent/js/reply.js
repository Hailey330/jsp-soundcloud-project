function replyDelete(replyId) {
	
		$.ajax({
			type : "post",
			url : "/soundcloud/reply?cmd=deleteProc",
			data : "replyId=" + replyId,
			contentType : "application/x-www-form-urlencoded; charset=UTF-8",
			dataType : "text"
		}).done(function(result) {
			if (result == "1" ) {
				alert("댓글 삭제 성공");
				var replyItem = $("#reply-"+replyId);
				replyItem.remove();
			} else {
				alert("댓글 삭제 실패");
			}
		}).fail(function(error) {
			alert("댓글 삭제 실패");
		});
}

function replyWrite(boardId, userId) {
	if (userId === undefined) {
		alert("로그인이 필요합니다.");
		return;
	}

	var data = {
		boardId : boardId,
		userId : userId,
		content : $("#tokenInput__comment").val()
	};

	$.ajax({
		type : "post",
		url : "/soundcloud/reply?cmd=writeProc",
		data : JSON.stringify(data),
		contentType : "application/json; charset=UTF-8",
		dataType : "json"
	}).done(function(result) {
		if (result == -1 || result == 0) {
			alert("댓글 작성 실패");
		} else {
			alert("댓글 작성 성공");
			$("#reply__list").empty();
			console.log(result);
			renderReplyList(result, userId);
			$("#tokenInput__comment").val("");
//			location.reload();
		}
	}).fail(function(error) {
		alert("댓글 작성 실패");
	});
}

function renderReplyList(replyDtos, userId) {
	for(var replyDto of replyDtos){
		$("#reply__list").append(makeReplyItem(replyDto, userId));
	}
}

function makeReplyItem(replyDto, userId) {
	// reply-id 추가 시작
	var replyItem = `<li id="reply-${replyDto.reply.id}" class="commentsList__item">`;
	replyItem += `<div class="commentItem">`;
	replyItem += `<div class="commentItem__read">`;
	replyItem += `<i class="commentItem__avatar">`;
	replyItem += `<div class="image m-user image__lightOutline readOnly customImage sc-artwork sc-artwork-placeholder-1 image__rounded m-loaded" style="height: 40px; width: 40px;">`;
	// reply-id 추가 끝

	if(replyDto.userProfile == null) {
		replyItem += `<img src="/soundcloud/image/userProfile.png" style="width: 40px; height: 40px; opacity: 1;" class="sc-artwork sc-artwork-placeholder-1 image__rounded image__full g-opacity-transition">`;
	} else {
		replyItem += `<img src="${replyDto.userProfile}" style="width: 40px; height: 40px; opacity: 1;" class="sc-artwork sc-artwork-placeholder-1 image__rounded image__full g-opacity-transition">`;
	}
	replyItem += `</div>`;
	replyItem += `</i>`;
	replyItem += `<div class="commentItem__content">`;
	replyItem += `<span class="commentItem__username sc-text-light">`;
	replyItem += `<i class="sc-link-light">${replyDto.username}</i>`;
	replyItem += `</span>`;
	replyItem += `<div class="commentItem__body sc-hyphenate">`;
	replyItem += `<span>`;
	replyItem += `<p>${replyDto.reply.content}</p>`;
	replyItem += `</span>`;
	replyItem += `</div>`;
	replyItem += `</div>`;
	replyItem += `<div class="commentItem__meta">`;
	replyItem += `<span class="commentItem__createdAt sc-text-light">`;
	replyItem += `<time class="relativeTime" title="Posted on 27 May 2020" datetime="2020-05-27T01:42:35.000Z">`;
	replyItem += `<span aria-hidden="true">1 month ago</span>`;
	replyItem += `</time>`;
	replyItem += `</span>`;
	// 휴지통 추가 시작
	replyItem += `<div class="commentItem__controls">`;
	if(replyDto.reply.userId == userId) {
		replyItem += `<button type="button" onclick="replyDelete(${replyDto.reply.id})" class="sc-button-delete sc-button sc-button-small sc-button-icon sc-button-responsive" tabindex="0" aria-haspopup="true" role="button" aria-owns="dropdown-button-29171" title="Delete this comment" aria-label="Delete this comment">Delete this comment</button>`;
	}
	replyItem += `</div>`;
	// 휴지통 추가 끝
	replyItem += `</div>`;
	replyItem += `</div>`;
	replyItem += `</div>`;
	replyItem += `</li>`;
	return replyItem;
}

function enterkey(boardId, userId) {
	if (window.event.keyCode == 13) {
		// 엔터키가 눌렸을 때 실행할 내용
		replyWrite(boardId, userId);
	}
}
