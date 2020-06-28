<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
<meta charset="UTF-8">
<meta name="description" content="Deerhost Template">
<meta name="keywords" content="Deerhost, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Upload your music &amp; audio and share it with the world. on SoundCloud</title>

<!-- Google Font -->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,600,700,800,900&display=swap" rel="stylesheet">

<!-- Css Styles -->
<link rel="stylesheet" href="/soundcloud/deerhost/css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="/soundcloud/deerhost/css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="/soundcloud/deerhost/css/elegant-icons.css" type="text/css">
<link rel="stylesheet" href="/soundcloud/deerhost/css/flaticon.css" type="text/css">
<link rel="stylesheet" href="/soundcloud/deerhost/css/owl.carousel.min.css" type="text/css">
<link rel="stylesheet" href="/soundcloud/deerhost/css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="/soundcloud/deerhost/css/style.css" type="text/css">

<link rel="stylesheet" type="text/css" href="/soundcloud/login/css/main.css">

<link rel="stylesheet" href="/soundcloud/css/upload.css">
<link rel="stylesheet" href="/soundcloud/css/uploadHtml.css">

</head>

<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Offcanvas Menu Begin -->
	<div class="offcanvas__menu__overlay"></div>
	<div class="offcanvas__menu__wrapper">
		<div class="canvas__close">
			<span class="fa fa-times-circle-o"></span>
		</div>
		<div class="offcanvas__logo">
			<a href="#"><img src="img/logo.png" alt=""></a>
		</div>
		<nav class="offcanvas__menu mobile-menu">
			<ul>
				<li class="active"><a href="./index.html">Home</a></li>
				<li><a href="./about.html">About</a></li>
				<li><a href="./hosting.html">Hosting</a></li>
				<li><a href="#">Pages</a>
					<ul class="dropdown">
						<li><a href="./pricing.html">Pricing</a></li>
						<li><a href="./blog-details.html">Blog Details</a></li>
						<li><a href="./404.html">404</a></li>
					</ul></li>
				<li><a href="./blog.html">News</a></li>
				<li><a href="./contact.html">Contact</a></li>
			</ul>
		</nav>
		<div id="mobile-menu-wrap"></div>
		<div class="offcanvas__auth">
			<ul>
				<li><a href="#"><span class="icon_chat_alt"></span> Live chat</a></li>
				<li><a href="#"><span class="fa fa-user"></span> Login / Register</a></li>
			</ul>
		</div>
		<div class="offcanvas__info">
			<ul>
				<li><span class="icon_phone"></span> +1 123-456-7890</li>
				<li><span class="fa fa-envelope"></span> Support@gmail.com</li>
			</ul>
		</div>
	</div>
	<!-- Offcanvas Menu End -->

	<!-- Header Section Begin -->
	<header class="header-section header-normal">

		<div class="container">
			<div class="row header__front">
				<div class="col-lg-1 col-md-1">
					<div class="header__logo">
						<a href="/soundcloud/main?cmd=home"><img src="/soundcloud/deerhost/img/logo-white-cloud.png" alt=""></a>
					</div>
				</div>
				<div class="col-lg-9 col-md-9">
					<nav class="header__menu">
						<ul>
							<li><a href="/soundcloud/main?cmd=home">Home</a></li>
							<li><a href="#">Stream</a></li>
							<li><a href="#">Library</a></li>
							<li class="active"><a href="#">Upload</a></li>
							<li><a href="#">YOURS</a>
								<ul class="dropdown">
									<li><a href="#">Profile</a></li>
									<li><a href="/soundcloud/board?cmd=Library">Likes</a></li>
									<li><a href="/soundcloud/board?cmd=Library">Following</a></li>
									<li><a href="/soundcloud/users?cmd=logout">Sign out</a></li>
								</ul></li>
						</ul>
					</nav>
				</div>
			</div>
			<div class="canvas__open">
				<span class="fa fa-bars"></span>
			</div>
		</div>
	</header>
	<!-- Header End -->

	<!-- Blog Section Begin -->
	<section class="blog-section">
		<div class="container">
			<div class="col-lg-13">
				<form action="/soundcloud/board?cmd=profileUploadProc" method="post" enctype="multipart/form-data">
					<div class="l-main-upload">
						<div class="uploadMain">
							<div class="uploadBackground"></div>
							<div class="uploadMain__chooserContainer sc-border-light g-shadow-light">
								<div class="uploadMain__beforeUploadChooser">
									<div class="uploadMain__content">
										<h1 class="uploadMain__title sc-font-light ">Upload your tracks &amp; albums here</h1>
										<div class="uploadMain__chooser">
											<div class="chooseFiles">
												<label class="chooseFiles__button sc-button sc-button-cta sc-button-large" style="min-width: 300px">Choose files to upload <input class="chooseFiles__input sc-visuallyhidden"
													id="file" type="file">
												</label>
											</div>
										</div>

									</div>
									<aside class="uploadMain__hqNote">
										Provide FLAC, WAV, ALAC, or AIFF for highest audio quality. <a href="https://help.soundcloud.com/hc/articles/115003452847-Uploading-requirements#typeOfFile" target="_blank"
											rel="noopener noreferrer"> Learn more about lossless HD. </a>
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
									<a href="https://help.soundcloud.com/hc/articles/115003452847#typeOfFile">Supported file types and sizes</a>&nbsp;⁃ <a href="https://help.soundcloud.com/hc/sections/115001112868-Uploading">Upload
										troubleshooting tips</a>&nbsp;⁃ <a href="https://help.soundcloud.com/hc/sections/115001112968-SoundCloud-s-Copyright-policies">Copyright FAQs</a>
								</p>
								<p class="uploadMain__noticeWithoutActiveUploads">
									By uploading, you confirm that your sounds comply with our <a href="/terms-of-use">Terms of Use</a> and you don't infringe anyone else's rights.
								</p>
								<p class="uploadMain__noticeWithActiveUploads">
									By uploading, you confirm that your sounds comply with our <a href="/terms-of-use" target="_blank">Terms of Use</a> and you don't infringe anyone else's rights.
								</p>
								<div class="l-footer sc-text-verylight standard sc-border-light-top">
									<a class="sc-link-verylight" href="/terms-of-use" title="Terms of use">Legal</a>&nbsp;⁃ <a class="sc-link-verylight" href="/pages/privacy" title="Privacy policy">Privacy</a>&nbsp;⁃ <a
										class="sc-link-verylight" href="/pages/cookies" title="Cookies policy">Cookies</a>&nbsp;⁃ <a class="sc-link-verylight" href="/imprint" title="Company information">Imprint</a>&nbsp;⁃ <a
										class="sc-link-verylight" href="//creators.soundcloud.com" target="_blank" title="Creator Resources">Creator Resources</a>&nbsp;⁃ <a class="sc-link-verylight" href="//blog.soundcloud.com"
										target="_blank" title="SoundCloud blog">Blog</a>&nbsp;⁃ <a class="sc-link-verylight" href="/charts/top" title="Charts">Charts</a>&nbsp;⁃ <a class="sc-link-verylight" href="/popular/searches"
										title="Popular searches">Popular searches</a>
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
	<script src="/soundcloud/deerhost/js/jquery-3.3.1.min.js"></script>
	<script src="/soundcloud/deerhost/js/bootstrap.min.js"></script>
	<script src="/soundcloud/deerhost/js/jquery.slicknav.js"></script>
	<script src="/soundcloud/deerhost/js/owl.carousel.min.js"></script>
	<script src="/soundcloud/deerhost/js/main.js"></script>

</body>

</html>