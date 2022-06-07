<%@page import="com.ptsd.model.LanguageVO"%>
<%@page import="java.util.List"%>
<%@page import="com.ptsd.model.TaxiVO"%>
<%@page import="com.ptsd.model.LanguageDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
	LanguageDAO dao = new LanguageDAO();
	int lan_seq = 1;
	dao.showLanguage(lan_seq);
	TaxiVO member = (TaxiVO)session.getAttribute("member");
	%>
  <a><%= dao.showLanguage(lan_seq).getLan_kor() %></a>
	
  <a><%= dao.showLanguage(lan_seq).getLan_kor() %></a>
	
	
						<nav id="menu">	
						<ul class="links">
							<li><h5>로그인</h5></li>
								<form action = "LoginService" method = "post">
									<li><input type="text"  placeholder="Email을 입력하세요" name="Taxi_num"></li>
									<li><input type="password"  placeholder="PW를 입력하세요" name="Pw"></li>
									<li><input type="submit" value="LogIn" class="button fit"></li>
								</form>
						</ul>
						<ul class="actions vertical">
							<li><h5>회원가입</h5></li>
							<form action="TaxiJoinService" method="post">
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
	
					<section id="banner" class="major">
						<div class="inner">
							<header class="major">
								<% if(member != null){ %>
										<h1 id ='memberemail'><%=member.getTaxi_num()+"님 환영합니다" %></h1>
										<%}else{ %>
										<h1>로그인 해주세요.</h1>
										<%} %>
								<!-- 로그인 후 로그인 한 사용자의 세션아이디로 바꾸시오.
									 ex)smart님 환영합니다 -->
							</header>
							<div class="content">
								<p>게시판으로 이동!<br></p>
								<ul class="actions">
									<li><a href="boardMain.jsp" class="button next scrolly">게시판</a></li>
								</ul>
							</div>
						</div>
					</section>
	
	<section>
									<div class="contact-method">
										<span class="icon alt fa-envelope"></span>
										<h3>taxiNum</h3>
										<% if(member != null){ %>
										<a href="#"><%=member.getTaxi_num()+"님 환영합니다" %></a>
										<a href = "LogoutService">로그아웃</a>
										
																	<div id="wrapper">
				<!-- Menu -->
					<nav id="Update">	
						<ul class="actions vertical">
							<li><h5>회원정보수정</h5></li>
								<form action="TaxiUpdateService" method="post">
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
					
					<li><h5>회원탈퇴</h5></li>
					<a href = "TaxiDeleteService">회원탈퇴</a>		
			</div>
										
										<%}else{ %>
										<h1>로그인 해주세요.</h1>
										<%} %>
										
										<!-- 로그인 한 사용자의 이메일을 출력하시오 -->
									</div>
								</section>
								
	

	
	
	
	
	
</body>
</html>