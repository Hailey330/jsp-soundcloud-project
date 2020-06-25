<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
<meta charset="UTF-8">
<meta name="description" content="Deerhost Template">
<meta name="keywords" content="Deerhost, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Sign in SoundCloud</title>

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:400,500,600,700,800,900&display=swap"
	rel="stylesheet">

<!-- Css Styles -->
<link rel="stylesheet" href="../deerhost/css/bootstrap.min.css"
	type="text/css">
<link rel="stylesheet" href="../deerhost/css/font-awesome.min.css"
	type="text/css">
<link rel="stylesheet" href="../deerhost/css/elegant-icons.css"
	type="text/css">
<link rel="stylesheet" href="../deerhost/css/flaticon.css"
	type="text/css">
<link rel="stylesheet" href="../deerhost/css/owl.carousel.min.css"
	type="text/css">
<link rel="stylesheet" href="../deerhost/css/slicknav.min.css"
	type="text/css">
<link rel="stylesheet" href="../deerhost/css/style.css" type="text/css">
<link rel="stylesheet" type="text/css"
	href="../login/vendor/bootstrap/css/bootstrap.min.css">

<link rel="stylesheet" type="text/css"
	href="../login/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css"
	href="../login/fonts/iconic/css/material-design-iconic-font.min.css">
<link rel="stylesheet" type="text/css"
	href="../login/vendor/animate/animate.css">
<link rel="stylesheet" type="text/css"
	href="../login/vendor/css-hamburgers/hamburgers.min.css">
<link rel="stylesheet" type="text/css"
	href="../login/vendor/animsition/css/animsition.min.css">
<link rel="stylesheet" type="text/css"
	href="../login/vendor/select2/select2.min.css">
<link rel="stylesheet" type="text/css"
	href="../login/vendor/daterangepicker/daterangepicker.css">
<link rel="stylesheet" type="text/css" href="../login/css/util.css">
<link rel="stylesheet" type="text/css" href="../login/css/main.css">
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
			<a href="#"><img src="../deerhost/img/logo-white.png" alt=""></a>
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
				<li><a href="#"><span class="icon_chat_alt"></span> Live
						chat</a></li>
				<li><a href="#"><span class="fa fa-user"></span> Login /
						Register</a></li>
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
	<header class="header__front">
			<div class="canvas__open">
				<span class="fa fa-bars"></span>
			</div>
	</header>
	<!-- Header End -->

	<div class="limiter">
		<div class="container-login100"
			style="background-image: url('../login/images/main.jpeg');">
			<div class="wrap-login100">
				<form class="login100-form validate-form">
					<span class="login100-form-title p-b-50 p-t-27"> Sign in </span>

					<div class="wrap-input100 validate-input"
						data-validate="Enter username">
						<input class="input100" type="text" name="email"
							placeholder="Your email address"> <span
							class="focus-input100" data-placeholder="&#xf207;"></span>
					</div>

					<div class="wrap-input100 validate-input"
						data-validate="Enter password">
						<input class="input100" type="password" name="pass"
							placeholder="Password"> <span class="focus-input100"
							data-placeholder="&#xf191;"></span>
					</div>

					<div class="contact100-form-checkbox">
						<input class="input-checkbox100" id="ckb1" type="checkbox"
							name="remember-me"> <label class="label-checkbox100"
							for="ckb1"> Remember me </label>
					</div>

					<div class="container-login100-form-btn">
						<button class="login100-form-btn">Continue</button>
					</div>

					<div class="text-center p-t-15">
						<div class="txt1">
							<span>or</span>
						</div>
					</div>

					<div class="container-kakao-form-btn p-t-15">
						<button class="kakao-form-btn">Continue with Kakao</button>
					</div>

					<div class="text-center p-t-40">
						<a class="txt2" href="./join.jsp"> Not a member? </a>
					</div>
				</form>
			</div>
		</div>
	</div>


	<div id="dropDownSelect1"></div>

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
						All rights reserved | This template is made with <i
							class="fa fa-heart" aria-hidden="true"></i> by <a
							href="https://colorlib.com" target="_blank">Colorlib</a>
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					</p>
				</div>
			</div>
		</div>
	</footer>
	<!-- Footer Section End -->

	<!-- Js Plugins -->
	<script src="../deerhost/js/jquery-3.3.1.min.js"></script>
	<script src="../deerhost/js/bootstrap.min.js"></script>
	<script src="../deerhost/js/jquery.slicknav.js"></script>
	<script src="../deerhost/js/owl.carousel.min.js"></script>
	<script src="../deerhost/js/main.js"></script>
	<!--===============================================================================================-->
	<script src="../login/vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script src="../login/vendor/animsition/js/animsition.min.js"></script>
	<!--===============================================================================================-->
	<script src="../login/vendor/bootstrap/js/popper.js"></script>
	<script src="../login/vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script src="../login/vendor/select2/select2.min.js"></script>
	<!--===============================================================================================-->
	<script src="../login/vendor/daterangepicker/moment.min.js"></script>
	<script src="../login/vendor/daterangepicker/daterangepicker.js"></script>
	<!--===============================================================================================-->
	<script src="../login/vendor/countdowntime/countdowntime.js"></script>
	<!--===============================================================================================-->
	<script src="../login/js/main.js"></script>
</body>

</html>