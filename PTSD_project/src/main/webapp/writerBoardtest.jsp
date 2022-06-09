<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Forty by HTML5 UP</title>
<meta charset="utf-8" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
<link rel="stylesheet" href="assetsBoard/css/main.css" />
<link rel="stylesheet" href="assetsBoard/css/board.css" />
<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
</head>
<body>

	<div id="board">
	<!-- enctype 기본값 : application /x-www-form-urlencoded
						Key&Value형태로 데이터 전송
	파일, 이미지와 같은 많은양의 데이터들은 전송해야할 때는 인코딩 방식을 multipart/form-data로 바꿔주어야함
	 -->
		<form action="WriterBoardService1" method="post">
			<table id="list">
				<tr>
					<td>제목</td>
					<td><input type="text" name="TAXI_COMMENT_TITLE"></td>
				</tr>
				<tr>
					<td>작성자</td>
					<td><input type="text" name="TAXI_COMMENT_WRITER"></td>
				</tr>
				<tr>
					<td>taxi</td>
					<td><input type="text" name="TAXI_NUM"></td>
				</tr>
				<tr>
					<td colspan="2">내용</td>
				</tr>
				<tr>
						<textarea rows="10" name="TAXI_COMMENT_COMMENT" style="resize: none;"></textarea></td>
				</tr>
				<tr>
					<td colspan="2"><input type="reset" value="초기화"> <input
						type="submit" value="작성하기"></td>
				</tr>
			</table>
		</form>
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
