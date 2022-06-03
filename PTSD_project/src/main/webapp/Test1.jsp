<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
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
</body>
</html>