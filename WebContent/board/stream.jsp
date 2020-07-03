<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">

<title>Your stream on SoundCloud</title>

<%@ include file="../include/boot/css.jsp"%>
<link rel="stylesheet" href="/soundcloud/music/style.css">

</head>

<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>
	
	<%@ include file="../include/offcanvas.jsp"%>
	<%@ include file="../include/header.jsp"%>

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

						<!-- Welcome Music Area -->
						<c:forEach var="board" items="${boards}">
							<div class="container h-100">
								<div class="row h-100 align-items-center">
									<div class="col-10">
										<div class="poca-music-area mt-20 d-flex align-items-center flex-wrap" data-animation="fadeInUp" data-delay="900ms">
											<div class="poca-music-thumbnail">
												<a href="/soundcloud/board?cmd=detail&boardId=${board.id}"> <img src="${board.fileImage}" alt="music image"></a>
											</div>
											<div class="poca-music-content">
												<div class="music-meta-data">
													<p>
														<a href="#" class="music-author">${board.userName}</a>
													</p>
												</div>
												<h6>
													<a href="/soundcloud/board?cmd=detail&boardId=${board.id}">${board.title}</a>
												</h6>

												<!-- Music Player -->
												<div class="poca-music-player">
													<audio preload="auto" controls>
														<source src="${board.musicFile}">
													</audio>
												</div>
												<!-- Likes, Share & Download -->
												<div class="likes-share-download d-flex align-items-center justify-content-between">
													<a href="#"><i class="fa fa-heart" aria-hidden="true"></i>${board.likeCount}</a>
													<div>
														<a href="#" class="mr-4"><i class="fa fa-play" aria-hidden="true"></i>${board.playCount}</a> <a href="#"><i class="fa fa-comment" aria-hidden="true"></i> 9 </a>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
				<div class="col-lg-3">
					<div class="blog__sidebar">
						<div class="blog__sidebar__item">
							<div class="sidebar__title">
								<h6>Follow us</h6>
							</div>
							<div class="sidebar__social">
								<a href="#" class="facebook"><i class="fa fa-facebook"></i></a> <a href="#" class="twitter"><i class="fa fa-twitter"></i></a> <a href="#" class="youtube"><i class="fa fa-youtube-play"></i></a> <a href="#" class="instagram"><i class="fa fa-instagram"></i></a>
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

	<!-- Js Plugins -->
	<%@ include file="../include/boot/deerhost.jsp"%>
	<%@ include file="../include/boot/music.jsp"%>