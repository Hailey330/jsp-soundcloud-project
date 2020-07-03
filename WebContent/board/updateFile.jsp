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

				<form action="/soundcloud/board?cmd=updateFileProc" method="post" enctype="multipart/form-data">
					<div class="l-main-upload">
						<div class="uploadMain">
							<div class="uploadBackground"></div>
							<div class="uploadMain__chooserContainer sc-border-light g-shadow-light">
								<div class="uploadMain__beforeUploadChooser">
									<div class="uploadMain__content">
										<h1 class="uploadMain__title sc-font-light ">Reload your tracks &amp; albums here</h1>
										<div class="uploadMain__chooser">
											<div class="chooseFiles">
												<label class="chooseFiles__button sc-button sc-button-cta sc-button-large sc-button-color" style="min-width: 300px">Choose files to upload <input type="file" id="musicFile" name="musicFile" class="chooseFiles__input sc-visuallyhidden" value="${boardDto.board.musicFile}" required>

												</label> <br> <input type="hidden" name="userId" value="${sessionScope.principal.id}" /> <input type="hidden" name="boardId" value="${boardDto.board.id}" /> <input type="hidden" name="title" value="${boardDto.board.title}" /> <input type="hidden" name="content" value="${boardDto.board.content}" /> <input type="hidden" name="musicImage" value="${boardDto.board.fileImage}" /> <label class="chooseFiles__button sc-button sc-button-cta sc-button-large" style="min-width: 300px">Upload <input type="submit" class="chooseFiles__input sc-visuallyhidden">
												</label>
											</div>
										</div>

									</div>
									<aside class="uploadMain__hqNote">
										Provide FLAC, WAV, ALAC, or AIFF for highest audio quality. <a href="https://help.soundcloud.com/hc/articles/115003452847-Uploading-requirements#typeOfFile" target="_blank" rel="noopener noreferrer"> Learn more about lossless HD. </a>
									</aside>
								</div>
							</div>

							<div class="uploadMain__activeUploads">
								<div class="activeUploads sc-list-nostyle">
									<ul class="sc-list-nostyle sc-clearfix"></ul>
								</div>
							</div>

							<div class="uploadMain__textAd">
								<div class="uploadTextAd"></div>
							</div>

							<div class="uploadMain__foot sc-clearfix">
								<p class="uploadMain__noticeWithoutActiveUploads">
									<a href="https://help.soundcloud.com/hc/articles/115003452847#typeOfFile">Supported file types and sizes</a>&nbsp;⁃ <a href="https://help.soundcloud.com/hc/sections/115001112868-Uploading">Upload troubleshooting tips</a>&nbsp;⁃ <a href="https://help.soundcloud.com/hc/sections/115001112968-SoundCloud-s-Copyright-policies">Copyright FAQs</a>
								</p>
								<p class="uploadMain__noticeWithoutActiveUploads">
									By uploading, you confirm that your sounds comply with our <a href="/terms-of-use">Terms of Use</a> and you don't infringe anyone else's rights.
								</p>
								<p class="uploadMain__noticeWithActiveUploads">
									By uploading, you confirm that your sounds comply with our <a href="/terms-of-use" target="_blank">Terms of Use</a> and you don't infringe anyone else's rights.
								</p>

								<div class="l-footer sc-text-verylight standard sc-border-light-top">
									<a class="sc-link-verylight" href="/terms-of-use" title="Terms of use">Legal</a>&nbsp;⁃ <a class="sc-link-verylight" href="/pages/privacy" title="Privacy policy">Privacy</a>&nbsp;⁃ <a class="sc-link-verylight" href="/pages/cookies" title="Cookies policy">Cookies</a>&nbsp;⁃ <a class="sc-link-verylight" href="/imprint" title="Company information">Imprint</a>&nbsp;⁃ <a class="sc-link-verylight" href="//creators.soundcloud.com" target="_blank" title="Creator Resources">Creator Resources</a>&nbsp;⁃ <a class="sc-link-verylight" href="//blog.soundcloud.com" target="_blank" title="SoundCloud blog">Blog</a>&nbsp;⁃ <a class="sc-link-verylight" href="/charts/top" title="Charts">Charts</a>&nbsp;⁃ <a class="sc-link-verylight" href="/popular/searches" title="Popular searches">Popular searches</a>
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
	<script src="/soundcloud/js/fileCheck.js"></script>