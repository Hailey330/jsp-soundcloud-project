<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
<meta charset="UTF-8">
<meta name="description" content="Deerhost Template">
<meta name="keywords" content="Deerhost, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>SoundCloud</title>

<!-- Google Font -->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,600,700,800,900&display=swap" rel="stylesheet">

<!-- Css Styles -->
<link rel="stylesheet" href="deerhost/css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="deerhost/css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="deerhost/css/elegant-icons.css" type="text/css">
<link rel="stylesheet" href="deerhost/css/flaticon.css" type="text/css">
<link rel="stylesheet" href="deerhost/css/owl.carousel.min.css" type="text/css">
<link rel="stylesheet" href="deerhost/css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="deerhost/css/style.css" type="text/css">
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
			<a href="/soundcloud/index.jsp"><img src="deerhost/img/logo-white-width.png" alt=""></a>
		</div>
		<nav class="offcanvas__menu mobile-menu">
			<ul>
				<li class="active"><a href="./main.jsp">Home</a></li>
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
	<header class="header-section">

		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-3">
					<div class="header__logo">
						<a href="/soundcloud/index.jsp"><img src="deerhost/img/logo-white-width.png" alt=""></a>
					</div>
				</div>
				<div class="col-lg-9 col-md-9">
					<nav class="header__menu">
						<ul>
							<li><a href="/soundcloud/users?cmd=login">Sign in</a></li>
							<li><a href="/soundcloud/users?cmd=join" class="create__btn">Create account</a></li>
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

	<!-- Hero Section Begin -->
	<section class="hero-section">
		<div class="hero__slider owl-carousel">
			<div class="hero__item set-bg" data-setbg="deerhost/img/hero/hero-3.jpg">
				<div class="container">
					<div class="row">
						<div class="col-lg-6">
							<div class="hero__text">
								<h2>Connect on SoundCloud</h2>
								<h5>
									Discover, stream, and share<br />a constantly expanding mix of music
								</h5>
								<a href="user/join.jsp" class="primary-btn">Sign up for free</a>
							</div>
						</div>
						<div class="col-lg-6">
							<div class="hero__img">
								<img src="deerhost/img/hero/creator.webp" alt="">
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="hero__item set-bg" data-setbg="deerhost/img/hero/hero-4.jpg">
				<div class="container">
					<div class="row">
						<div class="col-lg-6">
							<div class="hero__text">
								<h2>Calling all creators</h2>
								<h5>
									Get on SoundCloud to connect with fans,<br />share your sounds, and grow your audience.
								</h5>
								<a href="user/join.jsp" class="primary-btn">Sign up for free</a>
							</div>
						</div>
						<div class="col-lg-6">
							<div class="hero__img">
								<img src="deerhost/img/hero/create.webp" alt="">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Hero Section End -->

	<!-- Register Domain Section Begin -->
	<section class="register-domain spad">
		<div class="container">
			<div class="row d-flex justify-content-center">
				<div class="col-lg-8">
					<div class="register__text">
						<div class="section-title">
							<h3>
								Hear what’s trending for free</br> in the SoundCloud community
							</h3>
						</div>
						<div class="register__form">
							<form action="#">
								<input type="text" placeholder="Search for artists, bands, tracks, podcasts">
								<button type="submit" class="site-btn">Search</button>
							</form>
							<div class="section-title">
								<br /> <br />
								<h4>or</h4>
							</div>
							<div class="upload__form">
								<button type="submit" class="site-btn">Upload your own</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Register Domain Section End -->

	<!-- Footer Section Begin -->
	<footer class="footer-section">
		<div class="footer__top">
			<div class="container">
				<div class="row">
					<div class="col-lg-8 col-md-8">
						<div class="footer__top-auth">
							<h5>Thanks for listening. Now join in.</h5>
							<a href="#" class="primary-btn">Create account</a> <a href="#" class="primary-btn sign-up">Sign in</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="footer__text set-bg" data-setbg="deerhost/img/footer-bg.png">
			<div class="container">
				<div class="row">
					<div class="col-lg-4 col-md-6 col-sm-12">
						<div class="footer__text-about">
							<div class="footer__social">
								<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i class="fa fa-twitter"></i></a> <a href="#"><i class="fa fa-youtube-play"></i></a> <a href="#"><i class="fa fa-instagram"></i></a>
							</div>
						</div>
					</div>

				</div>
				<div class="footer__text-copyright">
					<p>
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						Copyright &copy;
						<script>
							document.write(new Date().getFullYear());
						</script>
						All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					</p>
				</div>
			</div>
		</div>
	</footer>
	<!-- Footer Section End -->

	<!-- Js Plugins -->
	<script src="deerhost/js/jquery-3.3.1.min.js"></script>
	<script src="deerhost/js/bootstrap.min.js"></script>
	<script src="deerhost/js/jquery.slicknav.js"></script>
	<script src="deerhost/js/owl.carousel.min.js"></script>
	<script src="deerhost/js/main.js"></script>
</body>

</html>
