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
	<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.css" />
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link rel="stylesheet" href="./assets/css/helpLanguage.css">
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
<body id="body">
        <div class="mainCountry">
        	<span id = "home-main"></span>
        <!--  <a href="mainController"><img src="img/Home-icon.png" alt="home" id="home"></a>-->
            <span id="korea-main"></span>
            <span id="english-main"></span>
            <span id="china-main"></span>
            <span id="japan-main"></span>
        </div>
   
<%--     
     <div id="helpContainer">
<% for(int i=0; i<list.size(); i++){
   <div class="koreanlang">
   <input type="button" id="button<%=i%>" value="<%= list.get(i).getLan_kor() %>" onclick="goTot(<%=i%>)">
   <br>
   </div>
<%} %>
--%>
    </div>
         <div class="swiper-container">
            <div class="swiper-wrapper">
                <div class="swiper-slide" style="background: linear-gradient(to right, #757f9a, #d7dde8);">
                <input class ="swiper-attr1" style="background : rgb(6,14,131)" height="50px" type="button" value="<%=list.get(0).getLan_kor() %>" autocomplete="off" readonly="">
                <input class ="swiper-attr2" type="button" value="<%=list.get(1).getLan_kor() %>" autocomplete="off" readonly="">
                <input class ="swiper-attr3" type="button" value="<%=list.get(2).getLan_kor() %>" autocomplete="off" readonly="">
                <input class ="swiper-attr4" type="button" value="<%=list.get(3).getLan_kor() %>" autocomplete="off" readonly="">
                <input class ="swiper-attr5" type="button" value="<%=list.get(4).getLan_kor() %>" autocomplete="off" readonly="">
                </div>
            <div class="swiper-slide" style="background: linear-gradient(to right, #134e5e, #71b280);">
				<input class ="swiper-attr1" type="button" value="<%=list.get(5).getLan_kor() %>" autocomplete="off" readonly="">
                <input class ="swiper-attr2" type="button" value="<%=list.get(6).getLan_kor() %>" autocomplete="off" readonly="">
                <input class ="swiper-attr3" type="button" value="<%=list.get(7).getLan_kor() %>" autocomplete="off" readonly="">
                <input class ="swiper-attr4" type="button" value="<%=list.get(8).getLan_kor() %>" autocomplete="off" readonly="">
                <input class ="swiper-attr5" type="button" value="<%=list.get(9).getLan_kor() %>" autocomplete="off" readonly="">
			</div>
            <div class="swiper-slide" style="background: linear-gradient(to right, #5c258d, #4389a2);">
                <input class ="swiper-attr1" type="button" value="<%=list.get(10).getLan_kor() %>" autocomplete="off" readonly="">
                <input class ="swiper-attr2" type="button" value="<%=list.get(11).getLan_kor() %>" autocomplete="off" readonly="">
                <input class ="swiper-attr3" type="button" value="<%=list.get(12).getLan_kor() %>" autocomplete="off" readonly="">
                <input class ="swiper-attr4" type="button" value="<%=list.get(13).getLan_kor() %>" autocomplete="off" readonly="">
                <input class ="swiper-attr5" type="button" value="<%=list.get(14).getLan_kor() %>" autocomplete="off" readonly="">
            </div>
                <div class="swiper-slide" style="background: linear-gradient(to right, #2bc0e4, #eaecc6);">Slide 4</div>
                <div class="swiper-slide" style="background: linear-gradient(to right, #085078, #85d8ce);">Slide 5</div>
            </div>
            <!-- Add Pagination -->
            <div class="swiper-pagination"></div>
        </div>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
        <script src="https://unpkg.com/swiper/swiper-bundle.js"></script>
        <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
        <script src="./assets/js/helpLanguage.js"></script>
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