<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
<meta charset="UTF-8">
<meta name="description" content="Deerhost Template">
<meta name="keywords" content="Deerhost, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Your stream on SoundCloud</title>

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

<link rel="stylesheet" href="/soundcloud/music/style.css">

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
			<a href="#"><img src="#" alt=""></a>
		</div>
		<nav class="offcanvas__menu mobile-menu">
			<ul>
				<li><a href="/soundcloud/main?cmd=home">Home</a></li>
				<li><a href="/soundcloud/board?cmd=stream">Stream</a></li>
				<li><a href="/soundcloud/board?cmd=library">Library</a></li>
				<li><a href="/soundcloud/board?cmd=fileUpload">Upload</a></li>
				<li><a href="#">YOURS</a>
					<ul class="dropdown">
						<li><a href="/soundcloud/board?cmd=profile">Profile</a></li>
						<li><a href="/soundcloud/board?cmd=library">Likes</a></li>
						<li><a href="/soundcloud/board?cmd=library">Following</a></li>
						<li><a href="/soundcloud/users?cmd=logout">Sign out</a></li>
					</ul></li>
			</ul>
		</nav>
		<div id="mobile-menu-wrap"></div>
		
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
							<li><a href="/soundcloud/board?cmd=stream">Stream</a></li>
							<li><a href="/soundcloud/board?cmd=library">Library</a></li>
							<li><a href="/soundcloud/board?cmd=fileUpload">Upload</a></li>
							<li><a href="#">YOURS</a>
								<ul class="dropdown">
									<li><a href="/soundcloud/board?cmd=profile">Profile</a></li>
									<li><a href="/soundcloud/board?cmd=library">Likes</a></li>
									<li><a href="/soundcloud/board?cmd=library">Following</a></li>
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
			<div class="row">
				<div class="col-lg-9">
					<div class="blog__header">
						<div class="blog__stream__title">
							<h5>Hear the latest posts from the people you’re following:</h5>
						</div>
					</div>
					<div class="row">

						<div class="container h-100">
							<div class="row h-100 align-items-center">
								<div class="col-10">

									<!-- Welcome Music Area -->
									<div class="poca-music-area mt-20 d-flex align-items-center flex-wrap" data-animation="fadeInUp" data-delay="900ms">
										<div class="poca-music-thumbnail">
											<img src="/soundcloud/music/img/bg-img/4.jpg" alt="">
										</div>
										<div class="poca-music-content">
											<div class="music-meta-data">
												<p>
													<a href="#" class="music-author">creator</a>
												</p>
											</div>
											<h6>노래 제목</h6>
											<!-- Music Player -->
											<div class="poca-music-player">
												<audio preload="auto" controls>
													<source src="/soundcloud/music/audio/dummy-audio.mp3">
												</audio>
											</div>
											<!-- Likes, Share & Download -->
											<div class="likes-share-download d-flex align-items-center justify-content-between">
												<a href="#"><i class="fa fa-heart" aria-hidden="true"></i> 29 </a>
												<div>
													<a href="#" class="mr-4"><i class="fa fa-play" aria-hidden="true"></i> 17.5K </a> <a href="#"><i class="fa fa-comment" aria-hidden="true"></i> 9 </a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class="container h-100">
							<div class="row h-100 align-items-center">
								<div class="col-10">

									<!-- Welcome Music Area -->
									<div class="poca-music-area mt-30 d-flex align-items-center flex-wrap" data-animation="fadeInUp" data-delay="900ms">
										<div class="poca-music-thumbnail">
											<img src="/soundcloud/music/img/bg-img/4.jpg" alt="">
										</div>
										<div class="poca-music-content">
											<div class="music-meta-data">
												<p>
													<a href="#" class="music-author">creator</a>
												</p>
											</div>
											<h6>노래 제목</h6>
											<!-- Music Player -->
											<div class="poca-music-player">
												<audio preload="auto" controls>
													<source src="/soundcloud/music/audio/dummy-audio.mp3">
												</audio>
											</div>
											<!-- Likes, Share & Download -->
											<div class="likes-share-download d-flex align-items-center justify-content-between">
												<a href="#"><i class="fa fa-heart" aria-hidden="true"></i> 29 </a>
												<div>
													<a href="#" class="mr-4"><i class="fa fa-play" aria-hidden="true"></i> 17.5K </a> <a href="#"><i class="fa fa-comment" aria-hidden="true"></i> 9 </a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class="container h-100">
							<div class="row h-100 align-items-center">
								<div class="col-10">

									<!-- Welcome Music Area -->
									<div class="poca-music-area mt-30 d-flex align-items-center flex-wrap" data-animation="fadeInUp" data-delay="900ms">
										<div class="poca-music-thumbnail">
											<img src="/soundcloud/music/img/bg-img/4.jpg" alt="">
										</div>
										<div class="poca-music-content">
											<div class="music-meta-data">
												<p>
													<a href="#" class="music-author">creator</a>
												</p>
											</div>
											<h6>노래 제목</h6>
											<!-- Music Player -->
											<div class="poca-music-player">
												<audio preload="auto" controls>
													<source src="/soundcloud/music/audio/dummy-audio.mp3">
												</audio>
											</div>
											<!-- Likes, Share & Download -->
											<div class="likes-share-download d-flex align-items-center justify-content-between">
												<a href="#"><i class="fa fa-heart" aria-hidden="true"></i> 29 </a>
												<div>
													<a href="#" class="mr-4"><i class="fa fa-play" aria-hidden="true"></i> 17.5K </a> <a href="#"><i class="fa fa-comment" aria-hidden="true"></i> 9 </a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class="container h-100">
							<div class="row h-100 align-items-center">
								<div class="col-10">

									<!-- Welcome Music Area -->
									<div class="poca-music-area mt-30 d-flex align-items-center flex-wrap" data-animation="fadeInUp" data-delay="900ms">
										<div class="poca-music-thumbnail">
											<img src="/soundcloud/music/img/bg-img/4.jpg" alt="">
										</div>
										<div class="poca-music-content">
											<div class="music-meta-data">
												<p>
													<a href="#" class="music-author">creator</a>
												</p>
											</div>
											<h6>노래 제목</h6>
											<!-- Music Player -->
											<div class="poca-music-player">
												<audio preload="auto" controls>
													<source src="/soundcloud/music/audio/dummy-audio.mp3">
												</audio>
											</div>
											<!-- Likes, Share & Download -->
											<div class="likes-share-download d-flex align-items-center justify-content-between">
												<a href="#"><i class="fa fa-heart" aria-hidden="true"></i> 29 </a>
												<div>
													<a href="#" class="mr-4"><i class="fa fa-play" aria-hidden="true"></i> 17.5K </a> <a href="#"><i class="fa fa-comment" aria-hidden="true"></i> 9 </a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>


						<div class="container h-100">
							<div class="row h-100 align-items-center">
								<div class="col-10">

									<!-- Welcome Music Area -->
									<div class="poca-music-area mt-30 d-flex align-items-center flex-wrap" data-animation="fadeInUp" data-delay="900ms">
										<div class="poca-music-thumbnail">
											<img src="/soundcloud/music/img/bg-img/4.jpg" alt="">
										</div>
										<div class="poca-music-content">
											<div class="music-meta-data">
												<p>
													<a href="#" class="music-author">creator</a>
												</p>
											</div>
											<h6>노래 제목</h6>
											<!-- Music Player -->
											<div class="poca-music-player">
												<audio preload="auto" controls>
													<source src="/soundcloud/music/audio/dummy-audio.mp3">
												</audio>
											</div>
											<!-- Likes, Share & Download -->
											<div class="likes-share-download d-flex align-items-center justify-content-between">
												<a href="#"><i class="fa fa-heart" aria-hidden="true"></i> 29 </a>
												<div>
													<a href="#" class="mr-4"><i class="fa fa-play" aria-hidden="true"></i> 17.5K </a> <a href="#"><i class="fa fa-comment" aria-hidden="true"></i> 9 </a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>


						<div class="container h-100">
							<div class="row h-100 align-items-center">
								<div class="col-10">

									<!-- Welcome Music Area -->
									<div class="poca-music-area mt-30 d-flex align-items-center flex-wrap" data-animation="fadeInUp" data-delay="900ms">
										<div class="poca-music-thumbnail">
											<img src="/soundcloud/music/img/bg-img/4.jpg" alt="">
										</div>
										<div class="poca-music-content">
											<div class="music-meta-data">
												<p>
													<a href="#" class="music-author">creator</a>
												</p>
											</div>
											<h6>노래 제목</h6>
											<!-- Music Player -->
											<div class="poca-music-player">
												<audio preload="auto" controls>
													<source src="/soundcloud/music/audio/dummy-audio.mp3">
												</audio>
											</div>
											<!-- Likes, Share & Download -->
											<div class="likes-share-download d-flex align-items-center justify-content-between">
												<a href="#"><i class="fa fa-heart" aria-hidden="true"></i> 29 </a>
												<div>
													<a href="#" class="mr-4"><i class="fa fa-play" aria-hidden="true"></i> 17.5K </a> <a href="#"><i class="fa fa-comment" aria-hidden="true"></i> 9 </a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class="container h-100">
							<div class="row h-100 align-items-center">
								<div class="col-10">

									<!-- Welcome Music Area -->
									<div class="poca-music-area mt-30 d-flex align-items-center flex-wrap" data-animation="fadeInUp" data-delay="900ms">
										<div class="poca-music-thumbnail">
											<img src="/soundcloud/music/img/bg-img/4.jpg" alt="">
										</div>
										<div class="poca-music-content">
											<div class="music-meta-data">
												<p>
													<a href="#" class="music-author">creator</a>
												</p>
											</div>
											<h6>노래 제목</h6>
											<!-- Music Player -->
											<div class="poca-music-player">
												<audio preload="auto" controls>
													<source src="/soundcloud/music/audio/dummy-audio.mp3">
												</audio>
											</div>
											<!-- Likes, Share & Download -->
											<div class="likes-share-download d-flex align-items-center justify-content-between">
												<a href="#"><i class="fa fa-heart" aria-hidden="true"></i> 29 </a>
												<div>
													<a href="#" class="mr-4"><i class="fa fa-play" aria-hidden="true"></i> 17.5K </a> <a href="#"><i class="fa fa-comment" aria-hidden="true"></i> 9 </a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>

					</div>
				</div>
				<div class="col-lg-3">
					<div class="blog__sidebar">
						<div class="blog__sidebar__item">
							<div class="sidebar__title">
								<h6>Follow us</h6>
							</div>
							<div class="sidebar__social">
								<a href="#" class="facebook"><i class="fa fa-facebook"></i></a> <a href="#" class="twitter"><i class="fa fa-twitter"></i></a> <a href="#" class="youtube"><i class="fa fa-youtube-play"></i></a>
								<a href="#" class="instagram"><i class="fa fa-instagram"></i></a>
							</div>
						</div>
						<div class="blog__sidebar__item">
							<div class="sidebar__title">
								<h6>Likes</h6>
							</div>
							<div class="sidebar__feature__post">
								<div class="sidebar__feature__item">

									<h6>
										<a href="#">The Best</a>
									</h6>
									<ul>
										<li><i class="fa fa-clock-o"></i> Seb 06, 2019</li>
									</ul>
								</div>
								<div class="sidebar__feature__item">
									<h6>
										<a href="#">The Best Web Hosting Service with Bitcoin at GeeksHosted</a>
									</h6>
									<ul>
										<li><i class="fa fa-clock-o"></i> Seb 06, 2019</li>
									</ul>
								</div>
								<div class="sidebar__feature__item">
									<h6>
										<a href="#">The Best Web Hosting Service with Bitcoin at GeeksHosted</a>
									</h6>
									<ul>
										<li><i class="fa fa-clock-o"></i> Seb 06, 2019</li>
									</ul>
								</div>
								<div class="sidebar__feature__item">
									<h6>
										<a href="#">The Best Web Hosting Service with Bitcoin at GeeksHosted</a>
									</h6>
									<ul>
										<li><i class="fa fa-clock-o"></i> Seb 06, 2019</li>
									</ul>
								</div>
							</div>
						</div>
						<div class="blog__sidebar__item">
							<div class="sidebar__subscribe">
								<div class="sidebar__title">
									<h6>Go mobile</h6>
								</div>
								<form action="#">
									<button type="submit" class="site-btn">App store Banner</button>
									<button type="submit" class="site-btn">App store Banner</button>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Blog Section End -->

	<!-- Footer Section Begin -->
	<footer class="footer-section">
		<div class="footer__text">
			<div class="container">
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
	<script src="/soundcloud/deerhost/js/jquery-3.3.1.min.js"></script>
	<script src="/soundcloud/deerhost/js/bootstrap.min.js"></script>
	<script src="/soundcloud/deerhost/js/jquery.slicknav.js"></script>
	<script src="/soundcloud/deerhost/js/owl.carousel.min.js"></script>
	<script src="/soundcloud/deerhost/js/main.js"></script>

	<script src="/soundcloud/music/js/jquery.min.js"></script>
	<script src="/soundcloud/music/js/poca.bundle.js"></script>
	<script src="/soundcloud/music/js/default-assets/active.js"></script>


</body>

</html>