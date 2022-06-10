<%@page import="java.util.ArrayList"%>
<%@page import="com.ptsd.model.LanguageDAO"%>
<%@page import="com.ptsd.model.LanguageVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	   <%
	LanguageDAO dao=new LanguageDAO();
 	ArrayList<LanguageVO> list=dao.langall();
   %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./assets/css/help.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script type="text/javascript"> 
	$(document).ready(function() {
		goTot();
	});

	
	function goTot(i){
		var nameIoT=$("#button"+i).attr("value");
		
		$.ajax({
		  type : "POST",
		  url : "NameTotService", 	
		  data : { "nameIoT" : nameIoT },
		  success : function() {
			//alert("성공");
		 },
		error : function(){
			alert("error");
		}
	 }); 
}

	</script>
</head>
<body>




	<div id="helpContainer">
		<% for(int i=0; i<list.size(); i++){%>

		<div class="koreanlang">
			<input type="button" id="button<%=i%>" value="<%= list.get(i).getLan_kor() %>" onclick="goTot(<%=i%>)">
			<br>
		</div>
		<%} %>
	</div>


</body>

</html>