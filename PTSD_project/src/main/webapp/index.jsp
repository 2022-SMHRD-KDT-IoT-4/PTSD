<%@page import="com.ptsd.model.TaxiVO"%>
<%@page import="com.ptsd.model.LanguageDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- ===============================================-->
<!--    Document Title-->
<!-- ===============================================-->
<title>PTSD | Project Taxi Service Drive</title>


<!-- ===============================================-->
<!--    Favicons-->
<!-- ===============================================-->
<link rel="apple-touch-icon" sizes="180x180"
	href="assets/img/favicons/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="32x32"
	href="assets/img/favicons/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16"
	href="assets/img/favicons/favicon-16x16.png">
<link rel="shortcut icon" type="image/x-icon"
	href="assets/img/favicons/favicon.ico">
<link rel="manifest" href="assets/img/favicons/manifest.json">
<meta name="msapplication-TileImage"
	content="assets/img/favicons/mstile-150x150.png">
<meta name="theme-color" content="#ffffff">


<!-- ===============================================-->
<!--    Stylesheets-->
<!-- ===============================================-->
<link href="assets/css/theme.css" rel="stylesheet" />
<link href="assets/css/custom.css" rel="stylesheet" />
</head>
<style>
.bottom_fixed {
	position: fixed;
	height: 150px;
	z-index: 10;
	bottom: -2%;
	left: 0;
	right: 0;
	overflow: hidden;
}
.bottom_box {
	margin : auto;
	width: 400px;
	height: 100px;
	border-radius: 20px;
	background-color: black;
	opacity: 0.55;
	text-align: center;
	font-size: 30px;
}

#service_click {
	text-align: center;
	bottom : 10px;
	height : 500px;
	margin : -410px;
	margin-left : -145px;
	align-items : center;
	align-self : center;
	position: fixed;
	text-decoration-line: none;
	color : white;
}
</style>

