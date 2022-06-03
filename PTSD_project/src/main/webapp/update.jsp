<%@page import="com.ptsd.model.TaxiVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Forty by HTML5 UP</title>
		<meta charset="UTF-8" />
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" href="assets/css/main.css" />
		
	</head>
	<style>
	
	</style>
	<body style="text-align: center;">
	<%
	TaxiVO vo=(TaxiVO)session.getAttribute("taxi");
	%>

		<!-- Wrapper -->
			<div id="wrapper">
				<!-- Menu -->
					<nav id="Update">	
						<ul class="actions vertical">
							<li><h5>회원정보수정</h5></li>
								<form action="TaxiUpdateSerivce" method="post">
									<li><input type="text" name="Taxi_num" placeholder="Taxi_num을 입력하세요"></li>
									<li><input type="text" name="Car_kinds" placeholder="Car_kinds를 입력하세요"></li>
									<li><input type="text" name="Office_name" placeholder="Office_name를 입력하세요"></li>
									<li><input type="text" name="Personal_tel" placeholder="숫자만입력하셈"></li>
									<li><input type="radio" name="Approve_check" value="Y" ></li>
									<li><input type="radio" name="Approve_check" value="N"></li>
									<li><input type="password" name="Pw" placeholder="PW를 입력하세요"></li>
									<li><input type="submit" value="JoinUs" class="button fit"></li>
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

