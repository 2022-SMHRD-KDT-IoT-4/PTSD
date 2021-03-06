<%@page import="com.ptsd.model.TaxiVO"%>
<%@page import="com.ptsd.model.BoardVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.ptsd.model.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
<link href="assets/css/rating.css" rel="stylesheet" />
</head>
<body>

	<main class="main" id="top" class="center" >
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
							class="nav-link fw-medium" aria-current="page" href="#service">?????????</a></li>
						<li class="nav-item px-3 px-xl-4"><a
							class="nav-link fw-medium" aria-current="page" href="#booking">????????????</a></li>
						<li class="nav-item px-3 px-xl-4"><a
							class="nav-link fw-medium" aria-current="page"
							href="board.jsp">????????????</a></li>


						<!-- ????????? ????????? ?????? ??????????????? ????????? ?????????????????? ????????? ??? -->

						<!-- <a href = "update.jsp">??????????????????</a>  -->

						<li class="nav-item px-3 px-xl-4"><a
							class="nav-link fw-medium" aria-current="page"
							href="LogoutService">Logout</a></li>

						<li class="nav-item px-3 px-xl-4"><a
							class="nav-link fw-medium" aria-current="page" href="update.jsp">??????????????????</a></li>


						<!-- <li class="nav-item px-3 px-xl-4"><a
							class="nav-link fw-medium" aria-current="page" href="login_resist_form.html">Login</a></li>  -->



						<!-- <li class="nav-item px-3 px-xl-4"><a
							class="btn btn-outline-dark order-1 order-lg-0 fw-medium"
							href="#!">Sign Up</a></li>  -->



						<li class="nav-item dropdown px-3 px-lg-0"><a
							class="d-inline-block ps-0 py-2 pe-3 text-decoration-none dropdown-toggle fw-medium"
							href="#" id="navbarDropdown" role="button"
							data-bs-toggle="dropdown" aria-expanded="false">EN</a>
							<ul class="dropdown-menu dropdown-menu-end border-0 shadow-lg"
								style="border-radius: 0.3rem;" aria-labelledby="navbarDropdown">
								<li><a class="dropdown-item" href="#!">EN</a></li>
								<li><a class="dropdown-item" href="#!">BN</a></li>
							</ul></li>
					</ul>
				</div>
			</div>
		</nav>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>


				<%
				BoardVO vo = new BoardVO();
				BoardDAO dao = new BoardDAO();
				TaxiVO result = new TaxiVO();
				if(result!=null){
				result = (TaxiVO)session.getAttribute("member");}
				%>


	<div id="board">
	<!-- enctype ????????? : application /x-www-form-urlencoded
						Key&Value????????? ????????? ??????
	??????, ???????????? ?????? ???????????? ??????????????? ??????????????? ?????? ????????? ????????? multipart/form-data??? ??????????????????
	 -->
		<center><form action="WriterBoardService1" method="post">
			<div class="table table-responsive">
				<table class="list" border ="1px solid black">
			<tr>
				<td class="danger">?????????</td>
				<td><input type="text" name="TAXI_COMMENT_WRITER" size=31 class="form-control"></td>
				<td class="danger">????????????</td>
                <td><input type="text" name="TAXI_NUM" size=31 class="form-control" value="<%=result.getTaxi_num() %>"></td>
			</tr>
			<tr>
				<td class="danger">??????</td>
				<td colspan="3"><input type="text" class="form-control" name="TAXI_COMMENT_TITLE" size=78 ></td>
			</tr>
			<tr>
				<td class="danger">??????</td>
				<td colspan="3"><textarea rows="20" cols="80" name="TAXI_COMMENT_COMMENT" class="form-control" style="resize: none;"></textarea></td>
			</tr>
			<tr>
				<td colspan="4"><center><input type="reset" value="?????????"  class="btn btn-warning">&nbsp;
				<input type="submit" value="????????????"  class="btn btn-warning"></center></td>
			</tr>
			
			
			
			
				<div class="star-rating space-x-4 mx-auto">
	<input type="radio" id="5-stars" name="RATING" value="5" v-model="ratings"/>
	<label for="5-stars" class="star pr-4">???</label>
	<input type="radio" id="4-stars" name="RATING" value="4" v-model="ratings"/>
	<label for="4-stars" class="star">???</label>
	<input type="radio" id="3-stars" name="RATING" value="3" v-model="ratings"/>
	<label for="3-stars" class="star">???</label>
	<input type="radio" id="2-stars" name="RATING" value="2" v-model="ratings"/>
	<label for="2-stars" class="star">???</label>
	<input type="radio" id="1-star" name="RATING" value="1" v-model="ratings" />
	<label for="1-star" class="star">???</label>
</div>
	

			</table>
			
			</div>
		</form> </center>
		</div>
	</div>

	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/skel.min.js"></script>
	<script src="assets/js/util.js"></script>
	<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
	<script src="assets/js/main.js"></script>
</body>
</html>