<body>
	
	
	<%
	LanguageDAO dao = new LanguageDAO();
	int lan_seq = 4;
	dao.showLanguage(lan_seq);
	TaxiVO member = (TaxiVO)session.getAttribute("member");
	%>
	

	<div class="bottom_fixed">
		<div class="bottom_box">
			<a id="service_click" class="link" target="_blank" align="center">
				서비스 신청하러 가기
			</a>
		</div>
	</div>
	
	<nav id="login">
		<ul class="links">
			<li><h5>로그인</h5></li>
			<form action="LoginService" method="post">
				<li><input type="text" placeholder="Email을 입력하세요" name="email"></li>
				<li><input type="password" placeholder="PW를 입력하세요" name="pw"></li>
				<li><input type="submit" value="LogIn" class="button fit"></li>
			</form>
		</ul>
		<ul class="actions vertical">
			<li><h5>회원가입</h5></li>
			<form action="JoinService" method="post">
				<li><input type="text" placeholder="Email을 입력하세요" name="email"></li>
				<li><input type="password" placeholder="PW를 입력하세요" name="pw"></li>
				<li><input type="text" placeholder="전화번호를 입력하세요" name="phone"></li>
				<li><input type="text" placeholder="집주소를 입력하세요" name="address"></li>
				<li><input type="submit" value="JoinUs" class="button fit"></li>
			</form>
		</ul>
	</nav>

	<!-- ===============================================-->
	<!--    Main Content-->
	<!-- ===============================================-->

	<main class="main" id="top">
		<nav
			class="navbar navbar-expand-lg navbar-light fixed-top py-5 d-block"
			data-navbar-on-scroll="data-navbar-on-scroll">
			<div class="container">
				<a class="navbar-brand" href="index.jsp"><img
					src="assets/img/login/logo.png" height="70" alt="logo" /></a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"> </span>
				</button>
				
				<div
					class="collapse navbar-collapse border-top border-lg-0 mt-4 mt-lg-0"
					id="navbarSupportedContent">
					<ul
						class="navbar-nav ms-auto pt-2 pt-lg-0 font-base align-items-lg-center align-items-start">
						<li class="nav-item px-3 px-xl-4"><a
							class="nav-link fw-medium" aria-current="page" href="#service">서비스</a></li>
						<li class="nav-item px-3 px-xl-4"><a
							class="nav-link fw-medium" aria-current="page" href="#booking">신청방법</a></li>
						<li class="nav-item px-3 px-xl-4"><a
							class="nav-link fw-medium" aria-current="page"
							href="#testimonial">사용후기</a></li>



						<!-- 로그인 여부에 따라 사용자에게 보이는 상단아이콘을 다르게 함 -->
						<% if(member == null) {%>
						<li class="nav-item px-3 px-xl-4"><a
							class="nav-link fw-medium" aria-current="page"
							href="login_resist_form.html">로그인</a></li>
						<li class="nav-item px-3 px-xl-4"><a
							class="nav-link fw-medium" aria-current="page"
							href="login_resist_form.html">회원가입</a></li>

						<%}else{ %>
						<%if(member.getTaxi_num().equals("admin")){%>
						<a href="select.jsp">회원정보관리</a>
						<% }%>
						<!-- <a href = "update.jsp">개인정보수정</a>  -->

						<li class="nav-item px-3 px-xl-4"><a
							class="nav-link fw-medium" aria-current="page"
							href="LogoutService">로그아웃</a></li>

						<li class="nav-item px-3 px-xl-4"><a
							class="nav-link fw-medium" aria-current="page" href="update.jsp">회원정보수정</a></li>
						<%} %>

				</div>
			</div>
		</nav>
		<section style="padding-top: 7rem;">
			<div class="bg-holder" style="background-image: url();"></div>
			<!--  백그라운드 이미지 -->
			<!--/.bg-holder-->

			<div class="container">
				<div class="row align-items-center">
					<div class="col-md-5 col-lg-6 order-0 order-md-1 text-end">
						<img class="pt-7 pt-md-0 hero-img"
							src="assets/img/hero/madehero2.jpg" alt="hero-header" />
					</div>
					<div class="col-md-7 col-lg-6 text-md-start text-center py-6">
						<h4 class="fw-bold text-danger mb-3"></h4>
						<h1 class="hero-title" >PTSD제품을 사용하고 편하고 충실한 삶을 사십시오</h1>
						<p class="mb-4 fw-medium">
							<br
								class="d-none d-xl-block" />
							<br class="d-none d-xl-block" />
						</p>
						<div class="text-center text-md-start">
							<a
								class="btn btn-primary btn-lg me-md-4 mb-3 mb-md-0 border-0 primary-btn-shadow"
								href="#!" role="button">정보 더보기</a>
							<div class="w-100 d-block d-md-none"></div>
							<a href="#!" role="button" data-bs-toggle="modal"
								data-bs-target="#popupVideo"><span
								class="btn btn-danger round-btn-lg rounded-circle me-3 danger-btn-shadow">
									<img src="assets/img/hero/play.svg" width="15" alt="paly" />
							</span></a><span class="fw-medium">사용 영상</span>
							<div class="modal fade" id="popupVideo" tabindex="-1"
								aria-labelledby="popupVideo" aria-hidden="true">
								<div class="modal-dialog modal-dialog-centered modal-lg">
									<div class="modal-content">
										<iframe class="rounded"
											style="width: 100%; max-height: 500px;" height="500px"
											src="https://www.youtube.com/embed/_lhdhL4UDIo"
											title="YouTube video player"
											allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
											allowfullscreen="allowfullscreen"></iframe>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>


		<!-- ============================================-->
		<!-- <section> begin ============================-->
		<section class="pt-5 pt-md-9" id="service">

			<div class="container">
				<div class="position-absolute z-index--1 end-0 d-none d-lg-block">
					<img src="assets/img/category/shape.svg" style="max-width: 200px"
						alt="service" />
				</div>
				<div class="mb-7 text-center">
					<h3
						class="fs-xl-10 fs-lg-8 fs-7 fw-bold font-cursive text-capitalize">최고의 서비스를 만나보세요</h3>
				</div>
				<div class="row">
					<div class="col-lg-3 col-sm-6 mb-6">
						<div
							class="card service-card shadow-hover rounded-3 text-center align-items-center">
							<div class="card-body p-xxl-5 p-4">
								<img src="assets/img/homepage/help.png" width="75"
									alt="Service" />
								<h4 class="mb-3">원하는 요청</h4>
								<p class="mb-0 fw-medium">승객은 원하는 요청을 선택할 수 있습니다</p>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-sm-6 mb-6">
						<div
							class="card service-card shadow-hover rounded-3 text-center align-items-center">
							<div class="card-body p-xxl-5 p-4">
								<img src="assets/img/homepage/jejutour1.png" width="75"
									alt="Service" />
								<h4 class="mb-3">투어 정보</h4>
								<p class="mb-0 fw-medium">당신은 관광지에 대한 정보를 볼 수 있습니다</p>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-sm-6 mb-6">
						<div
							class="card service-card shadow-hover rounded-3 text-center align-items-center">
							<div class="card-body p-xxl-5 p-4">
								<img src="assets/img/homepage/speaker1.jpg" width="75"
									alt="Service" />
								<h4 class="mb-3">요청 듣기</h4>
								<p class="mb-0 fw-medium">승객이 원하는 요청을 들을 수 있습니다</p>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-sm-6 mb-6">
						<div
							class="card service-card shadow-hover rounded-3 text-center align-items-center">
							<div class="card-body p-xxl-5 p-4">
								<img src="assets/img/homepage/kakaomap.png" width="75"
									alt="Service" />
								<h4 class="mb-3">카카오 지도</h4>
								<p class="mb-0 fw-medium">승객들은 카카오 맵을 이용하여 현재 위치를 알 수 있습니다</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- end of .container-->

		</section>
	

		<!-- ============================================-->
		<!-- <section> begin ============================-->
		<section id="booking">

			<div class="container">
				<div class="row align-items-center">
					<div class="col-lg-6">
						<div class="mb-4 text-start">
							<h5 class="text-secondary">쉽고 빠릅니다</h5>
							<h3
								class="fs-xl-10 fs-lg-8 fs-7 fw-bold font-cursive text-capitalize">
								간단한 3단계로 승객과 대화를 할 수 있습니다</h3>
						</div>
						<div class="d-flex align-items-start mb-5">
							<div class="bg-primary me-sm-4 me-3 p-3"
								style="border-radius: 13px">
								<img src="assets/img/steps/selection.svg" width="22" alt="steps" />
							</div>
							<div class="flex-1">
								<h5 class="text-secondary fw-bold fs-0">서비스를 신청하세요</h5>
								<p>
									서비스를 신청하시려면 하단의 <br
										class="d-none d-sm-block"> 서비스 신청하러 가기를 눌러주세요
								</p>
							</div>
						</div>
						<div class="d-flex align-items-start mb-5">
							<div class="bg-danger me-sm-4 me-3 p-3"
								style="border-radius: 13px">
								<img src="assets/img/steps/water-sport.svg" width="22"
									alt="steps" />
							</div>
							<div class="flex-1">
								<h5 class="text-secondary fw-bold fs-0">서비스에 관한 상담</h5>
								<p>
									신청이 된 이후 상담을 통해 서비스에 대해<br
										class="d-none d-sm-block"> 대화를 나눌 것 입니다.
								</p>
							</div>
						</div>
						<div class="d-flex align-items-start mb-5">
							<div class="bg-info me-sm-4 me-3 p-3" style="border-radius: 13px">
								<img src="assets/img/steps/taxi.svg" width="22" alt="steps" />
							</div>
							<div class="flex-1">
								<h5 class="text-secondary fw-bold fs-0">제품 설치</h5>
								<p>
									상담이 완료된 이후에, 일정을 잡아 <br
										class="d-none d-sm-block"> 차량에 제품을 설치하여 서비스를 이용하세요!
								</p>
							</div>
						</div>
					</div>
					<div
						class="col-lg-6 d-flex justify-content-center align-items-start">
						<div class="card position-relative shadow"
							style="max-width: 370px;">
							<div class="position-absolute z-index--1 me-10 me-xxl-0"
								style="right: -160px; top: -210px;">
								<img src="assets/img/steps/bg.png" style="max-width: 550px;"
									alt="shape" />
							</div>
							<div class="card-body p-3">
								<img class="mb-4 mt-2 rounded-2 w-100"
									src="assets/img/steps/booking-img.jpg" alt="booking" />
								<div>
									<h5 class="fw-medium">Trip To Greece</h5>
									<p class="fs--1 mb-3 fw-medium">14-29 June | by Robbin
										joseph</p>
									<div class="icon-group mb-4">
										<span class="btn icon-item"> <img
											src="assets/img/steps/leaf.svg" alt="" /></span><span
											class="btn icon-item"> <img
											src="assets/img/steps/map.svg" alt="" /></span><span
											class="btn icon-item"> <img
											src="assets/img/steps/send.svg" alt="" /></span>
									</div>
									<div class="d-flex align-items-center justify-content-between">
										<div class="d-flex align-items-center mt-n1">
											<img class="me-3" src="assets/img/steps/building.svg"
												width="18" alt="building" /><span class="fs--1 fw-medium">24
												people going</span>
										</div>
										<div class="show-onhover position-relative">
											<div
												class="card hideEl shadow position-absolute end-0 start-xl-50 bottom-100 translate-xl-middle-x ms-3"
												style="width: 260px; border-radius: 18px;">
												<div class="card-body py-3">
													<div class="d-flex">
														<div style="margin-right: 10px">
															<img class="rounded-circle"
																src="assets/img/steps/favorite-placeholder.png"
																width="50" alt="favorite" />
														</div>
														<div>
															<p class="fs--1 mb-1 fw-medium">Ongoing</p>
															<h5 class="fw-medium mb-3">Trip to rome</h5>
															<h6 class="fs--1 fw-medium mb-2">
																<span>40%</span> completed
															</h6>
															<div class="progress" style="height: 6px;">
																<div class="progress-bar" role="progressbar"
																	style="width: 40%;" aria-valuenow="25"
																	aria-valuemin="0" aria-valuemax="100"></div>
															</div>
														</div>
													</div>
												</div>
											</div>
											<button class="btn">
												<img src="assets/img/steps/heart.svg" width="20" alt="step" />
											</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- end of .container-->

		</section>
		<!-- <section> close ============================-->
		<!-- ============================================-->

		<!-- ============================================-->
		<!-- <section> begin ============================-->
		<section id="testimonial">

			<div class="container">
				<div class="row">
					<div class="col-lg-5">
						<div class="mb-8 text-start">
							<h5 class="text-secondary">사용후기</h5>
							<h3
								class="fs-xl-10 fs-lg-8 fs-7 fw-bold font-cursive text-capitalize">
								제품에 대하여 사용후기</h3>
						</div>
					</div>
					<div class="col-lg-1"></div>
					<div class="col-lg-6">
						<div class="pe-7 ps-5 ps-lg-0">
							<div class="carousel slide carousel-fade position-static"
								id="testimonialIndicator" data-bs-ride="carousel">
								<div class="carousel-indicators">
									<button class="active" type="button"
										data-bs-target="#testimonialIndicator" data-bs-slide-to="0"
										aria-current="true" aria-label="Testimonial 0"></button>
									<button class="false" type="button"
										data-bs-target="#testimonialIndicator" data-bs-slide-to="1"
										aria-current="true" aria-label="Testimonial 1"></button>
									<button class="false" type="button"
										data-bs-target="#testimonialIndicator" data-bs-slide-to="2"
										aria-current="true" aria-label="Testimonial 2"></button>
								</div>
								<div class="carousel-inner">
									<div class="carousel-item position-relative active">
										<div class="card shadow" style="border-radius: 10px;">
											<div class="position-absolute start-0 top-0 translate-middle">
												<img class="rounded-circle fit-cover"
													src="assets/img/testimonial/author.png" height="65"
													width="65" alt="" />
											</div>
											<div class="card-body p-4">
												<p class="fw-medium mb-4">&quot;실제 제품을 사용을 하고 난 후기가 들어가 있는 공간입니다&quot;</p>
												<h5 class="text-secondary">서찬종</h5>
												<p class="fw-medium fs--1 mb-0">광주광역시, 동구</p>
											</div>
										</div>
										<div
											class="card shadow-sm position-absolute top-0 z-index--1 mb-3 w-100 h-100"
											style="border-radius: 10px; transform: translate(25px, 25px)">
										</div>
									</div>
									<div class="carousel-item position-relative ">
										<div class="card shadow" style="border-radius: 10px;">
											<div class="position-absolute start-0 top-0 translate-middle">
												<img class="rounded-circle fit-cover"
													src="assets/img/testimonial/author2.png" height="65"
													width="65" alt="" />
											</div>
											<div class="card-body p-4">
												<p class="fw-medium mb-4">&quot;Jadoo is recognized as
													one of the finest travel agency in the world. When it came
													to planning a trip, I found them to be dependable.&quot;</p>
												<h5 class="text-secondary">Thomas Wagon</h5>
												<p class="fw-medium fs--1 mb-0">CEO of Red Button</p>
											</div>
										</div>
										<div
											class="card shadow-sm position-absolute top-0 z-index--1 mb-3 w-100 h-100"
											style="border-radius: 10px; transform: translate(25px, 25px)">
										</div>
									</div>
									<div class="carousel-item position-relative ">
										<div class="card shadow" style="border-radius: 10px;">
											<div class="position-absolute start-0 top-0 translate-middle">
												<img class="rounded-circle fit-cover"
													src="assets/img/testimonial/author3.png" height="65"
													width="65" alt="" />
											</div>
											<div class="card-body p-4">
												<p class="fw-medium mb-4">&quot;On the Windows talking
													painted pasture yet its express parties use. Sure last upon
													he same as knew next. Of believed or diverted no.&quot;</p>
												<h5 class="text-secondary">Kelly Willium</h5>
												<p class="fw-medium fs--1 mb-0">Khulna, Bangladesh</p>
											</div>
										</div>
										<div
											class="card shadow-sm position-absolute top-0 z-index--1 mb-3 w-100 h-100"
											style="border-radius: 10px; transform: translate(25px, 25px)">
										</div>
									</div>
								</div>
								<div
									class="carousel-navigation d-flex flex-column flex-between-center position-absolute end-0 top-lg-50 bottom-0 translate-middle-y z-index-1 me-3 me-lg-0"
									style="height: 60px; width: 20px;">
									<button class="carousel-control-prev position-static"
										type="button" data-bs-target="#testimonialIndicator"
										data-bs-slide="prev">
										<img src="assets/img/icons/up.svg" width="16" alt="icon" />
									</button>
									<button class="carousel-control-next position-static"
										type="button" data-bs-target="#testimonialIndicator"
										data-bs-slide="next">
										<img src="assets/img/icons/down.svg" width="16" alt="icon" />
									</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- end of .container-->

		</section>
		<!-- <section> close ============================-->
		<!-- ============================================-->


		<!-- ============================================-->
		<!-- <section> begin ============================-->
		<section class="pb-0 pb-lg-4">

			<div class="container">
				<div class="row">
					<div class="col-lg-3 col-md-7 col-12 mb-4 mb-md-6 mb-lg-0 order-0">
						<img class="mb-4" src="assets/img/login/logo.png" width="150"
							alt="jadoo" />
						<p class="fs--1 text-secondary mb-0 fw-medium">Apply for service<br>
