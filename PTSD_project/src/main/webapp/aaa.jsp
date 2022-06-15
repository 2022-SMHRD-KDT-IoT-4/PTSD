<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
$(document).ready(function(){
	attr1_kor1(1);
});
function attr1_kor1(seqData){
	$.ajax(
			{
			  url : "languageFrequencyService", 	
			  type : "get",
			  data : { "Lan_seq" : seqData },
			  success : function() {
				  alert("통신성공!");
			 },
			error : function(){
				alert("error");
			}
			}
		); 
}
</script> 
</head>
<body>

</body>
</html>