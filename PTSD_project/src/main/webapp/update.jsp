<%@page import="com.ptsd.model.TaxiDAO"%>
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
</head>
<body style="text-align: center;">
      <%
   BoardDAO dao = new BoardDAO();
      
   ArrayList<BoardVO> list = dao.showBoard();
   TaxiVO result = new TaxiVO();
   if(result!=null){
   result = (TaxiVO)session.getAttribute("member");
   };
   
   %>
   <main class="main" id="top">
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
                  <% if(result == null) {%>
                  <li class="nav-item px-3 px-xl-4"><a
                     class="nav-link fw-medium" aria-current="page"
                     href="login_resist_form.html">로그인</a></li>
                  <li class="nav-item px-3 px-xl-4"><a
                     class="nav-link fw-medium" aria-current="page"
                     href="login_resist_form.html">회원가입</a></li>

                  <%}else{ %>
                  <%if(result.getTaxi_num().equals("admin")){%>
                  <a href="select.jsp">회원정보관리</a>
                  <% }%>
                  <!-- <a href = "update.jsp">개인정보수정</a>  -->

                  <li class="nav-item px-3 px-xl-4"><a
                     class="nav-link fw-medium" aria-current="page"
                     href="LogoutService">로그아웃</a></li>

                  <li class="nav-item px-3 px-xl-4"><a
                     class="nav-link fw-medium" aria-current="page" href="update.jsp">회원정보수정</a></li>
                  <%} %>



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
   TaxiVO vo=(TaxiVO)session.getAttribute("taxi");
   %>

      <!-- Wrapper -->
         <div id="wrapper">
            <!-- Menu -->
               <nav id="Update">   
                  <ul class="actions vertical">
                     <br>
                     <br>
                     <h5 text-align :center>회원정보수정</h5>
                     <br>
                        <form action="TaxiUpdateService" method="post" id="updateTable">
                           <table text-align:center class="tableUpdate" height=280px>
                           <tr>
                           <td><th >Taxi_num</th></td>
                           <td colspan="2" ><input type="text" name="Taxi_num" style="margin-left:50px" ></td>
                           </tr>
                           <tr>
                           <td><th>Car_kinds</th></td>
                           <td colspan="2"><input type="text" name="Car_kinds" style="margin-left:50px"></td>
                           </tr>
                           <tr>
                           <td><th>Office_name</th></td>
                           <td colspan="2"><input type="text" name="Office_name" style="margin-left:50px"></td>
                           </tr>
                           <tr>
                           <td><th>휴대폰번호</th></td>
                           <td colspan="2"><input type="text" name="Personal_tel" onKeyup="this.value=this.value.replace(/[^0-9]/g, '');" style="margin-left:50px"></td>
                           </tr>
                           <tr>
                           <td><th>"PW"</th></td>
                           <td colspan="2"><input type="password" name="Pw" style="margin-left:50px"></td>
                           </tr>
                           <tr>
                           <td><th>정보제공동의</th></td>
                           <td align="center" text-align="right">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Y <input type="radio" name="Approve_check" value="Y" align="right"></td>
                           <td align="center">N  <input type="radio" name="Approve_check" value="N"></td>
                           <!--<td align="center"  colspan='2' text-align="left">Y  <input type="radio" name="Approve_check" value="Y"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  N <input type="radio" name="Approve_check" value="N"></td>  -->
                           <!--  <td align="center">N  <input type="radio" name="Approve_check" value="N"></td>-->
                           
                           </tr>
                     
                        </table>
                        <br>
                           <input type="submit" value="회원정보수정" class="btn btn-warning">
                        </form>
                        
                        
                  </ul>
               </nav>         
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
