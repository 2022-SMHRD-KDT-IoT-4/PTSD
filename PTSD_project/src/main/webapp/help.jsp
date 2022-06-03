<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body id="body">
        
        <!-- 배경이미지-->
        
        
        <img src="./assets/img/main.JPG" alt="backimg" id="backimg">
        <header class="vid-header container" id=backimg>
            
        <!-- 검은 반투명 배경 -->
        <!-- 여기는 비디오가 나오는 곳-->
        <div class="fullscreen-vid-wrap">
            <video src="./assets/img/jejuwave.mp4" autoplay="true" loop="true"></video>
        </div>
        <div class="header-overlay"></div>
        <div class="header-line">
            
            <a href="main.jsp" id="titleclick"><img src="./VIDEO BACKGROUND/TitleIcon.png"></a>
        </div>
    </header>

    
    
    <header id="header">
        
        <!-- 관광 -->
        <div id="tourimgtext">
            <img src="./assets/img/help.png" alt="tourimg">
            <h1><span class="tourtext">요청사항을<br> 입력해주세요</span></h1>
        </div>
        
        <!-- home을 클릭하면 main으로 가는 버튼-->
        <a href="mainController">
            <img src="./assets/img/Home-icon.png" alt="home" id="home">
        </a>
        
        <!-- 언어 선택 버튼 -->
        <div id="country">
            <a href="Koreantour"><img src="./assets/img/free-icon-south-korea-3909425.png" alt="Korean" id="korea"></a>
            <a href="UnitedStateAmericatour"><img src="./assets/img/free-icon-united-states-197484.png" alt="UnitedStateAmerica" id="usa"></a>
            <a href="Chinatour"><img src="./assets/img/free-icon-china-323363.png" alt="China" id="china"></a>
            <a href="Japantour"><img src="./assets/img/free-icon-japan-197604.png" alt="Japan" id="japan"></a>
        </div>
        
    </header>

    <!-- 여기 안에 작성하시면 되요 -->
    <!-- ex)
        for(languageVO vo : list){
            out.print("<div width='500px', height='50px', bgcolor='white'>");
                여기는 언어가 들어간다.
                <%--= vo.getLanguage[list] --%>
            out.print("</div>");
        }



    -->
    
    <!-- 광고 기능 -->
    <footer id="advertisement">
        <a href="advertisement"><img src="./assets/img/dol.png" alt="advertisement"></a>
    </footer>
    
</div>
            
        
    <content>
        

    </content>

    
</div>



</body>

</html>