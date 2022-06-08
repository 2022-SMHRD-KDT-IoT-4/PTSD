<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./assets/css/Tour.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src = './assets/js/Tour.js'></script>
</head>
<body>
<div id="container">
    
    <body id="body">
        
        <!-- 배경이미지-->
        
        
        <img src="./assets/img/main.JPG" alt="backimg" id="backimg">
        <header class="vid-header container" id=backimg>
            
        <!-- 검은 반투명 배경 -->
        <!-- 여기는 비디오가 나오는 곳-->
        <div class="fullscreen-vid-wrap">
            <video muted autoplay loop id="backgroundVideo">
                <source src="img/jejuwave.mp4" type="video/mp4">
            </video>
        </div>
        <div class="header-overlay"></div>
        <div class="header-line">
            
            <a href="main.jsp" id="titleclick"><img src="./VIDEO BACKGROUND/TitleIcon.png"></a>
        </div>
    </header>

    
    
    <header id="header">
        
        <!-- 관광 -->
        <div id="tourimgtext">
            <img src="img/jejutour.png" alt="tourimg">
            <h1><span class="tourtext">관광</span></h1>
        </div>
        
        <!-- home을 클릭하면 main으로 가는 버튼-->
        <a href="mainController">
            <img src="img/Home-icon.png" alt="home" id="home">
        </a>
        
        <!-- 언어 선택 버튼 -->
        <div id="country">
            <a href="Koreantour"><img src="img/free-icon-south-korea-3909425.png" alt="Korean" id="korea"></a>
            <a href="UnitedStateAmericatour"><img src="img/free-icon-united-states-197484.png" alt="UnitedStateAmerica" id="usa"></a>
            <a href="Chinatour"><img src="img/free-icon-china-323363.png" alt="China" id="china"></a>
            <a href="Japantour"><img src="img/free-icon-japan-197604.png" alt="Japan" id="japan"></a>
        </div>
        
    </header>
    
    <!-- 광고 기능 -->
    <footer id="advertisement">
        <a href="./advertisement.html"><img src="img/dol.png" alt="advertisement"></a>
        
    </footer>
    
</div>
            
        <div id="overflow">

            <content id="content">
                <!-- <div class="img">
                    <img src="./assets/img/tourimg/1.gif">
                    <span>제주특별자치도 제주시 추자도 예초리
                        친구,혼자,커플,휴식/힐링,올레</span>
                    </div>
                    
                    <div class="img">
                        <img src="./assets/img/tourimg/2.gif" alt="">
                    </div> -->
                    <!-- 이런 형식으로 꾸며 져 있음 -->
                    
            <script>
                data();
            </script>
    </content>
</div>

    
</div><!-- container끝 태그 -->
</body>
</html>