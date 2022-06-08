<<<<<<< HEAD
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
   <main class="main" id="top">
      <nav
         class="navbar navbar-expand-lg navbar-light fixed-top py-5 d-block"
         data-navbar-on-scroll="data-navbar-on-scroll">
         <div class="container">
            <a class="navbar-brand" href="index.html"><img
               src="assets/img/logo.svg" height="34" alt="logo" /></a>
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
                     class="nav-link fw-medium" aria-current="page" href="#service">Service</a></li>
                  <li class="nav-item px-3 px-xl-4"><a
                     class="nav-link fw-medium" aria-current="page"
                     href="#destination">Destination</a></li>
                  <li class="nav-item px-3 px-xl-4"><a
                     class="nav-link fw-medium" aria-current="page" href="#booking">Booking</a></li>
                  <li class="nav-item px-3 px-xl-4"><a
                     class="nav-link fw-medium" aria-current="page"
                     href="#testimonial">Testimonial</a></li>



                  <!-- 로그인 여부에 따라 사용자에게 보이는 상단아이콘을 다르게 함 -->

                  <a href="select.jsp">회원정보관리</a>
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

      <div>

         <table class="table">
            <thead>
               <tr>
                  <th scope="col">#</th>
                  <th scope="col">First</th>
                  <th scope="col">Last</th>
                  <th scope="col">Handle</th>
               </tr>
            </thead>
            <tbody>
               <tr>
                  <th scope="row">1</th>
                  <td>Mark</td>
                  <td>Otto</td>
                  <td>@mdo</td>
               </tr>
               <tr>
                  <th scope="row">2</th>
                  <td>Jacob</td>
                  <td>Thornton</td>
                  <td>@fat</td>
               </tr>
               <tr>
                  <th scope="row">3</th>
                  <td>Larry</td>
                  <td>the Bird</td>
                  <td>@twitter</td>
               </tr>
            </tbody>
         </table>
      </div>
      
      
      
      
      
      
      <%
	BoardDAO dao = new BoardDAO();
	ArrayList<BoardVO> list = dao.showBoard();
	%>
      
      
      
      
      
      <div id="board">
<table id = "list">
<tr>
<td>번호</td>
<td>제목</td>
<td>작성자</td>
<td>시간</td>
<td>삭제</td>
</tr>


         <%for(int i =0 ; i <list.size(); i++){ %>
         <tr>
            <td><%= i+1 %></td>
            <td><a href="viewBoard.jsp?num=<%=list.get(i).getNum() %>"> <%= list.get(i).getTitle() %> </a></td>
            <td><%= list.get(i).getWriter() %></td>
            <td><%= list.get(i).getB_day() %></td>
            <td><button type=button onclick = "location.href='listDeleteService.do?num=<%=list.get(i).getNum()%>'">삭제</button></td>
         	<%-- <td><a href="DeleteBoardService?Num=<%=//list.get(i).getNum() %>">삭제</a></td> --%>
         </tr>
         <% } %>
         </table>
<a href="index.jsp"><button id="writer">홈으로가기</button></a> <a
         href="writerBoard.jsp"><button id="writer">작성하러가기</button></a>
