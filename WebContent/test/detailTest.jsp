<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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

<link rel="stylesheet" href="/soundcloud/css/detailMusic.css">
<link rel="stylesheet" href="/soundcloud/css/detail.css">



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

		<!-- 전체 구성 -->
		<div class="l-container l-content">
			<div class="l-product-banners l-inner-fullwidth">
				<div class="l-container">
					<div></div>
				</div>
			</div>
			<div id="content" role="main">
				<div>
					<div class="l-banner l-inner-fullwidth">

						<div class="listenUpsell sc-type-light sc-border-box upsellBanner"></div>
					</div>

					<!-- 음악 재생 바 -->
					<div class="l-listen-hero">

						<div class="fullListenHero fullHero l-inner-fullwidth">
							<div style="height: 100%;">
								<div class="backgroundGradient">
									<div class="backgroundGradient__buffer backgroundGradient__hidden"></div>
									<div class="backgroundGradient__buffer" style="background: linear-gradient(135deg, rgb(152, 105, 130) 0%, rgb(46, 54, 66) 100%);"></div>
									<div class="backgroundGradient__imageOverlay"></div>
								</div>
							</div>

							<div class="fullHero__foreground fullListenHero__foreground">
								<div class="fullHero__artwork">
									<div class="listenArtworkWrapper">
										<div class="listenArtworkWrapper__artwork">
											<div class="image m-sound image__lightOutline readOnly customImage interactive sc-artwork sc-artwork-placeholder-0 m-loaded" tabindex="0" style="height: 100%; width: 100%;">
												<span style="background-image: url(&quot;https://i1.sndcdn.com/artworks-000385909926-zwkof6-t500x500.jpg&quot;); width: 100%; height: 100%; opacity: 1;" class="sc-artwork sc-artwork-placeholder-0  image__full g-opacity-transition" aria-label="Love Is Far Away" aria-role="img"></span>

											</div>
										</div>
									</div>
								</div>
								<span class="fullHero__tierIndicator-plus g-go-plus-marker-artwork-large g-go-marker-artwork sc-hidden"></span>
								<div class="fullHero__title">
									<div class="soundTitle sc-clearfix sc-hyphenate listenContext">
										<div class="soundTitle__titleContainer">
											<div class="soundTitle__playButton soundTitle__playButtonHero ">
												<a role="button" class="sc-button-play playButton sc-button m-stretch" tabindex="0" title="Play" draggable="true" onclick="playButton();">Play</a>
											</div>

											<div class="soundTitle__usernameTitleContainer">
												<div class="soundTitle__usernameHeroContainer">
													<a href="#" class="soundTitle__username g-opacity-transition-500 g-type-shrinkwrap-inline g-type-shrinkwrap-large-secondary soundTitle__usernameHero sc-type-medium"> creator name </a>
												</div>
												<span class="soundTitle__title sc-font g-type-shrinkwrap-inline g-type-shrinkwrap-large-primary"> <span>Love Is Far Away</span>
												</span>
											</div>
											<div class="soundTitle__additionalContainer">
												<div class="soundTitle__tagContainer">
													<span class="sc-snippet-badge sc-selection-disabled sc-snippet-badge-medium sc-snippet-badge-grey sc-hidden" aria-describedby="tooltip-2108"></span> <span class="sc-snippet-badge sc-selection-disabled sc-snippet-badge-small sc-snippet-badge-grey sc-hidden" aria-describedby="tooltip-2111"></span>
												</div>
											</div>
										</div>
									</div>

								</div>

								<div class="fullHero__info">
									<div class="fullHero__uploadTime sc-type-medium">
										<time class="relativeTime" title="8 August 2018" datetime="2018-08-08T08:38:46.000Z">
											<span class="sc-visuallyhidden">1 year ago</span><span aria-hidden="true">1 year ago</span>
										</time>
									</div>
									<a rel="nofollow" class="sc-tag" href="/tags/city"><span class="sc-truncate sc-type-medium" style="max-width: 120px">City</span></a>
								</div>


								<div class="fullHero__playerArea">
									<div class="fullHero__waveform">

										<!-- Music Player -->
										<div class="poca-music-player">
											<audio preload="auto" controls>
												<source src="/soundcloud/music/audio/dummy-audio.mp3">
											</audio>
										</div>

									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- 하단 구역 -->
					<div class="l-listen-wrapper">

						<!-- 글 내용 + 댓글  -->
						<div class="l-about-main">
							<div class="l-about-rows">
								<div class="l-about-row">
									<div class="l-about-top">

										<div class="listenEngagement sc-clearfix">
											<div class="listenEngagement__commentForm">
												<div class="commentForm commentForm__transition m-large visible">
													<div class="commentForm__wrapper commentForm__transition">
														<div class="commentForm__avatar">
															<span style="background-image: url(https://i1.sndcdn.com/avatars-000334380658-j9enab-t50x50.jpg); width: 40px; height: 40px;" class="sc-artwork sc-artwork-placeholder-5  " aria-label="민경’s avatar" aria-role="img"></span>
														</div>
														<div class="commentForm__inputWrapper">
															<input type="text" class="commentForm__input" id="tokenInput__comment" autocomplete="off" placeholder="Write a comment" aria-invalid="false" aria-describedby="">
															<div class="commentInput__validation g-input-validation g-input-validation-hidden" id=""></div>

														</div>
													</div>
													<div class="commentForm__inputMessage g-input-validation g-input-validation-hidden">Comment must not exceed 1000 characters</div>
												</div>
											</div>

											<!-- 리모컨 -->
											<div class="listenEngagement__footer">
												<!-- Like, Repost, Share 버튼 -->
												<div class="soundActions sc-button-toolbar listenEngagement__actions soundActions__medium">
													<div class="sc-button-group sc-button-group-medium">
														<button type="button" class="sc-button-like sc-button sc-button-medium sc-button-responsive" aria-describedby="tooltip-2126" tabindex="0" title="Like" aria-label="Like">Like</button>
														<button type="button" class="sc-button-repost sc-button sc-button-medium sc-button-responsive" aria-describedby="tooltip-2128" tabindex="0" aria-haspopup="true" role="button" aria-owns="dropdown-button-2129" title="Repost" aria-label="Repost">Repost</button>
														<button type="button" class="sc-button-share sc-button sc-button-medium sc-button-responsive" aria-describedby="tooltip-2131" tabindex="0" aria-haspopup="true" role="button" aria-owns="dropdown-button-2132" title="Share" aria-label="Share">Share</button>
														<button type="button" class="sc-button-queue addToNextUp sc-button sc-button-medium sc-button-responsive" aria-describedby="tooltip-2134" tabindex="0" title="Add to Next up" aria-label="Add to Next up">
															<span class="sc-button-alt-labels"><span class="sc-button-label-default">Add to Next up</span><span class="sc-button-label-hover">Add to Next up</span><span class="sc-button-label-alt">Add to Next up</span><span class="sc-button-label-alt">Added</span></span>
														</button>
														<button type="button" class="sc-button-more sc-button sc-button-medium sc-button-responsive" tabindex="0" aria-haspopup="true" role="button" aria-owns="dropdown-button-2136" title="More" aria-label="More">More</button>
													</div>
												</div>

												<!-- playCount, LikeCount, Repost 보여주기 -->
												<ul class="soundStats sc-ministats-group listenEngagement__stats sc-ministats-group-right" aria-label="Track stats">
													<li title="34,485 plays" class="sc-ministats-item"><span class="sc-ministats sc-ministats-medium sc-ministats-plays"> <span class="sc-visuallyhidden">34,485 plays</span><span aria-hidden="true">34.4K</span>
													</span></li>

													<li title="994 likes" class="sc-ministats-item"><a href="/kehdii2sme/kehdii-love-is-far-away/likes" rel="nofollow" class="sc-ministats sc-ministats-medium sc-ministats-likes"> <span class="sc-visuallyhidden">View all likes</span><span aria-hidden="true">994</span>
													</a></li>

													<li title="36 reposts" class="sc-ministats-item"><a href="/kehdii2sme/kehdii-love-is-far-away/reposts" rel="nofollow" class="sc-ministats sc-ministats-medium sc-ministats-reposts"> <span class="sc-visuallyhidden">View all reposts</span><span aria-hidden="true">36</span>
													</a></li>
												</ul>
											</div>
										</div>
									</div>
								</div>
								<!-- creator, 태그, 댓글 -->
								<div class="l-about-row l-listen__mainContent">

									<!-- creator 프로필 -->
									<div class="l-about-left">
										<div class="listenArtistInfo">
											<div class="userBadge m-vertical">
												<div class="userBadge__avatar" style="width: 120px; height: 120px;">
													<div class="g-avatar-badge userAvatarBadge">
														<div class="g-avatar-badge-body">
															<a href="/kehdii2sme" class="g-avatar-badge-avatar-link">
																<div class="g-avatar-badge-avatar">
																	<div class="image m-user image__lightOutline readOnly customImage sc-artwork sc-artwork-placeholder-0 image__rounded m-loaded" style="height: 100%; width: 100%;">
																		<span style="background-image: url(#); width: 100%; height: 100%; opacity: 1;" class="sc-artwork sc-artwork-placeholder-0 image__rounded image__full g-opacity-transition" aria-label="Kehdii’s avatar" aria-role="img"> </span>
																	</div>
																</div>
															</a>
														</div>
													</div>
												</div>

												<div class="userBadge__content sc-media-content">
													<div class="userBadge__title">
														<h3 class="userBadge__username sc-type-light">
															<!-- creator 이름 누르면 cretor 공간으로 -->
															<a href="#" title="Visit creator's profile" class="userBadge__usernameLink sc-link-dark sc-truncate"> <span class="sc-truncate">Creator name</span>
															</a> <span></span>
														</h3>
													</div>
													<div class="userBadge__meta">
														<div class="userBadge__stats">
															<div aria-label="User stats" class="userStats">
																<ul class="sc-ministats-group">
																	<!-- follow 수 -->
																	<li title="136 followers" class="sc-ministats-item"><a href="/kehdii2sme/followers" rel="nofollow" class="sc-ministats sc-ministats-small sc-ministats-followers"> <span class="sc-visuallyhidden">136 followers</span><span aria-hidden="true">136</span>
																	</a></li>
																	<!-- track 수  -->
																	<li title="6 tracks" class="sc-ministats-item"><a href="/kehdii2sme/tracks" rel="nofollow" class="sc-ministats sc-ministats-small sc-ministats-sounds"> <span class="sc-visuallyhidden">6 tracks</span><span aria-hidden="true">6</span>
																	</a></li>
																</ul>
															</div>
														</div>

														<div class="userBadge__actions">
															<button type="button" class="sc-button-follow sc-button sc-button-small sc-button-responsive sc-button-cta" tabindex="0" title="Follow" aria-label="Follow">Follow</button>
														</div>
													</div>
												</div>
											</div>

											<div class="listenArtistInfo__copyright">
												<a type="button" class="reportCopyright g-link-problem sc-button sc-button-small sc-button-responsive sc-link-medium" tabindex="0"><span class="reportCopyright__full">Report</span></a>
											</div>
										</div>
									</div>
									<div class="l-about-right">

										<div class="listenDetails">


											<!-- 태그 -->
											<div class="listenDetails__partialInfo">
												<div class="truncatedAudioInfo m-collapsed">
													<div class="truncatedAudioInfo__wrapper" style="max-height: 140px;">
														<div class="truncatedAudioInfo__content">
															<div class="soundTags">
																<div class="sc-tag-group">
																	<a href="/tags/kpop" class="sc-tag sc-tag-medium"><span class="sc-truncate">kpop</span></a> <a href="/tags/boyrec" class="sc-tag sc-tag-medium"><span class="sc-truncate">boyrec</span></a> <a href="/tags/gopyol" class="sc-tag sc-tag-medium"><span class="sc-truncate">gopyol</span></a> <a href="/tags/yubin" class="sc-tag sc-tag-medium"><span class="sc-truncate">yubin</span></a> <a href="/tags/kehdii" class="sc-tag sc-tag-medium"><span class="sc-truncate">kehdii</span></a> <a href="/tags/citypop" class="sc-tag sc-tag-medium"><span class="sc-truncate">citypop</span></a> <a href="/tags/%EC%8B%9C%ED%8B%B0%ED%8C%9D" class="sc-tag sc-tag-medium"><span class="sc-truncate">시티팝</span></a> <a href="/tags/%EC%94%A8%ED%8B%B0%ED%8C%9D" class="sc-tag sc-tag-medium"><span class="sc-truncate">씨티팝</span></a> <a href="/tags/%EC%BC%80%EC%9D%B4%ED%8C%9D" class="sc-tag sc-tag-medium"><span class="sc-truncate">케이팝</span></a> <a href="/tags/%EB%B3%B4%EC%9D%B4%EB%A0%89"
																		class="sc-tag sc-tag-medium"
																	><span class="sc-truncate">보이렉</span></a> <a href="/tags/%EC%9C%A4%EA%B0%91%EC%97%B4" class="sc-tag sc-tag-medium"><span class="sc-truncate">윤갑열</span></a>
																</div>
															</div>

															<div class="truncatedAudioInfo__metadata">
																<div class="listenInfo">
																	<div></div>
																</div>
															</div>

															<div class="truncatedAudioInfo__license">
																<div class="license sc-type-light"></div>
															</div>
														</div>
													</div>
													<p>
														<a class="truncatedAudioInfo__collapse sc-link-light g-link-collapse collapsed" href="#">Show more</a>
													</p>
												</div>
											</div>

											<!-- users 댓글 -->
											<div class="commentsList g-box-full lazyLoadingList">
												<div class="sc-clearfix sc-type-light sc-border-light-bottom">
													<h3 class="commentsList__title sc-type-light">
														<span class="sc-icon sc-icon-comment sc-icon-large commentsList__icon"></span> <span class="commentsList__actualTitle">14 comments</span>
													</h3>
												</div>
												<ul class="lazyLoadingList__list sc-list-nostyle sc-clearfix">
													<li class="commentsList__item"><div class="commentItem">
															<div class="commentItem__read">
																<!-- user 프로필 사진 -->
																<a class="commentItem__avatar" href="/1-10-15">
																	<div class="image m-user image__lightOutline readOnly customImage sc-artwork sc-artwork-placeholder-1 image__rounded m-loaded" style="height: 40px; width: 40px;">
																		<span style="background-image: url(&quot;https://i1.sndcdn.com/avatars-000817944493-h1vq3t-t50x50.jpg&quot;); width: 40px; height: 40px; opacity: 1;" class="sc-artwork sc-artwork-placeholder-1 image__rounded image__full g-opacity-transition" aria-label="user’s avatar" aria-role="img"></span>
																	</div>
																</a>
																<div class="commentItem__content">
																	<span class="commentItem__username sc-text-light"> <a href="#" title="Visit user’s profile" class="commentItem__usernameLink sc-link-light">user</a>

																	</span>
																	<div class="commentItem__body sc-hyphenate">
																		<span>
																			<p>사랑해요</p>
																		</span>
																	</div>
																</div>
																<div class="commentItem__meta">
																	<span class="commentItem__createdAt sc-text-light"><time class="relativeTime" title="Posted on 27 May 2020" datetime="2020-05-27T01:42:35.000Z">
																			<span class="sc-visuallyhidden">Posted 1 month ago</span><span aria-hidden="true">1 month ago</span>
																		</time></span>
																	<!-- 본인 댓글 삭제  -->
																	<div class="commentItem__controls">
																		<a href="#" class="sc-button sc-button-responsive sc-button-reply sc-button-small commentItem__replyButton" rel="nofollow" title="delete" aria-role="button">Delete</a>
																	</div>
																</div>
															</div>
														</div></li>

													<!-- 댓글 el 로 뿌리기 -->
													<li class="commentsList__item"><div class="commentItem">
															<div class="commentItem__read">
																<a class="commentItem__avatar" href="/aha-pam">
																	<div class="image m-user image__lightOutline readOnly customImage sc-artwork sc-artwork-placeholder-1 image__rounded m-loaded" style="height: 40px; width: 40px;">
																		<span style="background-image: url(&quot;https://i1.sndcdn.com/avatars-000724255744-wm6dnc-t50x50.jpg&quot;); width: 40px; height: 40px; opacity: 1;" class="sc-artwork sc-artwork-placeholder-1 image__rounded image__full g-opacity-transition" aria-label="Aha._. pam’s avatar" aria-role="img"></span>

																	</div>
																</a>
																<div class="commentItem__content">
																	<span class="commentItem__username sc-text-light"> <a href="/aha-pam" title="Visit Aha._. pam’s profile" class="commentItem__usernameLink sc-link-light">Aha._. pam</a> <span class="sc-text-verylight commentItem__timestamp">at <a href="" aria-role="button" class="commentItem__timestampLink sc-link-light" title="Play from 0:59">0:59</a>:
																	</span>
																	</span>
																	<div class="commentItem__body sc-hyphenate">
																		<span><p>good</p></span>
																	</div>
																</div>
																<div class="commentItem__meta">
																	<span class="commentItem__createdAt sc-text-light"><time class="relativeTime" title="Posted on 25 March 2020" datetime="2020-03-24T17:08:56.000Z">
																			<span class="sc-visuallyhidden">Posted 3 months ago</span><span aria-hidden="true">3 months ago</span>
																		</time></span>
																	<div class="commentItem__controls">
																		<a href="/kehdii2sme/kehdii-love-is-far-away/comments/923497909" class="sc-button sc-button-responsive sc-button-reply sc-button-small commentItem__replyButton" rel="nofollow" title="Reply" aria-role="button">Reply</a>
																	</div>
																</div>
															</div>
														</div></li>


												</ul>

												<!-- 댓글 마지막 end -->
												<div class="paging-eof sc-border-light-top" title=""></div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="l-sidebar-right">

							<div class="listenNetworkSidebar">
								<article class="dashbox"></article>
								<!-- Related tracks -->
								<article class="sidebarModule g-all-transitions-200-linear relatedSoundsModule" style="display: block;">
									<a class="sidebarHeader g-flex-row-centered-spread sc-link-light  sc-border-light-bottom" rel="nofollow" href="#">
										<h3 class="sidebarHeader__title sc-type-light sc-font g-flex-row-centered ">
											<span class="sc-icon sc-icon-sound sc-icon-large sidebarHeader__icon"></span> <span class="sidebarHeader__actualTitle">Related tracks</span>
										</h3> <span class="sidebarHeader__more sc-type-h3">View all</span>
									</a>
									<div class="sidebarContent" style="min-height: 210.60000000000002px;">
										<div class="soundBadgeList compact lazyLoadingList">
											<ul class="sc-list-nostyle sc-clearfix">
												<li class="soundBadgeList__item"><div class="soundBadge compact sc-media">
														<span class="soundBadge__artwork sc-media-image">
															<div class="image m-sound image__lightOutline readOnly sc-artwork sc-artwork-placeholder-6 m-loaded" style="height: 50px; width: 50px;">
																<span style="background-image: url(&quot;https://i1.sndcdn.com/avatars-000606494013-be3lll-t50x50.jpg&quot;); width: 50px; height: 50px; opacity: 1;" class="sc-artwork sc-artwork-placeholder-6  image__full g-opacity-transition" aria-label="김아름 - 선" aria-role="img"></span>

															</div> <span class="soundBadge__tierIndicator g-go-plus-marker-artwork-small g-go-marker-artwork sc-hidden"></span> <span class="soundBadge__playButton"> <a role="button" href="" class="sc-button-play playButton sc-button sc-button-large" tabindex="0" title="Play" draggable="true">Play</a>
														</span>
														</span>
														<div class="sc-media-content soundBadge__content">
															<div class="soundTitle sc-clearfix sc-hyphenate sc-type-h3">
																<div class="soundTitle__titleContainer">

																	<div class="soundTitle__usernameTitleContainer">
																		<div class="sc-type-light soundTitle__secondary  sc-truncate">
																			<a href="#" class="soundTitle__username sc-link-light"> <span class="soundTitle__usernameText">hivicus</span>
																			</a>
																		</div>
																		<a class="soundTitle__title sc-link-dark" href="#" title="김아름 - 선"> <span class="sc-truncate">김아름 - 선</span>
																		</a>
																	</div>
																	<div class="soundTitle__additionalContainer"></div>
																</div>
															</div>

															<ul class="soundStats sc-ministats-group" aria-label="Track stats">
																<li title="87,214 plays" class="sc-ministats-item"><span class="sc-ministats sc-ministats-small sc-ministats-plays"> <span class="sc-visuallyhidden">87,214 plays</span><span aria-hidden="true">87.2K</span>
																</span></li>

																<li title="1,895 likes" class="sc-ministats-item"><a href="#" rel="nofollow" class="sc-ministats sc-ministats-small sc-ministats-likes"> <span class="sc-visuallyhidden">View all likes</span><span aria-hidden="true">1,895</span>
																</a></li>

																<li title="38 reposts" class="sc-ministats-item"><a href="#" rel="nofollow" class="sc-ministats sc-ministats-small sc-ministats-reposts"> <span class="sc-visuallyhidden">View all reposts</span><span aria-hidden="true">38</span>
																</a></li>
																<li title="27 comments" class="sc-ministats-item"><a href="#" rel="nofollow" class="sc-ministats sc-ministats-small sc-ministats-comments"> <span class="sc-visuallyhidden">View all comments</span><span aria-hidden="true">27</span>
																</a></li>
															</ul>

															<div class="soundBadge__additional">
																<div class="soundBadge__actions">
																	<div class="soundActions sc-button-toolbar soundActions__small">
																		<div class="sc-button-group sc-button-group-small">
																			<button type="button" class="sc-button-like sc-button sc-button-small sc-button-icon sc-button-responsive" aria-describedby="tooltip-2334" tabindex="0" title="Like" aria-label="Like">Like</button>
																			<button type="button" class="sc-button-more sc-button sc-button-small sc-button-icon sc-button-responsive" tabindex="0" aria-haspopup="true" role="button" aria-owns="dropdown-button-2336" title="More" aria-label="More">More</button>
																		</div>


																	</div>
																</div>
															</div>
														</div>
													</div></li>
												<li class="soundBadgeList__item"><div class="soundBadge compact sc-media">
														<span class="soundBadge__artwork sc-media-image">
															<div class="image m-sound image__lightOutline readOnly customImage sc-artwork sc-artwork-placeholder-9 m-loaded" style="height: 50px; width: 50px;">
																<span style="background-image: url(&quot;https://i1.sndcdn.com/artworks-000534464946-wkdmh9-t50x50.jpg&quot;); width: 50px; height: 50px; opacity: 1;" class="sc-artwork sc-artwork-placeholder-9  image__full g-opacity-transition" aria-label="Drive To 1980 Love" aria-role="img"></span>

															</div> <span class="soundBadge__tierIndicator g-go-plus-marker-artwork-small g-go-marker-artwork sc-hidden"></span> <span class="soundBadge__playButton"> <a role="button" href="" class="sc-button-play playButton sc-button sc-button-large" tabindex="0" title="Play" draggable="true">Play</a>
														</span>
														</span>
														<div class="sc-media-content soundBadge__content">
															<div class="soundTitle sc-clearfix sc-hyphenate sc-type-h3">
																<div class="soundTitle__titleContainer">

																	<div class="soundTitle__usernameTitleContainer">
																		<div class="sc-type-light soundTitle__secondary  sc-truncate">
																			<a href="/jane_pop" class="soundTitle__username
              sc-link-light
            "> <span class="soundTitle__usernameText">Jane POP</span>
																			</a>
																		</div>
																		<a class="soundTitle__title sc-link-dark" href="/jane_pop/drive-to-1980-love" title="Drive To 1980 Love"> <span class="sc-truncate">Drive To 1980 Love</span>
																		</a>
																	</div>
																	<div class="soundTitle__additionalContainer"></div>
																</div>
															</div>

															<ul class="soundStats sc-ministats-group" aria-label="Track stats">
																<li title="38,531 plays" class="sc-ministats-item"><span class="sc-ministats sc-ministats-small sc-ministats-plays"> <span class="sc-visuallyhidden">38,531 plays</span><span aria-hidden="true">38.5K</span>
																</span></li>

																<li title="1,117 likes" class="sc-ministats-item"><a href="/jane_pop/drive-to-1980-love/likes" rel="nofollow" class="sc-ministats sc-ministats-small sc-ministats-likes"> <span class="sc-visuallyhidden">View all likes</span><span aria-hidden="true">1,117</span>
																</a></li>

																<li title="31 reposts" class="sc-ministats-item"><a href="/jane_pop/drive-to-1980-love/reposts" rel="nofollow" class="sc-ministats sc-ministats-small sc-ministats-reposts"> <span class="sc-visuallyhidden">View all reposts</span><span aria-hidden="true">31</span>
																</a></li>
																<li title="29 comments" class="sc-ministats-item"><a href="/jane_pop/drive-to-1980-love/comments" rel="nofollow" class="sc-ministats sc-ministats-small sc-ministats-comments"> <span class="sc-visuallyhidden">View all comments</span><span aria-hidden="true">29</span>
																</a></li>
															</ul>

															<div class="soundBadge__additional">
																<div class="soundBadge__actions">
																	<div class="soundActions sc-button-toolbar soundActions__small">
																		<div class="sc-button-group sc-button-group-small">
																			<button type="button" class="sc-button-like sc-button sc-button-small sc-button-icon sc-button-responsive" aria-describedby="tooltip-2346" tabindex="0" title="Like" aria-label="Like">Like</button>
																			<button type="button" class="sc-button-more sc-button sc-button-small sc-button-icon sc-button-responsive" tabindex="0" aria-haspopup="true" role="button" aria-owns="dropdown-button-2348" title="More" aria-label="More">More</button>
																		</div>


																	</div>
																</div>
															</div>
														</div>
													</div></li>
												<li class="soundBadgeList__item"><div class="soundBadge compact sc-media">
														<span class="soundBadge__artwork sc-media-image">
															<div class="image m-sound image__lightOutline readOnly customImage sc-artwork sc-artwork-placeholder-9 m-loaded" style="height: 50px; width: 50px;">
																<span style="background-image: url(&quot;https://i1.sndcdn.com/artworks-000300411846-ka2yyc-t50x50.jpg&quot;); width: 50px; height: 50px; opacity: 1;" class="sc-artwork sc-artwork-placeholder-9  image__full g-opacity-transition" aria-label="샴푸의요정" aria-role="img"></span>

															</div> <span class="soundBadge__tierIndicator g-go-plus-marker-artwork-small g-go-marker-artwork sc-hidden"></span> <span class="soundBadge__playButton"> <a role="button" href="" class="sc-button-play playButton sc-button sc-button-large" tabindex="0" title="Play" draggable="true">Play</a>
														</span>
														</span>
														<div class="sc-media-content soundBadge__content">
															<div class="soundTitle sc-clearfix sc-hyphenate sc-type-h3">
																<div class="soundTitle__titleContainer">

																	<div class="soundTitle__usernameTitleContainer">
																		<div class="sc-type-light soundTitle__secondary  sc-truncate">
																			<a href="/dokiwa" class="soundTitle__username
              sc-link-light
            "> <span class="soundTitle__usernameText">dokiwa.</span>
																			</a>
																		</div>
																		<a class="soundTitle__title sc-link-dark" href="/dokiwa/oiwr71zg0liz" title="샴푸의요정"> <span class="sc-truncate">샴푸의요정</span>
																		</a>
																	</div>
																	<div class="soundTitle__additionalContainer"></div>
																</div>
															</div>

															<ul class="soundStats sc-ministats-group" aria-label="Track stats">
																<li title="495,293 plays" class="sc-ministats-item"><span class="sc-ministats sc-ministats-small sc-ministats-plays"> <span class="sc-visuallyhidden">495,293 plays</span><span aria-hidden="true">495K</span>
																</span></li>

																<li title="9,907 likes" class="sc-ministats-item"><a href="/dokiwa/oiwr71zg0liz/likes" rel="nofollow" class="sc-ministats sc-ministats-small sc-ministats-likes"> <span class="sc-visuallyhidden">View all likes</span><span aria-hidden="true">9,907</span>
																</a></li>

																<li title="377 reposts" class="sc-ministats-item"><a href="/dokiwa/oiwr71zg0liz/reposts" rel="nofollow" class="sc-ministats sc-ministats-small sc-ministats-reposts"> <span class="sc-visuallyhidden">View all reposts</span><span aria-hidden="true">377</span>
																</a></li>
																<li title="126 comments" class="sc-ministats-item"><a href="/dokiwa/oiwr71zg0liz/comments" rel="nofollow" class="sc-ministats sc-ministats-small sc-ministats-comments"> <span class="sc-visuallyhidden">View all comments</span><span aria-hidden="true">126</span>
																</a></li>
															</ul>

															<div class="soundBadge__additional">
																<div class="soundBadge__actions">
																	<div class="soundActions sc-button-toolbar soundActions__small">
																		<div class="sc-button-group sc-button-group-small">
																			<button type="button" class="sc-button-like sc-button sc-button-small sc-button-icon sc-button-responsive" aria-describedby="tooltip-2358" tabindex="0" title="Like" aria-label="Like">Like</button>
																			<button type="button" class="sc-button-more sc-button sc-button-small sc-button-icon sc-button-responsive" tabindex="0" aria-haspopup="true" role="button" aria-owns="dropdown-button-2360" title="More" aria-label="More">More</button>
																		</div>


																	</div>
																</div>
															</div>
														</div>
													</div></li>
											</ul>
										</div>
									</div>
								</article>

								<article class="sidebarModule g-all-transitions-200-linear soundInSetsModule" style="display: none;">
									<a class="sidebarHeader g-flex-row-centered-spread sc-link-light  sc-border-light-bottom" rel="nofollow" href="/kehdii2sme/kehdii-love-is-far-away/albums">
										<h3 class="sidebarHeader__title sc-type-light sc-font g-flex-row-centered ">
											<span class="sc-icon sc-icon-set sc-icon-large sidebarHeader__icon"></span> <span class="sidebarHeader__actualTitle">In albums</span>
										</h3> <span class="sidebarHeader__more sc-type-h3">View all</span>
									</a>
									<div class="sidebarContent" style="min-height: 210.60000000000002px;">
										<div class="soundBadgeList compact lazyLoadingList">
											<ul class="sc-list-nostyle sc-clearfix"></ul>
										</div>
									</div>
								</article>
								<article class="sidebarModule g-all-transitions-200-linear soundInSetsModule" style="display: block;">
									<a class="sidebarHeader g-flex-row-centered-spread sc-link-light  sc-border-light-bottom" rel="nofollow" href="#">
										<h3 class="sidebarHeader__title sc-type-light sc-font g-flex-row-centered ">
											<span class="sc-icon sc-icon-set sc-icon-large sidebarHeader__icon"></span> <span class="sidebarHeader__actualTitle">In playlists</span>
										</h3> <span class="sidebarHeader__more sc-type-h3">View all</span>
									</a>
									<div class="sidebarContent" style="min-height: 210.60000000000002px;">
										<div class="soundBadgeList compact lazyLoadingList">
											<ul class="sc-list-nostyle sc-clearfix">
												<li class="soundBadgeList__item"><div class="soundBadge compact sc-media hiddenActions playlist">
														<span class="soundBadge__artwork sc-media-image">
															<div class="image m-playlist image__lightOutline readOnly customImage sc-artwork sc-artwork-placeholder-3 m-loaded" style="height: 50px; width: 50px;">
																<span style="background-image: url(&quot;https://i1.sndcdn.com/artworks-000377272821-fs3dtq-t50x50.jpg&quot;); width: 50px; height: 50px; opacity: 1;" class="sc-artwork sc-artwork-placeholder-3  image__full g-opacity-transition" aria-label="Reposted By Mellowbeat Seeker 4" aria-role="img"></span>

															</div>
														</span>
														<div class="sc-media-content soundBadge__content">
															<div class="soundTitle sc-clearfix sc-hyphenate sc-type-h3">
																<div class="soundTitle__titleContainer">

																	<div class="soundTitle__usernameTitleContainer">
																		<div class="sc-type-light soundTitle__secondary  sc-truncate">
																			<a href="/s3u7rws74fxs" rel="nofollow" class="soundTitle__username
              sc-link-light
            "> <span class="soundTitle__usernameText">신현철</span>
																			</a>
																		</div>
																		<a class="soundTitle__title sc-link-dark" href="/s3u7rws74fxs/sets/repostedbymellowbeat4" rel="nofollow" title="Reposted By Mellowbeat Seeker 4"> <span class="sc-truncate">Reposted By Mellowbeat Seeker 4</span>
																		</a>
																	</div>
																	<div class="soundTitle__additionalContainer"></div>
																</div>
															</div>

															<ul class="soundStats sc-ministats-group" aria-label="Playlist stats">
																<li title="34 likes" class="sc-ministats-item"><a href="/s3u7rws74fxs/sets/repostedbymellowbeat4/likes" rel="nofollow" class="sc-ministats sc-ministats-small sc-ministats-likes"> <span class="sc-visuallyhidden">View all likes</span><span aria-hidden="true">34</span>
																</a></li>

																<li title="4 reposts" class="sc-ministats-item"><a href="/s3u7rws74fxs/sets/repostedbymellowbeat4/reposts" rel="nofollow" class="sc-ministats sc-ministats-small sc-ministats-reposts"> <span class="sc-visuallyhidden">View all reposts</span><span aria-hidden="true">4</span>
																</a></li>
															</ul>

															<div class="soundBadge__additional"></div>
														</div>
													</div></li>
												<li class="soundBadgeList__item"><div class="soundBadge compact sc-media hiddenActions playlist">
														<span class="soundBadge__artwork sc-media-image">
															<div class="image m-playlist image__lightOutline readOnly sc-artwork sc-artwork-placeholder-3 m-loaded" style="height: 50px; width: 50px;">
																<span style="background-image: url(&quot;https://i1.sndcdn.com/avatars-000425635365-vqrqrt-t50x50.jpg&quot;); width: 50px; height: 50px; opacity: 1;" class="sc-artwork sc-artwork-placeholder-3  image__full g-opacity-transition" aria-label="80-90s" aria-role="img"></span>

															</div>
														</span>
														<div class="sc-media-content soundBadge__content">
															<div class="soundTitle sc-clearfix sc-hyphenate sc-type-h3">
																<div class="soundTitle__titleContainer">

																	<div class="soundTitle__usernameTitleContainer">
																		<div class="sc-type-light soundTitle__secondary  sc-truncate">
																			<a href="/phanha-vy" rel="nofollow" class="soundTitle__username
              sc-link-light
            "> <span class="soundTitle__usernameText">Veira Vian</span>
																			</a>
																		</div>
																		<a class="soundTitle__title sc-link-dark" href="/phanha-vy/sets/vibes-80-90s" rel="nofollow" title="80-90s"> <span class="sc-truncate">80-90s</span>
																		</a>
																	</div>
																	<div class="soundTitle__additionalContainer"></div>
																</div>
															</div>

															<ul class="soundStats sc-ministats-group" aria-label="Playlist stats">

															</ul>

															<div class="soundBadge__additional"></div>
														</div>
													</div></li>
												<li class="soundBadgeList__item"><div class="soundBadge compact sc-media hiddenActions playlist">
														<span class="soundBadge__artwork sc-media-image">
															<div class="image m-playlist image__lightOutline readOnly" style="height: 50px; width: 50px;">
																<span style="width: 50px; height: 50px;" class="sc-artwork sc-artwork-placeholder-9  image__full" aria-label="Retro" aria-role="img"></span>

															</div>
														</span>
														<div class="sc-media-content soundBadge__content">
															<div class="soundTitle sc-clearfix sc-hyphenate sc-type-h3">
																<div class="soundTitle__titleContainer">

																	<div class="soundTitle__usernameTitleContainer">
																		<div class="sc-type-light soundTitle__secondary  sc-truncate">
																			<a href="/user-863457156" rel="nofollow" class="soundTitle__username
              sc-link-light
            "> <span class="soundTitle__usernameText">julme</span>
																			</a>
																		</div>
																		<a class="soundTitle__title sc-link-dark" href="/user-863457156/sets/retro" rel="nofollow" title="Retro"> <span class="sc-truncate">Retro</span>
																		</a>
																	</div>
																	<div class="soundTitle__additionalContainer"></div>
																</div>
															</div>

															<ul class="soundStats sc-ministats-group" aria-label="Playlist stats">

															</ul>

															<div class="soundBadge__additional"></div>
														</div>
													</div></li>
											</ul>
										</div>
									</div>
								</article>
								<article class="sidebarModule g-all-transitions-200-linear soundLikesModule" style="display: block;">
									<a class="sidebarHeader g-flex-row-centered-spread sc-link-light  sc-border-light-bottom" rel="nofollow" href="/kehdii2sme/kehdii-love-is-far-away/likes">
										<h3 class="sidebarHeader__title sc-type-light sc-font g-flex-row-centered ">
											<span class="sc-icon sc-icon-like sc-icon-large sidebarHeader__icon"></span> <span class="sidebarHeader__actualTitle">994 likes</span>
										</h3> <span class="sidebarHeader__more sc-type-h3">View all</span>
									</a>
									<div class="sidebarContent" style="min-height: 60px;">
										<div class="usersList floating user-avatar-badge-hover lazyLoadingList">
											<ul class="usersList__list lazyLoadingList__list sc-list-nostyle">
												<li class="usersList__item"><div class="g-avatar-badge userAvatarBadge">
														<div class="g-avatar-badge-body">
															<a href="/user-990871047" rel="nofollow" class="g-avatar-badge-avatar-link">
																<div class="g-avatar-badge-avatar">
																	<div class="image m-user image__whiteOutline readOnly customImage sc-artwork sc-artwork-placeholder-4 image__rounded m-loaded" style="height: 40px; width: 40px;">
																		<span style="background-image: url(&quot;https://i1.sndcdn.com/avatars-mU16y7SXPjeIXdXR-AtTd5Q-t50x50.jpg&quot;); width: 40px; height: 40px; opacity: 1;" class="sc-artwork sc-artwork-placeholder-4 image__rounded image__full g-opacity-transition" aria-label="TynieTempertue’s avatar" aria-role="img"></span>

																	</div>
																</div>
															</a>
														</div>
													</div></li>
												<li class="usersList__item"><div class="g-avatar-badge userAvatarBadge">
														<div class="g-avatar-badge-body">
															<a href="/ox1y7nqvamhu" rel="nofollow" class="g-avatar-badge-avatar-link">
																<div class="g-avatar-badge-avatar">
																	<div class="image m-user image__whiteOutline readOnly customImage sc-artwork sc-artwork-placeholder-7 image__rounded m-loaded" style="height: 40px; width: 40px;">
																		<span style="background-image: url(&quot;https://i1.sndcdn.com/avatars-000760443649-95a4qh-t50x50.jpg&quot;); width: 40px; height: 40px; opacity: 1;" class="sc-artwork sc-artwork-placeholder-7 image__rounded image__full g-opacity-transition" aria-label="김보영’s avatar" aria-role="img"></span>

																	</div>
																</div>
															</a>
														</div>
													</div></li>
												<li class="usersList__item"><div class="g-avatar-badge userAvatarBadge">
														<div class="g-avatar-badge-body">
															<a href="/lizzy-tsiklauri" rel="nofollow" class="g-avatar-badge-avatar-link">
																<div class="g-avatar-badge-avatar">
																	<div class="image m-user image__whiteOutline readOnly customImage sc-artwork sc-artwork-placeholder-11 image__rounded m-loaded" style="height: 40px; width: 40px;">
																		<span style="background-image: url(&quot;https://i1.sndcdn.com/avatars-4uYN2sUKRsyqZQyP-Ka5tvA-t50x50.jpg&quot;); width: 40px; height: 40px; opacity: 1;" class="sc-artwork sc-artwork-placeholder-11 image__rounded image__full g-opacity-transition" aria-label="Liziku 🐢’s avatar" aria-role="img"></span>

																	</div>
																</div>
															</a>
														</div>
													</div></li>
												<li class="usersList__item"><div class="g-avatar-badge userAvatarBadge">
														<div class="g-avatar-badge-body">
															<a href="/user-329421585" rel="nofollow" class="g-avatar-badge-avatar-link">
																<div class="g-avatar-badge-avatar">
																	<div class="image m-user image__whiteOutline readOnly" style="height: 40px; width: 40px;">
																		<span style="width: 40px; height: 40px;" class="sc-artwork sc-artwork-placeholder-1 image__rounded image__full" aria-label="User 329421585’s avatar" aria-role="img"></span>

																	</div>
																</div>
															</a>
														</div>
													</div></li>
												<li class="usersList__item"><div class="g-avatar-badge userAvatarBadge">
														<div class="g-avatar-badge-body">
															<a href="/o-so-403206327" rel="nofollow" class="g-avatar-badge-avatar-link">
																<div class="g-avatar-badge-avatar">
																	<div class="image m-user image__whiteOutline readOnly customImage sc-artwork sc-artwork-placeholder-8 image__rounded m-loaded" style="height: 40px; width: 40px;">
																		<span style="background-image: url(&quot;https://i1.sndcdn.com/avatars-eh5odYJGBHO4gyLl-93Hljg-t50x50.jpg&quot;); width: 40px; height: 40px; opacity: 1;" class="sc-artwork sc-artwork-placeholder-8 image__rounded image__full g-opacity-transition" aria-label="sooya’s avatar" aria-role="img"></span>

																	</div>
																</div>
															</a>
														</div>
													</div></li>
												<li class="usersList__item"><div class="g-avatar-badge userAvatarBadge">
														<div class="g-avatar-badge-body">
															<a href="/2ubtxzqe1q0l" rel="nofollow" class="g-avatar-badge-avatar-link">
																<div class="g-avatar-badge-avatar">
																	<div class="image m-user image__whiteOutline readOnly customImage sc-artwork sc-artwork-placeholder-10 image__rounded m-loaded" style="height: 40px; width: 40px;">
																		<span style="background-image: url(&quot;https://i1.sndcdn.com/avatars-000844046776-s2czac-t50x50.jpg&quot;); width: 40px; height: 40px; opacity: 1;" class="sc-artwork sc-artwork-placeholder-10 image__rounded image__full g-opacity-transition" aria-label="경들렌’s avatar" aria-role="img"></span>

																	</div>
																</div>
															</a>
														</div>
													</div></li>
												<li class="usersList__item"><div class="g-avatar-badge userAvatarBadge">
														<div class="g-avatar-badge-body">
															<a href="/7-848799444" rel="nofollow" class="g-avatar-badge-avatar-link">
																<div class="g-avatar-badge-avatar">
																	<div class="image m-user image__whiteOutline readOnly customImage sc-artwork sc-artwork-placeholder-10 image__rounded m-loaded" style="height: 40px; width: 40px;">
																		<span style="background-image: url(&quot;https://i1.sndcdn.com/avatars-w3JOay3zZDg7Z6ov-wqqz4g-t50x50.jpg&quot;); width: 40px; height: 40px; opacity: 1;" class="sc-artwork sc-artwork-placeholder-10 image__rounded image__full g-opacity-transition" aria-label="7 %’s avatar" aria-role="img"></span>

																	</div>
																</div>
															</a>
														</div>
													</div></li>
												<li class="usersList__item"><div class="g-avatar-badge userAvatarBadge">
														<div class="g-avatar-badge-body">
															<a href="/fleurissant" rel="nofollow" class="g-avatar-badge-avatar-link">
																<div class="g-avatar-badge-avatar">
																	<div class="image m-user image__whiteOutline readOnly customImage sc-artwork sc-artwork-placeholder-5 image__rounded m-loaded" style="height: 40px; width: 40px;">
																		<span style="background-image: url(&quot;https://i1.sndcdn.com/avatars-OGJK0huixLv1CnAK-RHdgfg-t50x50.jpg&quot;); width: 40px; height: 40px; opacity: 1;" class="sc-artwork sc-artwork-placeholder-5 image__rounded image__full g-opacity-transition" aria-label="nue’s avatar" aria-role="img"></span>

																	</div>
																</div>
															</a>
														</div>
													</div></li>
												<li class="usersList__item"><div class="g-avatar-badge userAvatarBadge">
														<div class="g-avatar-badge-body">
															<a href="/jaehyuk-yoo-711859830" rel="nofollow" class="g-avatar-badge-avatar-link">
																<div class="g-avatar-badge-avatar">
																	<div class="image m-user image__whiteOutline readOnly customImage sc-artwork sc-artwork-placeholder-3 image__rounded m-loaded" style="height: 40px; width: 40px;">
																		<span style="background-image: url(&quot;https://i1.sndcdn.com/avatars-000307335191-gzid5y-t50x50.jpg&quot;); width: 40px; height: 40px; opacity: 1;" class="sc-artwork sc-artwork-placeholder-3 image__rounded image__full g-opacity-transition" aria-label="JaeHyuk Yoo’s avatar" aria-role="img"></span>

																	</div>
																</div>
															</a>
														</div>
													</div></li>
											</ul>
										</div>
									</div>
								</article>
								<article class="sidebarModule g-all-transitions-200-linear soundRepostsModule" style="display: block;">
									<a class="sidebarHeader g-flex-row-centered-spread sc-link-light  sc-border-light-bottom" rel="nofollow" href="/kehdii2sme/kehdii-love-is-far-away/reposts">
										<h3 class="sidebarHeader__title sc-type-light sc-font g-flex-row-centered ">
											<span class="sc-icon sc-icon-repost sc-icon-large sidebarHeader__icon"></span> <span class="sidebarHeader__actualTitle">36 reposts</span>
										</h3> <span class="sidebarHeader__more sc-type-h3">View all</span>
									</a>
									<div class="sidebarContent" style="min-height: 60px;">
										<div class="usersList floating user-avatar-badge-hover lazyLoadingList">
											<ul class="usersList__list lazyLoadingList__list sc-list-nostyle">
												<li class="usersList__item"><div class="g-avatar-badge userAvatarBadge">
														<div class="g-avatar-badge-body">
															<a href="/s1de9h" rel="nofollow" class="g-avatar-badge-avatar-link">
																<div class="g-avatar-badge-avatar">
																	<div class="image m-user image__whiteOutline readOnly customImage sc-artwork sc-artwork-placeholder-10 image__rounded m-loaded" style="height: 40px; width: 40px;">
																		<span style="background-image: url(&quot;https://i1.sndcdn.com/avatars-000484033749-6rq7ox-t50x50.jpg&quot;); width: 40px; height: 40px; opacity: 1;" class="sc-artwork sc-artwork-placeholder-10 image__rounded image__full g-opacity-transition" aria-label="Lonely Soul’s avatar" aria-role="img"></span>

																	</div>
																</div>
															</a>
														</div>
													</div></li>
												<li class="usersList__item"><div class="g-avatar-badge userAvatarBadge">
														<div class="g-avatar-badge-body">
															<a href="/yourparadis" rel="nofollow" class="g-avatar-badge-avatar-link">
																<div class="g-avatar-badge-avatar">
																	<div class="image m-user image__whiteOutline readOnly customImage sc-artwork sc-artwork-placeholder-0 image__rounded m-loaded" style="height: 40px; width: 40px;">
																		<span style="background-image: url(&quot;https://i1.sndcdn.com/avatars-alTcxQg82krplUYC-oCFAsQ-t50x50.jpg&quot;); width: 40px; height: 40px; opacity: 1;" class="sc-artwork sc-artwork-placeholder-0 image__rounded image__full g-opacity-transition" aria-label="soo’s avatar" aria-role="img"></span>

																	</div>
																</div>
															</a>
														</div>
													</div></li>
												<li class="usersList__item"><div class="g-avatar-badge userAvatarBadge">
														<div class="g-avatar-badge-body">
															<a href="/01925" rel="nofollow" class="g-avatar-badge-avatar-link">
																<div class="g-avatar-badge-avatar">
																	<div class="image m-user image__whiteOutline readOnly customImage sc-artwork sc-artwork-placeholder-1 image__rounded m-loaded" style="height: 40px; width: 40px;">
																		<span style="background-image: url(&quot;https://i1.sndcdn.com/avatars-V8C9kPm0zoA9b3JY-2H6MBA-t50x50.jpg&quot;); width: 40px; height: 40px; opacity: 1;" class="sc-artwork sc-artwork-placeholder-1 image__rounded image__full g-opacity-transition" aria-label="그런이유로연락하지마세요’s avatar" aria-role="img"></span>

																	</div>
																</div>
															</a>
														</div>
													</div></li>
												<li class="usersList__item"><div class="g-avatar-badge userAvatarBadge">
														<div class="g-avatar-badge-body">
															<a href="/tsumi1234" rel="nofollow" class="g-avatar-badge-avatar-link">
																<div class="g-avatar-badge-avatar">
																	<div class="image m-user image__whiteOutline readOnly customImage sc-artwork sc-artwork-placeholder-2 image__rounded m-loaded" style="height: 40px; width: 40px;">
																		<span style="background-image: url(&quot;https://i1.sndcdn.com/avatars-6TQRCRobgx5PfY8w-5rHhtA-t50x50.jpg&quot;); width: 40px; height: 40px; opacity: 1;" class="sc-artwork sc-artwork-placeholder-2 image__rounded image__full g-opacity-transition" aria-label="tsumi’s avatar" aria-role="img"></span>

																	</div>
																</div>
															</a>
														</div>
													</div></li>
												<li class="usersList__item"><div class="g-avatar-badge userAvatarBadge">
														<div class="g-avatar-badge-body">
															<a href="/uhs4hzqxkej3" rel="nofollow" class="g-avatar-badge-avatar-link">
																<div class="g-avatar-badge-avatar">
																	<div class="image m-user image__whiteOutline readOnly customImage sc-artwork sc-artwork-placeholder-3 image__rounded m-loaded" style="height: 40px; width: 40px;">
																		<span style="background-image: url(&quot;https://i1.sndcdn.com/avatars-000645164913-ldmcl0-t50x50.jpg&quot;); width: 40px; height: 40px; opacity: 1;" class="sc-artwork sc-artwork-placeholder-3 image__rounded image__full g-opacity-transition" aria-label="Juel0216’s avatar" aria-role="img"></span>

																	</div>
																</div>
															</a>
														</div>
													</div></li>
												<li class="usersList__item"><div class="g-avatar-badge userAvatarBadge">
														<div class="g-avatar-badge-body">
															<a href="/ladyofthelake" rel="nofollow" class="g-avatar-badge-avatar-link">
																<div class="g-avatar-badge-avatar">
																	<div class="image m-user image__whiteOutline readOnly customImage sc-artwork sc-artwork-placeholder-10 image__rounded m-loaded" style="height: 40px; width: 40px;">
																		<span style="background-image: url(&quot;https://i1.sndcdn.com/avatars-000228681679-ynffd0-t50x50.jpg&quot;); width: 40px; height: 40px; opacity: 1;" class="sc-artwork sc-artwork-placeholder-10 image__rounded image__full g-opacity-transition" aria-label="LadyoftheLake’s avatar" aria-role="img"></span>

																	</div>
																</div>
															</a>
														</div>
													</div></li>
												<li class="usersList__item"><div class="g-avatar-badge userAvatarBadge">
														<div class="g-avatar-badge-body">
															<a href="/ym6pkotwe1ov" rel="nofollow" class="g-avatar-badge-avatar-link">
																<div class="g-avatar-badge-avatar">
																	<div class="image m-user image__whiteOutline readOnly customImage sc-artwork sc-artwork-placeholder-10 image__rounded m-loaded" style="height: 40px; width: 40px;">
																		<span style="background-image: url(&quot;https://i1.sndcdn.com/avatars-000798108265-ey2z7h-t50x50.jpg&quot;); width: 40px; height: 40px; opacity: 1;" class="sc-artwork sc-artwork-placeholder-10 image__rounded image__full g-opacity-transition" aria-label="전지원’s avatar" aria-role="img"></span>

																	</div>
																</div>
															</a>
														</div>
													</div></li>
												<li class="usersList__item"><div class="g-avatar-badge userAvatarBadge">
														<div class="g-avatar-badge-body">
															<a href="/5-32" rel="nofollow" class="g-avatar-badge-avatar-link">
																<div class="g-avatar-badge-avatar">
																	<div class="image m-user image__whiteOutline readOnly customImage sc-artwork sc-artwork-placeholder-9 image__rounded m-loaded" style="height: 40px; width: 40px;">
																		<span style="background-image: url(&quot;https://i1.sndcdn.com/avatars-000688323015-7se516-t50x50.jpg&quot;); width: 40px; height: 40px; opacity: 1;" class="sc-artwork sc-artwork-placeholder-9 image__rounded image__full g-opacity-transition" aria-label="5/32’s avatar" aria-role="img"></span>

																	</div>
																</div>
															</a>
														</div>
													</div></li>
												<li class="usersList__item"><div class="g-avatar-badge userAvatarBadge">
														<div class="g-avatar-badge-body">
															<a href="/user-658189501" rel="nofollow" class="g-avatar-badge-avatar-link">
																<div class="g-avatar-badge-avatar">
																	<div class="image m-user image__whiteOutline readOnly" style="height: 40px; width: 40px;">
																		<span style="width: 40px; height: 40px;" class="sc-artwork sc-artwork-placeholder-5 image__rounded image__full" aria-label="sz’s avatar" aria-role="img"></span>

																	</div>
																</div>
															</a>
														</div>
													</div></li>
											</ul>
										</div>
									</div>
								</article>
								<article class="sidebarModule g-all-transitions-200-linear mobileApps">
									<div class="sidebarHeader g-flex-row-centered-spread sc-type-light sc-border-light-bottom">
										<h3 class="sidebarHeader__title sc-type-light sc-font g-flex-row-centered noIcon">
											<span class="sidebarHeader__actualTitle">Go mobile</span>
										</h3>
										<span class="sidebarHeader__more sc-type-h3 mobileApps__dismiss sc-ir">Dismiss</span>
									</div>
									<div class="sidebarContent">
										<div class="mobileAppsButtons sc-clearfix m-sidebar">
											<a href="https://itunes.apple.com/us/app/soundcloud/id336353151?mt=8" target="_blank" class="mobileAppsButtons__button mobileAppsButtons__appStore g-appStoreButton g-appStoreButton__appStore sc-ir"> Download on the App Store </a> <a href="https://play.google.com/store/apps/details?id=com.soundcloud.android&amp;hl=us&amp;referrer=utm_source%3Dsoundcloud%26utm_medium%3Dweb%26utm_campaign%3Dweb_xsell_listen_page" target="_blank" class="mobileAppsButtons__button mobileAppsButtons__googlePlay g-appStoreButton g-appStoreButton__googlePlay sc-ir"> Get it on Google Play </a>
										</div>
									</div>
								</article>
							</div>
							<div class="l-footer sc-text-verylight standard sc-border-light-top">
								<a class="sc-link-verylight" href="/terms-of-use" title="Terms of use">Legal</a>&nbsp;⁃ <a class="sc-link-verylight" href="/pages/privacy" title="Privacy policy">Privacy</a>&nbsp;⁃ <a class="sc-link-verylight" href="/pages/cookies" title="Cookies policy">Cookies</a>&nbsp;⁃ <a class="sc-link-verylight" href="/imprint" title="Company information">Imprint</a>&nbsp;⁃ <a class="sc-link-verylight" href="//creators.soundcloud.com" target="_blank" title="Creator Resources">Creator Resources</a>&nbsp;⁃ <a class="sc-link-verylight" href="//blog.soundcloud.com" target="_blank" title="SoundCloud blog">Blog</a>&nbsp;⁃ <a class="sc-link-verylight" href="/charts/top" title="Charts">Charts</a>&nbsp;⁃ <a class="sc-link-verylight" href="/popular/searches" title="Popular searches">Popular searches</a>
								<div class="footer__localeSelector">
									<a type="button" class="localeSelector sc-pointer" tabindex="0" aria-haspopup="true" role="button" aria-owns="dropdown-button-2155">Language: <span class="sc-text">English (US)</span>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
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

	<script src="/soundcloud/music/js/jquery.min.js"></script>
	<script src="/soundcloud/music/js/poca.bundle.js"></script>
	<script src="/soundcloud/music/js/default-assets/active.js"></script>
	<script src="/soundcloud/js/playerEdit.js"></script>

	<script>
		$(document).ready(function() {
			$('.audioplayer-playpause').attr('id', 'play-btn');
		});
	</script>


</body>

</html>