<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>tourSlide</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
    <link rel="stylesheet" type="text/css" href="assets/slideImg/swiper.min.css">
    <link rel="stylesheet" type="text/css" href="assets/css/styleTourWhite.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>

<body>

    <div class="swiper-container" id="blur">
        <div class="swiper-wrapper">
            <!--여기서부터-->
            <div class="swiper-slide">
                <a href="#" onclick="toggle1()">
                    <div class="imgBx">
                        <img src="assets/slideImg/aloneTour.jpg" name="aloneTour">
                    </div>
                    <div class="details">
                        <h3>나홀로 여행<span></span></h3>
                    </div>
                </a>
                <script type="text/javascript">
                    function toggle1() {
                        var blur = document.getElementById('blur');
                        blur.classList.toggle('active');
                        var popup = document.getElementById('popup1');
                        popup.classList.toggle('active');

                    }
                </script>
            </div>

            <!--여기까지가 한장-->
            <!--여기서부터-->
            <div class="swiper-slide">
                <a href="#" onclick="toggle2()">
                    <div class="imgBx">
                        <img src="assets/slideImg/coupleTour.jpg" width="250px" height="199.61px">
                    </div>
                    <div class="details">
                        <h3>커플 여행<br><span></span></h3>
                    </div>
                </a>
                <script type="text/javascript">
                    function toggle2() {
                        var blur = document.getElementById('blur');
                        blur.classList.toggle('active');
                        var popup = document.getElementById('popup2');
                        popup.classList.toggle('active');

                    }
                </script>
            </div>
            <!--여기까지가 한장-->
            <!--여기서부터-->
            <div class="swiper-slide">
                <a href="#" onclick="toggle3()">
                    <div class="imgBx">
                        <img src="assets/slideImg/familyTour.jpg" width="250px" height="199.61px">
                    </div>
                    <div class="details">
                        <h3>가족 여행<br><span></span></h3>
                    </div>
                </a>
                <script type="text/javascript">
                    function toggle3() {
                        var blur = document.getElementById('blur');
                        blur.classList.toggle('active');
                        var popup = document.getElementById('popup3');
                        popup.classList.toggle('active');

                    }
                </script>
            </div>
            <!--여기까지가 한장-->
            <!--여기서부터-->
            <div class="swiper-slide">
                <a href="#" onclick="toggle4()">
                    <div class="imgBx">
                        <img src="assets/slideImg/friendTour.jpg" width="250px" height="199.61px">
                    </div>
                    <div class="details">
                        <h3>우정여행</h3><br><span></span></h3>
                    </div>
                </a>
                <script type="text/javascript">
                    function toggle4() {
                        var blur = document.getElementById('blur');
                        blur.classList.toggle('active');
                        var popup = document.getElementById('popup4');
                        popup.classList.toggle('active');


                    }
                </script>
            </div>
            <!--여기까지가 한장-->

        </div>
        <!-- Add Pagination -->
        <div class="swiper-pagination"></div>
        <div class="mainCountry">
            <!-- 메인 국기 아이콘-->
            <a href="test"><span id="homeTour"></span></a>
            <a href="koreaTourWhite.jsp"><span id="koreaTour"></span></a>
            <a href="englishTourWhite.jsp"><span id="englishTour"></span></a>
            <a href="chinaTourWhite.jsp"><span id="chinaTour"></span></a>
            <a href="japanTourWhite.jsp"><span id="japanTour"></span></a>
        </div>
        <div class="circle">
            <div class="loader"><span></span></div>
        </div>
    </div>
    <!--여기서부터 게시글-->
    <div id="popup1">
        <h1 style="text-align:center;">😎 나홀로 여행 😎</h1>
        <br><br><br>

        <h3>01. 제주동문시장</h3>
        <br>
        <p>
            <iframe width="500" height="200" src="https://www.youtube.com/embed/OAYe8wL75Bg"
                title="YouTube video player" frameborder="0"
                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                allowfullscreen></iframe>
        <p style="font-size: 0.2rem;">[출처 유튜브 채널 : 제주동문시장]</p>
        <br>
        <p style="text-align:left ; font-size: 0.8rem;">
            동문재래시장은 제주도 도심에 자리하였으며, 가장 크고 역사가 깊은 상설 재래시장이다.<br>
            엄청난 규모를 자랑하는 만큼 1년 내내 현지인 그리고 여행객들의 발걸음이 끊이지 않는 곳이다.
        </p><br>
        <p style="text-align:left ; font-size: 0.8rem;">
            낮에는 제주도 상인들의 삶을 담은 시장의 모습을, 밤에는 먹거리가 가득한 야시장의 묘미를 즐길 수 있다.<br>
            제주의 특산품, 기념품, 의류, 먹거리 등 온갖 다양한 상품을 판매하고 있어 제주의 만물상이라고 할 수 있다.<br>
            제주공항과도 가까워 떠나기 전 잠시 들러 쇼핑하기에도 좋다.
        </p><br>
        <img src="assets/slideImg/jejuDomoonmarket1.jpg" width="163px" height="100px">
        <img src="assets/slideImg/jejuDomoonmarket2.jpg" width="163px" height="100px">
        <img src="assets/slideImg/jejuDomoonmarket3.jpg" width="163px" height="100px">
        </p><br>
        <a href="#"
            style="text-align: center; padding-left: 25%; padding-right: 30%; font-size: 1.25rem; background-color: orange; width: 450px; border-radius: 15%; color: #fff;">터치하여
            위치 확인하기</a>
        <br><br><br><br><br>
        <!--1번게시물 이동 및 끝 2번게시물시작-->
        <h3>02. 성산일출봉</h3>
        <br>
        <p>
            <iframe width="500" height="200" src="https://www.youtube.com/embed/_PPfmnt06NQ"
                title="YouTube video player" frameborder="0"
                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                allowfullscreen></iframe>
        </p>
        <p style="font-size: 0.2rem;">[출처 유튜브 채널 : 무인항공]</p>
        <br>
        <p style="text-align:left ; font-size: 0.8rem;">
            성산일출봉은 제주도의 다른 오름들과는 달리 마그마가 물속에서 분출하면서 만들어진 수성화산체다.<br>
            화산활동시 분출된 뜨거운 마그마가 차가운 바닷물과 만나면서 화산재가 습기를 많이 머금어 끈끈한 성질을 띄게 되었고, 이것이 층을 이루면서 쌓인 것이 성산일출봉이다.
        </p><br>

        <p style="text-align:left ; font-size: 0.8rem;">
            정상에 오르면 너비가 8만여 평에 이르는 분화구를 볼 수 있는데, 그릇처럼 오목한 형태로 안에는 억새 등의 풀이 자라고 있다.<br>
            분화구 둘레에는 99개의 고만고만한 봉우리(암석)이 자리하고 있다.<br>
            이 모습이 거대한 성과 같다고 해서 '성산(城山)', 해가 뜨는 모습이 장관이라 하여 '일출봉(日出峰)'이라는 이름이 붙었다.
        </p><br>
        <p style="text-align:left ; font-size: 0.8rem;">
            성산일출봉 정상에 이르는 가파른 계단 길은 숨이 가쁘나, 넉넉히 20분이면 꼭대기에 다다른다.<br>
            정상에서는 너른 분화구와 그 뒤로 펼쳐지는 바다의 풍경은, 제주의 다른 오름과는 전혀 다른 웅장한 느낌을 준다.<br>
            예부터 이곳 정상에서 바라보는 일출광경은 영주10경(제주의 경승지)중에서 으뜸이라 하였고, 이에 매년 12월 31일에는 성산일출축제가 열린다.
        </p><br>
        <img src="assets/slideImg/sungSanmountain1.jpg" width="163px" height="100px">
        <img src="assets/slideImg/sungSanmountain2.jpg" width="163px" height="100px">
        <img src="assets/slideImg/sungSanmountain3.jpg" width="163px" height="100px">
        </p><br>
        <a href="#"
            style="text-align: center; padding-left: 25%; padding-right: 30%; font-size: 1.25rem; background-color: orange; width: 450px; border-radius: 15%; color: #fff;">터치하여
            위치 확인하기</a>
        <br><br><br><br>
        <!--2번게시물 이동 및 끝 3번게시물시작-->
        <h3>03. 우도</h3>
        <br>
        <p>
            <iframe width="500" height="200" src="https://www.youtube.com/embed/-4qZnIDzmPk"
                title="YouTube video player" frameborder="0"
                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                allowfullscreen></iframe>
        </p>
        <p style="font-size: 0.2rem;">[출처 유튜브 채널 : korea drone travle(드론여행)]</p>
        <br>
        <p style="text-align:left ; font-size: 0.8rem;">
            우도는 소가 누워있는 모양을 닮았다고 해서 일찍부터 소섬 또는 쉐섬으로 불리웠다.<br>
            완만한 경사와 옥토, 풍부한 어장, 우도팔경 등 천혜의 자연조건을 갖춘 관광지로써 한해 약 200만 명의 관광객이 찾는 제주의 대표적인 부속섬이다.
        </p><br>
        <p style="text-align:left ; font-size: 0.8rem;">
            성산항과 종달항에서 우도가는 배를 탈 수 있는데 어디서 출발하든 15분 정도 소요된다.<br>
            섬의 길이는 3.8km, 둘레는 17km. 쉬지 않고 걸으면 3~4시간 걸리는 거리지만, 대부분의 관광객은 버스나 자전거, 미니 전기차를 타고 유명한 관광지 위주로 돌아본다.<br>
            <br>

            검멀레해변이나 우도봉, 홍조단괴해변, 하고수동해변 등 유명한 관광지 1-2개를 둘러보고, 카페나 음식점에서 휴식을 즐겨도 대략 3-4시간 정도 소요된다.<br>
            여유있게 우도를 즐기고 싶다면 오전 아침배를 타고 들어가 오후 배를 타고 나와 하루종일 우도에 머물러 보는것도 좋다. 단, 기상에 따라 배 운항여부가 달라질수 있으니 우도 여행일정을 짜는데는
            기상조건을 필히 확인해야한다.
        </p><br>
        <img src="assets/slideImg/jejuWoodo1.jpg" width="163px" height="100px">
        <img src="assets/slideImg/jejuWoodo2.jpg" width="163px" height="100px">
        <img src="assets/slideImg/jejuWoodo3.jpg" width="163px" height="100px">

        <br><br>
        <a href="#"
            style="text-align: center; padding-left: 25%; padding-right: 30%; font-size: 1.25rem; background-color: orange; width: 450px; border-radius: 15%; color: #fff;">터치하여
            위치 확인하기</a>
        <br><br><br><br>
        <!--3번게시물 이동 및 끝 4번게시물시작-->
        <h3>04. 애월한담해안산책로</h3>
        <br>
        <p>
            <iframe width="500" height="200" src="https://www.youtube.com/embed/AHBqjnHp85Y"
                title="YouTube video player" frameborder="0"
                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                allowfullscreen></iframe>
        </p>
        <p style="font-size: 0.2rem;">[출처 유튜브 채널 : Walk Time HakuNam]</p>
        <br>
        <p style="text-align:left ; font-size: 0.8rem;">
            곽금올레길'이라고도 부르는 한담해안산책로는 애월항에서 곽지과물해변까지 해안을 따라서 조성된 산책로이다. 주변 경관과 조화를 이루고 있어 아름답다. 총 길이는 1.2km이며, 바로 옆에 파도가
            첨벙거리는 해안 길을 따라 걸을 수 있다.<br>
            2009년 제주시가 기존의 관광 명소 이외에 제주시 일대의 대표적인 장소 31곳을 선정해 발표한 '제주시의 숨은 비경' 31곳 중 하 나이기도 하다. <br>
        </p><br>

        <p style="text-align:left ; font-size: 0.8rem;">
            용암이 굳어지면서 만들어진 다양한 신기한 형태의 바위들이 시선을 끌고, 검은 바위로 이루어진 해안을 따라 구불구불하게 이어지는 길은 산책 길에 재미를 더해준다.<br>
            제주도의 서쪽에 위치하고 있어 아름다운 일몰을 잘 감상할 수 있다는 점도 이곳의 매력 포인트다.
        </p><br>
        <img src="assets/slideImg/jejuAewolhandam1.jpg" width="163px" height="100px">
        <img src="assets/slideImg/jejuAewolhandam2.jpg" width="163px" height="100px">
        <img src="assets/slideImg/jejuAewolhandam3.jpg" width="163px" height="100px">

        <br><br>
        <a href="#"
            style="text-align: center; padding-left: 25%; padding-right: 30%; font-size: 1.25rem; background-color: orange; width: 450px; border-radius: 15%; color: #fff;">터치하여
            위치 확인하기</a>
        <br><br><br><br>
        <!--4번게시물 이동  끝 -->

        <a href="#" onclick="toggle1()"
            style="background-color: black; color: #fff; text-align: center; font-size: 1.5rem;" id="popClose">X</a>
        <script type="text/javascript">
            function toggle1() {
                var blur = document.getElementById('blur');
                blur.classList.toggle('active');
                var popup = document.getElementById('popup1');
                popup.classList.toggle('active');

            }

        </script>
    </div>
    <!--
        이제 커플여행 팝업구간


    -->
    <div id="popup2">
        <h1 style="text-align:center;">🥰 커플 여행 🥰</h1>
        <br><br><br>

        <h3>01. 아르떼뮤지엄 제주</h3>
        <br>
        <p>
            <iframe width="500" height="200" src="https://www.youtube.com/embed/athlev1JU-E"
                title="YouTube video player" frameborder="0"
                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                allowfullscreen></iframe>
        <p style="font-size: 0.2rem;">[출처 유튜브 채널 : d'strict]</p>
        <br>
        <p style="text-align:left ; font-size: 0.8rem;">

            국내최대몰입형 미디어아트전시관 아르떼뮤지엄!<br>
            아르떼뮤지엄은 코엑스'WAVE' 작품으로 유명한 세계 수준의 디지털 디자인 컴퍼니 d'strict가 선보이는 국내 최대 규모의 몰입형 미디어아트 전시관입니다.<br>
        </p><br>
        <p style="text-align:left ; font-size: 0.8rem;">
            스피커 제조 공장으로 사용되던 바닥 면적 1,400평, 최대 10M에 육박하는 웅장한 공간에서는 빛과 소리가 만들어 낸 10개의 다채로운 미디어아트 전시가 펼쳐집니다!
        </p><br>
        <img src="assets/slideImg/aretesium1.PNG" width="163px" height="100px">
        <img src="assets/slideImg/aretesium2.PNG" width="163px" height="100px">
        <img src="assets/slideImg/aretesium3.PNG" width="163px" height="100px">
        </p><br>
        <a href="#"
            style="text-align: center; padding-left: 25%; padding-right: 30%; font-size: 1.25rem; background-color: orange; width: 450px; border-radius: 15%; color: #fff;">터치하여
            위치 확인하기</a>
        <br><br><br><br><br>
        <!--1번게시물 이동 및 끝 2번게시물시작-->
        <h3>02. 다이브센터 스쿠버 다이빙</h3>
        <br>
        <p>
            <iframe width="500" height="200" src="https://www.youtube.com/embed/bO7nLBZ4z9g?start=17" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
        </p>
        <p style="font-size: 0.2rem;">[출처 유튜브 채널 : 천선희]</p>
        <br>
        <p style="text-align:left ; font-size: 0.8rem;">
            안전을 최우선으로 하는 서귀포 다이브센터에 오신걸 환영합니다.<br>
            서귀포 다이브센터는 공인된 PADI 교육전문센터 이며 전 세계적으로 인정한 스쿠버 트레이닝 교육기관인 PADI 교육프로그램에 맞춰 체계적이고 안전한 교육을 진행합니다.<br>
            문섬 섶섬 범섬에서 즐기는 펀 다이빙 부터 다이빙 경험이 없는 분들이 참여 가능한 체험다이빙 프로그램까지 운영하고 있습니다.<br>
        </p><br>

        <p style="text-align:left ; font-size: 0.8rem;">
            아름다운 제주바다속 수중여행을 서귀포 다이브센터에서 함께 하세요
        </p><br>
        <img src="assets/slideImg/seogwipoDive1.PNG" width="163px" height="100px">
        <img src="assets/slideImg/seogwipoDive2.PNG" width="163px" height="100px">
        <img src="assets/slideImg/seogwipoDive3.PNG" width="163px" height="100px">
        </p><br>
        <a href="#"
            style="text-align: center; padding-left: 25%; padding-right: 30%; font-size: 1.25rem; background-color: orange; width: 450px; border-radius: 15%; color: #fff;">터치하여
            위치 확인하기</a>
        <br><br><br><br>
        <!--2번게시물 이동 및 끝 3번게시물시작-->
        <h3>03. 윈드 1947</h3>
        <br>
        <p>
            <iframe width="500" height="200" src="https://www.youtube.com/embed/q9RxnQYXOXI" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
        </p>
        <p style="font-size: 0.2rem;">[출처 유튜브 채널 : 윈드1947]</p>
        <br>
        <p style="text-align:left ; font-size: 0.8rem;">
            한라산 남쪽 풍경을 안은 3만평 규모의 '윈드1947 카트테마파크'는 아시아 최장길이 코스를 보유한 제주 유일의 서킷형 레이싱 카트입니다.
        </p><br>
        <p style="text-align:left ; font-size: 0.8rem;">
            또한 서바이벌 체험장이 마련되어 있습니다.<br>
            1층 제주 유일의 비비탄 실내서바이벌, 2층 레이저 서바이벌 체험장 운영하고 있습니다.
        </p><br>
        <img src="assets/slideImg/Kart1.jpg" width="163px" height="100px">
        <img src="assets/slideImg/Kart2.jpg" width="163px" height="100px">
        <img src="assets/slideImg/Kart3.jpg" width="163px" height="100px">

        <br><br>
        <a href="#"
            style="text-align: center; padding-left: 25%; padding-right: 30%; font-size: 1.25rem; background-color: orange; width: 450px; border-radius: 15%; color: #fff;">터치하여
            위치 확인하기</a>
        <br><br><br><br>
        <!--3번게시물 이동 및 끝 4번게시물시작-->
        <h3>04. 제주도 사려니숲길</h3>
        <br>
        <p>
            <iframe width="500" height="200" src="https://www.youtube.com/embed/1ebfgWr4fzo" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
        </p>
        <p style="font-size: 0.2rem;">[출처 유튜브 채널 : 베네필름_베감독]</p>
        <br>
        <p style="text-align:left ; font-size: 0.8rem;">
            비자림로는 제주시 구좌읍 평대리에서 봉개동까지 이어지는 아름다운 도로이며, 사려니숲길은 비자림로의 봉개동 구간에서 제주시 조천읍 교래리의 물찻오름을 지나 서귀포시 남원읍 한남리의 사려니오름까지 이어지는 숲길이다.<br>
             총 길이는 약 15km이며 숲길 전체의 평균 고도는 550m이다.<br>
        </p><br>
        <p style="text-align:left ; font-size: 0.8rem;">
            청정한 공기를 마시며 이 숲길을 걸으면 스트레스 해소에 좋고 장과 심폐 기능이 향상된다고 알려져 있어 많은 사람들이 찾는 명소이다.<br>
            2009년 7월 제주시가 기존의 관광 명소 이외에 제주시 일대의 대표적인 장소 31곳을 선정해 발표한 제주시 숨은 비경 31 중 하나이다.
        </p><br>


        <img src="assets/slideImg/saruniForest1.jpg" width="163px" height="100px">
        <img src="assets/slideImg/saruniForest2.jpg" width="163px" height="100px">
        <img src="assets/slideImg/saruniForest3.jpg" width="163px" height="100px">

        <br><br>
        <a href="#"
            style="text-align: center; padding-left: 25%; padding-right: 30%; font-size: 1.25rem; background-color: orange; width: 450px; border-radius: 15%; color: #fff;">터치하여
            위치 확인하기</a>
        <br><br><br><br>
        <!--4번게시물 이동  끝 -->

        <a href="#" onclick="toggle2()"
            style="background-color: black; color: #fff; text-align: center; font-size: 1.5rem;" id="popClose">X</a>

    </div>
    <!--
        이제 가족여행 팝업구간


    -->
    <div id="popup3">
        <h1 style="text-align:center;">👨‍👩‍👧 가족 여행 👨‍👩‍👧</h1>
        <br><br><br>

        <h3>01. 제주 유리의 성</h3>
        <br>
        <p>
            <iframe width="500" height="200" src="https://www.youtube.com/embed/BCghxP6FY7w" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
        <p style="font-size: 0.2rem;">[출처 유튜브 채널 : 제주에딧]</p>
        <br>
        <p style="text-align:left ; font-size: 0.8rem;">
            블링블링한 유리공예 작품이 제주도 원시림인 곶자왈과 어우러져 자연과 작품이 하나되어 보는이로 하여금 마음에 감동이되는 여행지 입니다.
        </p><br>
        <p style="text-align:left ; font-size: 0.8rem;">
            
        </p><br>
        <img src="assets/slideImg/glassCastle1.jpg" width="163px" height="100px">
        <img src="assets/slideImg/glassCastle2.jpg" width="163px" height="100px">
        <img src="assets/slideImg/glassCastle3.jpg" width="163px" height="100px">
        </p><br>
        <a href="http://172.30.1.7:8081/PTSD_project/familyTour(korean).jsp"
            style="text-align: center; padding-left: 25%; padding-right: 30%; font-size: 1.25rem; background-color: orange; width: 450px; border-radius: 15%; color: #fff;">터치하여
            위치 확인하기</a>
        <br><br><br><br><br>
        <!--1번게시물 이동 및 끝 2번게시물시작-->
        <h3>02. 더마파크</h3>
        <br>
        <p>
            <iframe width="500" height="200" src="https://www.youtube.com/embed/bLhv9mj6L1o" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
        </p>
        <p style="font-size: 0.2rem;">[출처 유튜브 채널 : 여행버튼 Tourbutton]</p>
        <br>
        <p style="text-align:left ; font-size: 0.8rem;">
            더마파크는 광개토대왕의 일대기를 스페타클한  마상공연으로 표현돤 공연으로 제주에서 볼수있는 공연중 하나입니다.<br>
            
        </p><br>

        <p style="text-align:left ; font-size: 0.8rem;">
            제주여행 중에 승마체험을 해볼수 있으며 재밌는 볼거리도 제공합니다.
        </p><br>
        <img src="assets/slideImg/dermaPark1.jpg" width="163px" height="100px">
        <img src="assets/slideImg/dermaPark2.jpg" width="163px" height="100px">
        <img src="assets/slideImg/dermaPark3.jpg" width="163px" height="100px">
        </p><br>
        <a href="http://172.30.1.7:8081/PTSD_project/familyTour(korean).jsp"
            style="text-align: center; padding-left: 25%; padding-right: 30%; font-size: 1.25rem; background-color: orange; width: 450px; border-radius: 15%; color: #fff;">터치하여
            위치 확인하기</a>
        <br><br><br><br>
        <!--2번게시물 이동 및 끝 3번게시물시작-->
        <h3>03. 박물관이 살아 있다 제주</h3>
        <br>
        <p>
            <iframe width="500" height="200" src="https://www.youtube.com/embed/sXerXNbjAW4?start=26" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
        </p>
        <p style="font-size: 0.2rem;">[출처 유튜브 채널 : V]</p>
        <br>
        <p style="text-align:left ; font-size: 0.8rem;">
            박물관은 살아있다는 트릭아트를 배경으로 사진찍기 좋은 여행지 입니다.<br>
            그림속으로 들어가 연출하면 내가 그림이 되는 트릭아트세계의 신기함이 재미있는 인생샷이 되는곳 이지요. <br>
        </p><br>
        <p style="text-align:left ; font-size: 0.8rem;">
            아이들과 함께 가도 연인끼리 가도 재미있게 즐길수있는 여행지입니다.
        </p><br>
        <img src="assets/slideImg/museumAlive1.jpg" width="163px" height="100px">
        <img src="assets/slideImg/museumAlive2.jpg" width="163px" height="100px">
        <img src="assets/slideImg/museumAlive3.jpg" width="163px" height="100px">

        <br><br>
        <a href="http://172.30.1.7:8081/PTSD_project/familyTour(korean).jsp"
            style="text-align: center; padding-left: 25%; padding-right: 30%; font-size: 1.25rem; background-color: orange; width: 450px; border-radius: 15%; color: #fff;">터치하여
            위치 확인하기</a>
        <br><br><br><br>
        <!--3번게시물 이동 및 끝 4번게시물시작-->
        <h3>04. 제주 스카이 워터쇼</h3>
        <br>
        <p>
            <iframe width="500" height="200" src="https://www.youtube.com/embed/3nSpNa1sCUg?start=26" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
        </p>
        <p style="font-size: 0.2rem;">[출처 유튜브 채널 : 투어패스]</p>
        <br>
        <p style="text-align:left ; font-size: 0.8rem;">
            스카이 워터쇼는 제주도에서 볼수있는 공연중에 가장 늦게 생긴 중국기예와 우크라이나 다이빙 선수들이 다이빙쇼로 이루아진 공연 입니다<br>
        </p><br>
        <p style="font-size:0.2rem; font-size:0.8rem;">
            아이들과 함께 가도 연인끼리 가도 재미있게 즐길수있는 볼거리 입니다
        </p><br>

        <img src="assets/slideImg/skyWatershow1.jpg" width="163px" height="100px">
        <img src="assets/slideImg/skyWatershow2.jpg" width="163px" height="100px">
        <img src="assets/slideImg/skyWatershow3.jpg" width="163px" height="100px">

        <br><br>
        <a href="http://172.30.1.7:8081/PTSD_project/familyTour(korean).jsp"
            style="text-align: center; padding-left: 25%; padding-right: 30%; font-size: 1.25rem; background-color: orange; width: 450px; border-radius: 15%; color: #fff;">터치하여
            위치 확인하기</a>
        <br><br><br><br>
        <!--4번게시물 이동  끝 -->

        <a href="#" onclick="toggle3()"
            style="background-color: black; color: #fff; text-align: center; font-size: 1.5rem;" id="popClose">X</a>

    </div>
    <!--
        이제 우정여행 팝업구간


    -->
    <div id="popup4">
        <h1 style="text-align:center;">🥰 우정 여행 🥰</h1>
        <br><br><br>

        <h3>01. 오설록 티 뮤지엄</h3>
        <br>
        <p>
            <iframe width="500" height="200" src="https://www.youtube.com/embed/BvvXh8AP1Dg"
                title="YouTube video player" frameborder="0"
                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                allowfullscreen></iframe>
        <p style="font-size: 0.2rem;">[출처 유튜브 채널 : 오설록 월차 생활]</p>
        <br>
        <p style="text-align:left ; font-size: 0.8rem;">

            제주 서광 차밭과 맞닿아 있는 오설록 티뮤지엄은 아모레퍼시픽이 차와 한국 전통차 문화를 소개하고, 보급하고자 2001년 9월에 개관한 국내 최초의 차 박물관입니다.<br>
            그 안에서 즐기는 오설록 녹차 아이스크림을 맛 보러 오세요.
        </p><br>
        <p style="text-align:left ; font-size: 0.8rem;">
            세계적인 디자인 건축 전문사이트인 디자인붐이 선정한 세계 10대 미술관에 오를 만큼 안팎으로 아름다운 풍광을 뽐내는 티뮤지엄은 연간 150만 명의 관람객이 방문하는 제주 최고 명소이자 문화
            공간입니다.
        </p><br>
        <img src="assets/slideImg/oseolrok1.jpg" width="163px" height="100px">
        <img src="assets/slideImg/oseolrok2.jpg" width="163px" height="100px">
        <img src="assets/slideImg/oseolrok3.jpg" width="163px" height="100px">
        </p><br>
        <a href="#"
            style="text-align: center; padding-left: 25%; padding-right: 30%; font-size: 1.25rem; background-color: orange; width: 450px; border-radius: 15%; color: #fff;">터치하여
            위치 확인하기</a>
        <br><br><br><br><br>
        <!--1번게시물 이동 및 끝 2번게시물시작-->
        <h3>02. 이호테우해수욕장</h3>
        <br>
        <p>
            <iframe width="500" height="200" src="https://www.youtube.com/embed/EfVivWs58ZU"
                title="YouTube video player" frameborder="0"
                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                allowfullscreen></iframe>
        </p>
        <p style="font-size: 0.2rem;">[출처 유튜브 채널 : Visit Jeju - 제주관광공사 공식 유튜브 채널]</p>
        <br>
        <p style="text-align:left ; font-size: 0.8rem;">
            낮과 밤이 모두 아름다운 제주 해변.<br>
            그중에서도 많은 여행객에게 사랑 받는 해변이 있다.<br>
            조랑말 등대로 제주도 사진 찍기 좋은 곳으로 잘 알려진 이호테우해변이다.<br>
            붉은 조랑말과 흰색의 조랑말은 극명하게 대조되는 색감이 우리에게 이국적인 풍경을 선사한다.<br>
            또한 이호테우해변 길목에는 아카시아 숲이 우거져 있고, 모래사장 뒤에는 소나무 숲이 형성되어 있다.<br>
            소나무 숲 사이에는 캠핑장이 마련되어 있어 여름이면 텐트를 가지고 캠핑을 즐기러 오는 사람들이 많다.
        </p><br>

        <p style="text-align:left ; font-size: 0.8rem;">
            이호테우에는 전망휴게소, 주차장, 탈의실 등 다양한 활동을 즐기기에 편리한 시설이 잘 갖춰져 있다.
        </p><br>
        <img src="assets/slideImg/Leehotaewoo1.jpg" width="163px" height="100px">
        <img src="assets/slideImg/Leehotaewoo2.jpg" width="163px" height="100px">
        <img src="assets/slideImg/Leehotaewoo3.jpg" width="163px" height="100px">
        </p><br>
        <a href="#"
            style="text-align: center; padding-left: 25%; padding-right: 30%; font-size: 1.25rem; background-color: orange; width: 450px; border-radius: 15%; color: #fff;">터치하여
            위치 확인하기</a>
        <br><br><br><br>
        <!--2번게시물 이동 및 끝 3번게시물시작-->
        <h3>03. 제주 스누피가든</h3>
        <br>
        <p>
            <iframe width="500" height="200" src="https://www.youtube.com/embed/esFp56nFi0Y?start=47"
                title="YouTube video player" frameborder="0"
                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                allowfullscreen></iframe>
        </p>
        <p style="font-size: 0.2rem;">[출처 유튜브 채널 : JITM 2022]</p>
        <br>
        <p style="text-align:left ; font-size: 0.8rem;">
            스누피가든은 피너츠 에피소드를 자연 속에서 직접 경험하면서 인생의 의미를 알게 되고 자연에서의 휴식을 통한 위로를 얻는 곳입니다.
        </p><br>
        <p style="text-align:left ; font-size: 0.8rem;">
            피너츠 친구들은 눈, 비, 바람, 낙엽과 같은 자연환경과 계절의 변화를 경험하면서 인생의 의미를 찾고 성장합니다.<br>
            제주 자연이 주는 순수한 가치와 각 테마가든에서 피너츠의 다양한 에피소드를 경험해 보세요.
        </p><br>
        <img src="assets/slideImg/snoopyGarden1.jpg" width="163px" height="100px">
        <img src="assets/slideImg/snoopyGarden2.jpg" width="163px" height="100px">
        <img src="assets/slideImg/snoopyGarden3.jpg" width="163px" height="100px">

        <br><br>
        <a href="#"
            style="text-align: center; padding-left: 25%; padding-right: 30%; font-size: 1.25rem; background-color: orange; width: 450px; border-radius: 15%; color: #fff;">터치하여
            위치 확인하기</a>
        <br><br><br><br>
        <!--3번게시물 이동 및 끝 4번게시물시작-->
        <h3>04. 빛의 벙커</h3>
        <br>
        <p>
            <iframe width="500" height="200" src="https://www.youtube.com/embed/sScyV1fM9Ss"
                title="YouTube video player" frameborder="0"
                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                allowfullscreen></iframe>
        </p>
        <p style="font-size: 0.2rem;">[출처 유튜브 채널 : 빛의 벙커 Bunker des Lumières]</p>
        <br>
        <p style="text-align:left ; font-size: 0.8rem;">
            옛 국가기간 통신시설 벙커를 재생하여 거장들의 작품을 빛과 음악을 통해서 감상하는 빛의 벙커.<br>
            혁신적인 전시 기법인 몰입형 미디어아트를 도입한 빛의 벙커는 감각의 앞단에서 시각을 넘어 예술에 몰입하는 경험을 제공함으로써 다양한 예술작품을 쉽게 이해하고 색다른 방법으로 감상할 수
            있다.<br>
            이를 통해서 장소성을 되살리는 도시재생의 효과와 더 많은 사람들이 문화 예술을 체험하는 문화민주화의 역할을 수행할 수 있다.<br>
        </p><br>


        <img src="assets/slideImg/LightBunker1.PNG" width="163px" height="100px">
        <img src="assets/slideImg/LightBunker2.PNG" width="163px" height="100px">
        <img src="assets/slideImg/LightBunker3.PNG" width="163px" height="100px">

        <br><br>
        <a href="#"
            style="text-align: center; padding-left: 25%; padding-right: 30%; font-size: 1.25rem; background-color: orange; width: 450px; border-radius: 15%; color: #fff;">터치하여
            위치 확인하기</a>
        <br><br><br><br>
        <!--4번게시물 이동  끝 -->

        <a href="#" onclick="toggle4()"
            style="background-color: black; color: #fff; text-align: center; font-size: 1.5rem;" id="popClose">X</a>

    </div>
    </div>
    <script type="text/javascript" src="assets/slideImg/swiper.min.js"></script>
    <script>
        var swiper = new Swiper('.swiper-container', {
            effect: 'coverflow',
            grabCursor: true,
            centeredSlides: true,
            slidesPerView: 'auto',
            coverflowEffect: {
                rotate: 60,
                stretch: 0,
                depth: 500,
                modifier: 1.5,
                slideShadows: true,
            },
            pagination: {
                el: '.swiper-pagination',
            },
        });
    </script>

</body>

</html>