</div>
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
=======
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
	<main class="main" id="top">
		<nav
			class="navbar navbar-expand-lg navbar-light fixed-top py-5 d-block"
			data-navbar-on-scroll="data-navbar-on-scroll">
			<div class="container">
				<a class="navbar-brand" href="index.html"><img
					src="assets/img/logo.svg" height="34" alt="logo" /></a>
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
							class="nav-link fw-medium" aria-current="page" href="#service">Service</a></li>
						<li class="nav-item px-3 px-xl-4"><a
							class="nav-link fw-medium" aria-current="page"
							href="#destination">Destination</a></li>
						<li class="nav-item px-3 px-xl-4"><a
							class="nav-link fw-medium" aria-current="page" href="#booking">Booking</a></li>
						<li class="nav-item px-3 px-xl-4"><a
							class="nav-link fw-medium" aria-current="page"
							href="#testimonial">Testimonial</a></li>



						<!-- 로그인 여부에 따라 사용자에게 보이는 상단아이콘을 다르게 함 -->

						<a href="select.jsp">회원정보관리</a>
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

		<div>

			<table class="table">
				<thead>
					<tr>
						<th scope="col">#</th>
						<th scope="col">First</th>
						<th scope="col">Last</th>
						<th scope="col">Handle</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row">1</th>
						<td>Mark</td>
						<td>Otto</td>
						<td>@mdo</td>
					</tr>
					<tr>
						<th scope="row">2</th>
						<td>Jacob</td>
						<td>Thornton</td>
						<td>@fat</td>
					</tr>
					<tr>
						<th scope="row">3</th>
						<td>Larry</td>
						<td>the Bird</td>
						<td>@twitter</td>
					</tr>
					<tr>
						<th scope="row">3</th>
						<td>Larry</td>
						<td>the Bird</td>
						<td>@twitter</td>
					</tr>
					<tr>
						<th scope="row">3</th>
						<td>Larry</td>
						<td>the Bird</td>
						<td>@twitter</td>
					</tr>
					<tr>
						<th scope="row">3</th>
						<td>Larry</td>
						<td>the Bird</td>
						<td>@twitter</td>
					</tr>
					<tr>
						<th scope="row">3</th>
						<td>Larry</td>
						<td>the Bird</td>
						<td>@twitter</td>
					</tr>
					<tr>
						<th scope="row">3</th>
						<td>Larry</td>
						<td>the Bird</td>
						<td>@twitter</td>
					</tr>
					<tr>
						<th scope="row">3</th>
						<td>Larry</td>
						<td>the Bird</td>
						<td>@twitter</td>
					</tr>
					<tr>
						<th scope="row">3</th>
						<td>Larry</td>
						<td>the Bird</td>
						<td>@twitter</td>
					</tr>
					<tr>
						<th scope="row">3</th>
						<td>Larry</td>
						<td>the Bird</td>
						<td>@twitter</td>
					</tr>
					<tr>
						<th scope="row">3</th>
						<td>Larry</td>
						<td>the Bird</td>
						<td>@twitter</td>
					</tr>
					<tr>
						<th scope="row">3</th>
						<td>Larry</td>
						<td>the Bird</td>
						<td>@twitter</td>
					</tr>
					<tr>
						<th scope="row">3</th>
						<td>Larry</td>
						<td>the Bird</td>
						<td>@twitter</td>
					</tr>
					<tr>
						<th scope="row">3</th>
						<td>Larry</td>
						<td>the Bird</td>
						<td>@twitter</td>
					</tr>
					<tr>
						<th scope="row">3</th>
						<td>Larry</td>
						<td>the Bird</td>
						<td>@twitter</td>
					</tr>
					<tr>
						<th scope="row">3</th>
						<td>Larry</td>
						<td>the Bird</td>
						<td>@twitter</td>
					</tr>
					<tr>
						<th scope="row">3</th>
						<td>Larry</td>
						<td>the Bird</td>
						<td>@twitter</td>
					</tr>
					<tr>
						<th scope="row">3</th>
						<td>Larry</td>
						<td>the Bird</td>
						<td>@twitter</td>
					</tr>
					<tr>
						<th scope="row">3</th>
						<td>Larry</td>
						<td>the Bird</td>
						<td>@twitter</td>
					</tr>
					<tr>
						<th scope="row">3</th>
						<td>Larry</td>
						<td>the Bird</td>
						<td>@twitter</td>
					</tr>
				</tbody>
			</table>
		</div>
>>>>>>> branch 'master' of https://github.com/2022-SMHRD-KDT-IoT-4/PTSD.git
</body>
</html>