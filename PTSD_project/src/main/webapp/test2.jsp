<%@page import="com.ptsd.model.LanguageVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.ptsd.model.LanguageDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
	LanguageDAO dao=new LanguageDAO();
 	ArrayList<LanguageVO> list=dao.langall();
   %>
  
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