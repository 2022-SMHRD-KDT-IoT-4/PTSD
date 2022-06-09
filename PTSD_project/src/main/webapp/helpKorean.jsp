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
		listLoad();
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
<body id="body">
        
        <!-- 배경이미지-->
        

    
    
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




    
    <!-- 광고 기능 -->
    <footer id="advertisement">
        <a href="advertisement"><img src="img/dol.png" alt="advertisement"></a>
    </footer>
    
</div>
            
        
    <div id="helpContainer">
<% for(int i=0; i<list.size(); i++){%>
   
   <div class="koreanlang">
   <input type="button" id="button<%=i%>" value="<%= list.get(i).getLan_kor() %>" onclick="goTot(<%=i%>)">
   <br>
   </div>
<%} %>
    </div>

    <input id="code_html" type="button" value="집으로 가주세요" autocomplete="off" readonly="">
    <script>var voices = []; function setVoiceList() {
            voices = window.speechSynthesis.getVoices();
        } setVoiceList();
        if (window.speechSynthesis.onvoiceschanged !== undefined) { window.speechSynthesis.onvoiceschanged = setVoiceList; }
        function speech(txt) {
            if (!window.speechSynthesis) {
                alert("음성 재생을 지원하지 않는 브라우저입니다. 크롬, 파이어폭스 등의 최신 브라우저를 이용하세요");
                return;
            } var lang = 'ko-KR';
            var utterThis = new SpeechSynthesisUtterance(txt);
            utterThis.onend = function (event) { console.log('end'); };
            utterThis.onerror = function (event) { console.log('error', event); };
            var voiceFound = false;
            for (var i = 0; i < voices.length; i++) {
                if (voices[i].lang.indexOf(lang) >= 0 || voices[i].lang.indexOf(lang.replace('-', '_')) >= 0) { utterThis.voice = voices[i]; voiceFound = true; }
            }
            if (!voiceFound) {
                alert('voice not found');
                return;
            }
            utterThis.lang = lang; utterThis.pitch = 1; utterThis.rate = 1;
            //속도  
            window.speechSynthesis.speak(utterThis);
        } document.addEventListener("click", function (e) { var t = e.target; var input = t; speech(t.value); });</script>
</body>

</html>