<%@page import="java.util.ArrayList"%>
<%@page import="com.ptsd.model.LanguageVO"%>
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
	LanguageDAO dao=new LanguageDAO();
 	ArrayList<LanguageVO> list=dao.langall();
%>


<%--<% for (int i=0;i<list.size();i++){%>
	<a><%=list.get(i).getLan_eng() %></a>
<%} %> --%>

<% for(LanguageVO li : list){%>
	<a><%= li.getLan_eng() %></a>
	<br>
	<a><%= li.getLan_cha() %></a>
	<br>
	<a><%= li.getLan_jap() %></a>
	<br>
	<a><%= li.getLan_kor() %></a>
	<br>
<%} %>

</body>
</html>