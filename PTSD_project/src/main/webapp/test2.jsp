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
   <script>
   	$(document).ready(()=>{
		
	})
	
	let listLoad()=>{
		$.ajax({
			url : "LanguageListService",
			type : "post",
			dataType : "json",
			success : listView,
			error : ()=>{
				alert("error");
			}
		})
	}
	
	$("#button").click(()=>{
		let listView()=>{
			$.ajax({
				url : "LanguageListService",
				type: "post",
				dataType : "json",
				// data : {	},
				success : ()=> {
					alert("성공");
				},
				error : ()=>{
					alert("error");
				}
				
				
			})
		}
	})
   	
   
   </script>
</head>
<body>

 <div id="helpContainer">
<% for(int i=0; i< list.size(); i++){%>
   
   <div class="koreanlang">
   <input type="button" id="button" value="<%= list.get(i).getLan_kor() %>">
   <br>
   </div>
<%} %>
</div>

</body>
</html>