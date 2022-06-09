<%@page import="java.util.ArrayList"%>
<%@page import="com.ptsd.model.LanguageDAO"%>
<%@page import="com.ptsd.model.LanguageVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./assets/css/help.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	
	<script type="text/javascript">
	
	function langLoad(){
		$.ajax({
			url:"LanguageListService.do",
			type: "get",
			dataType:"json",
			success:langView,
			error:function(){
				alert("error");
			}
		});
	}
	
	function langView(data){
		
	}
	</script>
</head>
<body id="body">
        
        <!-- 배경이미지-->
        
        
        <img src="./assets/img/main.JPG" alt="backimg" id="backimg">
        <header class="vid-header container" id=backimg>
            
        <!-- 검은 반투명 배경 -->
        <!-- 여기는 비디오가 나오는 곳-->
        <div class="fullscreen-vid-wrap">
            <video src="img/jejuwave.mp4" autoplay="true" loop="true"></video>
            <video src="images/jejuwave.mp4" autoplay="true" loop="true"></video>
        </div>
        <div class="header-overlay"></div>
        <div class="header-line">
            
            <a href="main.jsp" id="titleclick"><img src="./VIDEO BACKGROUND/TitleIcon.png"></a>
        </div>
    </header>

    
    
    <header id="header">
        
        <!-- 관광 -->
        <div id="tourimgtext">
            <img src="img/help.png" alt="tourimg">
            <h1><span class="tourtext">요청사항을<br> 입력해주세요</span></h1>
        </div>
        
        <!-- home을 클릭하면 main으로 가는 버튼-->
        <a href="mainController">
            <img src="img/Home-icon.png" alt="home" id="home">
        </a>
        
        <!-- 언어 선택 버튼 -->
        <div id="country">
            <a href="Koreantour.jsp"><img src="img/free-icon-south-korea-3909425.png" alt="Korean" id="korea"></a>
            <a href="UnitedStateAmericatour.jsp"><img src="img/free-icon-united-states-197484.png" alt="UnitedStateAmerica" id="usa"></a>
            <a href="Chinatour.jsp"><img src="img/free-icon-china-323363.png" alt="China" id="china"></a>
            <a href="Japantour.jsp"><img src="img/free-icon-japan-197604.png" alt="Japan" id="japan"></a>
        </div>
        
    </header>

   <%
	LanguageDAO dao=new LanguageDAO();
 	ArrayList<LanguageVO> list=dao.langall();
%>



    
    <!-- 광고 기능 -->
    <footer id="advertisement">
        <a href="advertisement"><img src="img/dol.png" alt="advertisement"></a>
    </footer>
    
</div>
            
        
    <div id="helpContainer">
<% for(LanguageVO li : list){%>
   
   <div class="koreanlang">
   
   <p><a><%= li.getLan_kor() %></a></p>
   <br>
   </div>
<%} %>
</div>

    
</div>



</body>

</html>