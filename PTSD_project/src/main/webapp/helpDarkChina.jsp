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
    <link rel="stylesheet" href="./assets/css/helpDarkLanguage.css">
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
        	<a href="test"><span id="homeTour"></span></a>
            <a href = "helpDarkKorean.jsp"><span id="korea-main"></span></a>
            <a href = "helpDarkUSA.jsp"><span id="english-main"></span></a>
            <a href = "helpDarkChina.jsp"><span id="china-main"></span></a>
            <a href = "helpDarkJapan.jsp"><span id="japan-main"></span></a>
        </div>

         <div class="swiper-container" style="overflow:hidden;">
            <div class="swiper-wrapper">
                <div class="swiper-slide" style="background: #232427;">
                <h3 class = "korea_language1">
                <ruby font-size : 2rem>轻取三星级酒店<rp>(</rp><rt>qǐngqù sān xīngjí jiǔdiàn</rt><rp>)</rp>
	</ruby></h3>
				<h3 class = "korea_language2">
				<ruby font-size : 2rem>请去四星级酒店<rp>(</rp><rt>qǐngqù sì xīngjí jiǔdiàn</rt><rp>)</rp>
	</ruby></h3>
				<h3 class = "korea_language3">
				<ruby font-size : 2rem>请去五星级酒店<rp>(</rp><rt>qǐng qù wǔ xīngjí jiǔdiàn</rt><rp>)</rp>
	</ruby></h3>
				<h3 class = "korea_language4">
				<ruby font-size : 2rem>去附近的超市吧<rp>(</rp><rt>qù fùjìn de chāoshì ba</rt><rp>)</rp>
	</ruby></h3>
                <input class ="swiper-attr1" type="button" value="<%=list.get(0).getLan_kor() %>" autocomplete="off" readonly="">
                <input class ="swiper-attr2" type="button" value="<%=list.get(1).getLan_kor() %>" autocomplete="off" readonly="">
                <input class ="swiper-attr3" type="button" value="<%=list.get(2).getLan_kor() %>" autocomplete="off" readonly="">
                <input class ="swiper-attr4" type="button" value="<%=list.get(3).getLan_kor() %>" autocomplete="off" readonly="">
                </div>
                
            <div class="swiper-slide" style="background: #232427;">
				<h3 class = "korea_language1">
				<ruby font-size : 2rem>去附近的餐厅吧<rp>(</rp><rt>qù fùjìn de cāntīng ba</rt><rp>)</rp>
	</ruby></h3>
            	<h3 class = "korea_language2">
            	<ruby font-size : 2rem>请去机场<rp>(</rp><rt>qǐng qù jīchǎng</rt><rp>)</rp>
	</ruby></h3>
				<h3 class = "korea_language3">
				<ruby font-size : 2rem>请打开计程器<rp>(</rp><rt>qǐng dǎkāi jìchéngqì</rt><rp>)</rp>
	</ruby></h3>
				<h3 class = "korea_language4">
				<ruby font-size : 2rem>请开空调<rp>(</rp><rt>qǐng kāi kōngtiáo</rt><rp>)</rp>
	</ruby></h3>
                <input class ="swiper-attr1" type="button" value="<%=list.get(4).getLan_kor() %>" autocomplete="off" readonly="">
				<input class ="swiper-attr2" type="button" value="<%=list.get(5).getLan_kor() %>" autocomplete="off" readonly="">
                <input class ="swiper-attr3" type="button" value="<%=list.get(6).getLan_kor() %>" autocomplete="off" readonly="">
                <input class ="swiper-attr4" type="button" value="<%=list.get(7).getLan_kor() %>" autocomplete="off" readonly="">
			</div>
            <div class="swiper-slide" style="background: #232427;">
				<h3 class = "korea_language1">
				<ruby font-size : 2rem>
		请把温度调高一点<rp>(</rp><rt>qǐng bǎ wēndù tiáo gāo yìdiǎn</rt><rp>)</rp>
	</ruby></h3>
				<h3 class = "korea_language2">
				<ruby font-size : 2rem>请把温度调低一点<rp>(</rp><rt>qǐng bǎ wēndù tiáo dī yìdiǎn</rt><rp>)</rp>
	</ruby></h3>
            	<h3 class = "korea_language3">
            	<ruby font-size : 2rem>现金结算吧<rp>(</rp><rt>xiànjīn jiésuàn ba</rt><rp>)</rp>
	</ruby></h3>
				<h3 class = "korea_language4">
				<ruby font-size : 2rem>用卡结算吧<rp>(</rp><rt>yòng kǎ jiésuàn ba</rt><rp>)</rp>
	</ruby></h3>
                <input class ="swiper-attr1" type="button" value="<%=list.get(8).getLan_kor() %>" autocomplete="off" readonly="">
                <input class ="swiper-attr2" type="button" value="<%=list.get(9).getLan_kor() %>" autocomplete="off" readonly="">
                <input class ="swiper-attr3" type="button" value="<%=list.get(10).getLan_kor() %>" autocomplete="off" readonly="">
                <input class ="swiper-attr4" type="button" value="<%=list.get(11).getLan_kor() %>" autocomplete="off" readonly="">
            </div>
                <div class="swiper-slide" style="background: #232427;">
				<h3 class = "korea_language1">
				<ruby font-size : 2rem>请在这里下车<rp>(</rp><rt>qǐng zài zhèlǐ xiàchē</rt><rp>)</rp>
	</ruby></h3>
				<h3 class = "korea_language2">
				<ruby font-size : 2rem>请把收音机关上<rp>(</rp><rt>qǐng ba shōuyīnjī guānshàng</rt><rp>)</rp>
	</ruby></h3>
				<h3 class = "korea_language3">
				<ruby font-size : 2rem>请打开后备箱<rp>(</rp><rt>qǐng dǎkāi hòu bèixiāng</rt><rp>)</rp>
	</ruby></h3>
                <input class ="swiper-attr1" type="button" value="<%=list.get(12).getLan_kor() %>" autocomplete="off" readonly="">
                <input class ="swiper-attr2" type="button" value="<%=list.get(13).getLan_kor() %>" autocomplete="off" readonly="">
                <input class ="swiper-attr3" type="button" value="<%=list.get(14).getLan_kor() %>" autocomplete="off" readonly="">
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
                return;
            }
            utterThis.lang = lang; utterThis.pitch = 1; utterThis.rate = 1;
            //속도  
            window.speechSynthesis.speak(utterThis);
        } document.addEventListener("click", function (e) { var t = e.target; var input = t; speech(t.value); });</script>
</body>

</html>