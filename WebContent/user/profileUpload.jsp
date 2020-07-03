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
				<form action="/soundcloud/users?cmd=profileUploadProc" method="post" enctype="multipart/form-data">
					<div class="l-main-upload">
						<div class="uploadMain">
							<div class="uploadBackground"></div>
							<div class="uploadMain__chooserContainer sc-border-light g-shadow-light">
								<div class="uploadMain__beforeUploadChooser">
									<div class="uploadMain__content">
										<h1 class="uploadMain__title sc-font-light ">Upload your Image!</h1>
										<div class="uploadMain__chooser">
											<div class="chooseFiles">
												<div class="ds-image-box" style="margin: 0 auto 30px;">
													<img id="img__wrap" onerror="this.src='/soundcloud/image/userProfile.png'" src="${sessionScope.principal.userProfile}" width="260px" height="260px" />
												</div>
												<label class="chooseFiles__button sc-button sc-button-cta sc-button-large sc-button-color" style="min-width: 300px">Choose image to upload <input type="file" id="userProfile" name="userProfile" class="chooseFiles__input sc-visuallyhidden" />
												</label> <br> <input type="hidden" name="userId" value="${sessionScope.principal.id}" /> <label class="chooseFiles__button sc-button sc-button-cta sc-button-large" style="min-width: 300px">Upload <input type="submit" class="chooseFiles__input sc-visuallyhidden">
												</label>
											</div>
										</div>
									</div>
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
	<script src="/soundcloud/js/profilePreview.js"></script>