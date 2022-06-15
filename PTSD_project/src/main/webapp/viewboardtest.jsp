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
</head>
<body>

	<main class="main" id="top" class="center" >
		<nav
			class="navbar navbar-expand-lg navbar-light fixed-top py-5 d-block"
			data-navbar-on-scroll="data-navbar-on-scroll">
			<div class="container">
				<a class="navbar-brand" href="index.html"><img
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
							href="board.jsp">사용후기</a></li>



						<!-- 로그인 여부에 따라 사용자에게 보이는 상단아이콘을 다르게 함 -->

						
						<!-- <a href = "update.jsp">개인정보수정</a>  -->

						<li class="nav-item px-3 px-xl-4"><a
							class="nav-link fw-medium" aria-current="page"
							href="LogoutService">Logout</a></li>

						<li class="nav-item px-3 px-xl-4"><a
							class="nav-link fw-medium" aria-current="page" href="update.jsp">회원정보수정</a></li>


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
int TAXI_COMMENT_SEQ = Integer.parseInt(request.getParameter("TAXI_COMMENT_SEQ")) ;	
BoardDAO dao = new BoardDAO();
BoardVO vo =dao.showDetail(TAXI_COMMENT_SEQ);
//request.setCharacterEncoding("UTF-8");
	
	%>
	
	<div id="board">
		<center><div class="table table-responsive">
		<table class="list" border ="1px solid black">
<tr>
				<td class="danger">작성자</td>
				<td><div name="TAXI_COMMENT_WRITER" size=28 class="form-control" ><%=vo.getTAXI_COMMENT_WRITER() %></div></td>
				<td class="danger" width="66">택시번호</td>
                <td><div name="TAXI_NUM" size=28 class="form-control"> <%=vo.getTAXI_NUM() %></td>
			</tr>
			<tr>
				<td class="danger">제목</td>
				<td colspan="3"><div  class="form-control" name="TAXI_COMMENT_TITLE" size=78 ><%=vo.getTAXI_COMMENT_TITLE() %></td>
			</tr>
			<tr>
				<td class="danger">내용</td>
				<td colspan="3"><textarea rows="20" cols="80" class="form-control" style="resize: none;" name="val" disabled><%=vo.getTAXI_COMMENT_COMMENT() %></textarea></td>
			</tr>
			<tr>
				<td colspan="4" align="center"><a href="board.jsp" class="btn btn-warning" >뒤로가기</a></td>
				
			</tr>
			
		</table>
		</div></center>
		
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
