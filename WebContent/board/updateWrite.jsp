<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">

<title>Upload your music &amp; audio and share it with the world. on SoundCloud</title>

<%@ include file="../include/boot/css.jsp"%>
<link rel="stylesheet" href="/soundcloud/css/upload.css">
<link rel="stylesheet" href="/soundcloud/css/uploadHtml.css">

</head>

<body>
	<%@ include file="../include/offcanvas.jsp"%>
	<%@ include file="../include/header.jsp"%>

	<!-- Blog Section Begin -->
	<section class="blog-section">
		<div class="container">
			<div class="col-lg-13">
				<form action="/soundcloud/board?cmd=updateWriteProc" method="post" enctype="multipart/form-data">
					<div class="l-main-upload">
						<div class="uploadMain">

							<div class="detail-submit">

								<!-- 이미지 업로드 -->
								<div class="ds-image-box">
									<img id="img__wrap" src="${boardDto.board.fileImage}"> <label class="imageLabel">Reload Image <input class="h-input" type="file" name="musicImage" id="musicImage" value="${boardDto.board.fileImage}" required>
									</label>
								</div>

								<!-- 글쓰기 -->

								<div class="track-detail-form">
									<p class="tdf-text tdf-required">Title</p>
									<input class="txt-input" type="text" name="title" id="title" value="${boardDto.board.title}" required>

									<p class="tdf-text">Description</p>
									<textarea class="txt-input txta active-ring" name="content" id="content">${boardDto.board.content}</textarea>
									<input type="hidden" name="userId" value="${sessionScope.principal.id}" /> <input type="hidden" name="boardId" value="${boardDto.board.id}" /> <input class="inputLabel" type="submit" value="create">
								</div>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</section>
	<!-- Blog Section End -->


	<!-- Js Plugins -->
	<%@ include file="../include/boot/deerhost.jsp"%>
	<script src="/soundcloud/js/imgPreview.js"></script>