You can exchange requests with foreign passengers in just a few minutes.</p>
					</div>
					<div class="col-lg-2 col-md-4 mb-4 mb-lg-0 order-lg-1 order-md-2">
						<h4
							class="footer-heading-color fw-bold font-sans-serif mb-3 mb-lg-4">Company</h4>
						<ul class="list-unstyled mb-0">
							<li class="mb-2"><a
								class="link-900 fs-1 fw-medium text-decoration-none" href="#!">About</a></li>
							<li class="mb-2"><a
								class="link-900 fs-1 fw-medium text-decoration-none" href="#!">Careers</a></li>
							<li class="mb-2"><a
								class="link-900 fs-1 fw-medium text-decoration-none" href="#!">Mobile</a></li>
						</ul>
					</div>
					<div class="col-lg-2 col-md-4 mb-4 mb-lg-0 order-lg-2 order-md-3">
						<h4
							class="footer-heading-color fw-bold font-sans-serif mb-3 mb-lg-4">Contact</h4>
						<ul class="list-unstyled mb-0">
							<li class="mb-2"><a
								class="link-900 fs-1 fw-medium text-decoration-none" href="#!">Help/FAQ</a></li>
							<li class="mb-2"><a
								class="link-900 fs-1 fw-medium text-decoration-none" href="#!">Press</a></li>
							<li class="mb-2"><a
								class="link-900 fs-1 fw-medium text-decoration-none" href="#!">Affiliate</a></li>
						</ul>
					</div>
					<div class="col-lg-2 col-md-4 mb-4 mb-lg-0 order-lg-3 order-md-4">
						<h4
							class="footer-heading-color fw-bold font-sans-serif mb-3 mb-lg-4">More</h4>
						<ul class="list-unstyled mb-0">
							<li class="mb-2"><a
								class="link-900 fs-1 fw-medium text-decoration-none" href="#!">Airlinefees</a></li>
							<li class="mb-2"><a
								class="link-900 fs-1 fw-medium text-decoration-none" href="#!">Airline</a></li>
							<li class="mb-2"><a
								class="link-900 fs-1 fw-medium text-decoration-none" href="#!">Low
									fare tips</a></li>
						</ul>
					</div>
					<div
						class="col-lg-3 col-md-5 col-12 mb-4 mb-md-6 mb-lg-0 order-lg-4 order-md-1">
						<div class="icon-group mb-4">
							<a class="text-decoration-none icon-item shadow-social"
								id="facebook" href="#!"><i class="fab fa-facebook-f"> </i></a><a
								class="text-decoration-none icon-item shadow-social"
								id="instagram" href="#!"><i class="fab fa-instagram"> </i></a><a
								class="text-decoration-none icon-item shadow-social"
								id="twitter" href="#!"><i class="fab fa-twitter"> </i></a>
						</div>
						<h4 class="fw-medium font-sans-serif text-secondary mb-3">Discover
							our app</h4>
						<div class="d-flex align-items-center">
							<a href="#!"> <img class="me-2"
								src="assets/img/play-store.png" alt="play store" /></a><a href="#!">
								<img src="assets/img/apple-store.png" alt="apple store" />
							</a>
						</div>
					</div>
				</div>
			</div>
			<!-- end of .container-->

		</section>
		<!-- <section> close ============================-->
		<!-- ============================================-->


		<div class="py-5 text-center">
			<p class="mb-0 text-secondary fs--1 fw-medium">All rights
				reserved@jadoo.co</p>
		</div>
	</main>
	<!-- ===============================================-->
	<!--    End of Main Content-->
	<!-- ===============================================-->

	<!-- ===============================================-->
	<!--    JavaScripts-->
	<!-- ===============================================-->
	<script src="vendors/@popperjs/popper.min.js"></script>
	<script src="vendors/bootstrap/bootstrap.min.js"></script>
	<script src="vendors/is/is.min.js"></script>
	<script
		src="https://polyfill.io/v3/polyfill.min.js?features=window.scroll"></script>
	<script src="vendors/fontawesome/all.min.js"></script>
	<script src="assets/js/theme.js"></script>

	<link
		href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&amp;family=Volkhov:wght@700&amp;display=swap"
		rel="stylesheet">

</body>
</html>