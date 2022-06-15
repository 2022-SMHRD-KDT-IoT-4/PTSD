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
    <link rel="stylesheet" type="text/css" href="assets/css/styleTourDark.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <!--한글폰트-->
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">
    <!--중국어폰트-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Serif+SC&display=swap" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>

<body>
    <script>
        $(document).ready(function () {
            $(".loader").css("left", "442px");
            $(".imgBx").css("height", "200px");
            $(".details").css("font-family", 'Noto Serif SC');
        });



    </script>
    <div class="swiper-container" id="blur">
        <div class="swiper-wrapper">
            <!--여기서부터-->
            <div class="swiper-slide">
                <a href="#" onclick="toggle1()">
                    <div class="imgBx">
                        <img src="assets/slideImg/aloneTour.jpg">
                    </div>
                    <div class="details">
                        <h3><ruby>单<rt>dān</rt>独<rt>dú</rt>旅<rt>lǔ</rt>行<rt>xíng</rt></ruby><span></span></h3>
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
                        <h3><ruby>情侣<rt>qínglǔ</rt>旅行<rt>lǔxíng</rt></ruby><span></span></h3>
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
                        <h3><ruby>家庭<rt>jiātíng</rt>旅行<rt>lǔxíng</rt></ruby><span></span></h3>
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
                        <h3><ruby>与<rt>yǔ</rt>友人<rt>yǒurén</rt>同行<rt>tóngxíng</rt></ruby></h3><br><span></span></h3>
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
            <a href="darkMain.jsp"><span id="homeTour"></span></a>
            <a href="koreaTourDark.jsp"><span id="koreaTour"></span></a>
            <a href="englishTourDark.jsp"><span id="englishTour"></span></a>
            <a href="chinaTourDark.jsp"><span id="chinaTour"></span></a>
            <a href="japanTourDark.jsp"><span id="japanTour"></span></a>
        </div>
        <div class="circle">
            <div class="loader"><span></span></div>
        </div>
    </div>
    <!--여기서부터 게시글-->
    <div id="popup1">
        <h1 style="text-align:center;">😎 나홀로 여행 😎</h1>
        <br><br><br>

        <h3>01. <ruby>济州<rt>jǐzhōu</rt>东门<rt>dōngmén</rt>市场<rt>shìchǎng</rt></ruby></h3>
        <br>
        <p>
            <iframe width="500" height="200" src="https://www.youtube.com/embed/OAYe8wL75Bg"
                title="YouTube video player" frameborder="0"
                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                allowfullscreen></iframe>
        <p style="font-size: 0.2rem;">[출처 유튜브 채널 : 제주동문시장]</p>
        <br>
        <p style="text-align:left ; font-size: 0.8rem;">
            东门传统市场位于济州岛市中心,是最大、历史最悠久的常设传统市场。<br>
            这里规模巨大,一年四季都是当地人和游客络绎不绝的地方。
        </p><br>
        <p style="text-align:left ; font-size: 0.8rem;">
            白天可以享受反映济州岛商人生活的市场面貌,晚上可以享受充满美食的夜市的乐趣。<br>
            这里销售济州的特产、纪念品、服装、美食等各种商品，可以说是济州的万物商。<br>
            离济州机场也很近，在出发前可以顺便逛逛。
        </p><br>
        <img src="assets/slideImg/jejuDomoonmarket1.jpg" width="163px" height="100px">
        <img src="assets/slideImg/jejuDomoonmarket2.jpg" width="163px" height="100px">
        <img src="assets/slideImg/jejuDomoonmarket3.jpg" width="163px" height="100px">
        </p><br>
        <a href="#"
            style="text-align: center; padding-left: 25%; padding-right: 30%; font-size: 1.25rem; background-color: orange; width: 450px; border-radius: 15%; color: #fff;">
            触摸查看位置</a>
        <br><br><br><br><br>
        <!--1번게시물 이동 및 끝 2번게시물시작-->
        <h3>02. <ruby>城<rt>chéng</rt>山日<rt>shānrì</rt>出峰<rt>chūfēng</rt></ruby></h3>
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
            城山日出峰与济州岛的其他山峰不同,是岩浆从水中喷出而形成的水星火山体。<br>
            火山活动时喷出的热岩浆与冰冷的海水相遇,火山灰受潮后呈现出粘稠的性质,随着分层积累的就是城山日出峰。
        </p><br>

        <p style="text-align:left ; font-size: 0.8rem;">
            登上山顶后可以看到宽达8万多坪的火山口,像碗一样凹陷,里面长着紫芒等草。<br>
            火山口周围有99个差不多的山峰(岩石)。<br>
            因为这个样子像巨大的城堡,所以被称为"城山",太阳升起的样子很壮观,所以被称为"日出峰"
        </p><br>
        <p style="text-align:left ; font-size: 0.8rem;">
            通往城山日出峰顶的陡峭的楼梯虽然呼吸急促,但只需20分钟就能到达顶峰。<br>
            在山顶上，宽阔的火山口和后面展开的大海风景，给人一种与济州其他山峰完全不同的雄伟感觉。<br>
            自古以来,从这里山顶看到的日出景象在荣州10景(济州的景胜地)中居首位,因此每年12月31日都会举行城山日出庆典。
        </p><br>
        <img src="assets/slideImg/sungSanmountain1.jpg" width="163px" height="100px">
        <img src="assets/slideImg/sungSanmountain2.jpg" width="163px" height="100px">
        <img src="assets/slideImg/sungSanmountain3.jpg" width="163px" height="100px">
        </p><br>
        <a href="#"
            style="text-align: center; padding-left: 25%; padding-right: 30%; font-size: 1.25rem; background-color: orange; width: 450px; border-radius: 15%; color: #fff;">
            触摸查看位置</a>
        <br><br><br><br>
        <!--2번게시물 이동 및 끝 3번게시물시작-->
        <h3>03. <ruby>牛岛<rt>niúdǎo</rt></ruby></h3>
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
            牛岛因为长得像牛躺着,所以很早就被称为牛岛或雪岛。<br>
            作为具有缓坡、沃土、丰富的渔场、牛岛八景等天然条件的旅游胜地,每年约有200万名游客前来参观,是济州的代表性附属岛屿。
        </p><br>
        <p style="text-align:left ; font-size: 0.8rem;">
            在城山港和终达港,牛岛可以乘船,从哪里出发需要15分钟左右。<br>
            岛的长度为3.8公里，周长为17公里，虽然不休息步行需要3~4个小时，但大部分游客乘坐公交车、自行车、迷你电动车，主要游览著名的旅游景点。<br>
            <br>

            游览了黑山海边、牛岛峰、红藻断块海边、河古水东海边等1-2个著名旅游景点，在咖啡厅或饭店里休息大约需要3-4个小时。<br>
            如果想悠闲地享受牛岛，最好上午坐早船进去，下午坐船出来，一整天停留在牛岛。 但是，根据天气的不同，船运航与否也会有所不同，所以制定牛岛旅行日程时
            必须确认气象条件。
        </p><br>
        <img src="assets/slideImg/jejuWoodo1.jpg" width="163px" height="100px">
        <img src="assets/slideImg/jejuWoodo2.jpg" width="163px" height="100px">
        <img src="assets/slideImg/jejuWoodo3.jpg" width="163px" height="100px">

        <br><br>
        <a href="#"
            style="text-align: center; padding-left: 25%; padding-right: 30%; font-size: 1.25rem; background-color: orange; width: 450px; border-radius: 15%; color: #fff;">
            触摸查看位置</a>
        <br><br><br><br>
        <!--3번게시물 이동 및 끝 4번게시물시작-->
        <h3>04. <ruby>涯月<rt>yáyuè</rt>闲潭<rt>xiántán</rt>海岸<rt>hǎiàn</rt>散步<rt>sànbù</rt>路<rt>lù</rt></ruby></h3>
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
            被称为"郭金偶来路"的闲谈海岸散步路是从涯月港到郭支果物海岸沿着海岸建成的散步路。 与周围景观相协调，非常美丽。 总长1.2公里，旁边就是海浪，
            可以沿着哗啦哗啦的海岸路走。<br>
            这也是2009年济州市除了现有的旅游景点外,选定济州市一带31个代表性场所发表的31个"济州市隐藏的秘境"之一。 <br>
        </p><br>

        <p style="text-align:left ; font-size: 0.8rem;">
            随着熔岩的凝固而形成的各种神奇形态的岩石吸引了人们的视线,沿着由黑色岩石组成的海岸蜿蜒延伸的道路为散步增添了乐趣。<br>
            位于济州岛西侧，可以欣赏到美丽的日落，这也是这里的魅力所在。
        </p><br>
        <img src="assets/slideImg/jejuAewolhandam1.jpg" width="163px" height="100px">
        <img src="assets/slideImg/jejuAewolhandam2.jpg" width="163px" height="100px">
        <img src="assets/slideImg/jejuAewolhandam3.jpg" width="163px" height="100px">

        <br><br>
        <a href="#"
            style="text-align: center; padding-left: 25%; padding-right: 30%; font-size: 1.25rem; background-color: orange; width: 450px; border-radius: 15%; color: #fff;">
            触摸查看位置</a>
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
        <h1 style="text-align:center;">🥰 <ruby>情侣<rt>qínglǔ</rt>旅行<rt>lǔxíng</rt></ruby> 🥰</h1>
        <br><br><br>

        <h3>01.Arte Museum</h3>
        <br>
        <p>
            <iframe width="500" height="200" src="https://www.youtube.com/embed/athlev1JU-E"
                title="YouTube video player" frameborder="0"
                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                allowfullscreen></iframe>
        <p style="font-size: 0.2rem;">[출처 유튜브 채널 : d'strict]</p>
        <br>
        <p style="text-align:left ; font-size: 0.8rem;">

            国内最大投入型媒体艺术展示馆ARTE博物馆！<br>
            Arte Museum是以COEX"WAVE"作品而闻名的世界水平的数码设计公司d'strict推出的国内最大规模的投入型媒体艺术展示馆。<br>
        </p><br>
        <p style="text-align:left ; font-size: 0.8rem;">
            原本用作音响制造工厂的地面面积为1400坪，最大面积接近10M的雄伟空间内，将展示由光和声音创造的10个多彩的媒体艺术！
        </p><br>
        <img src="assets/slideImg/aretesium1.PNG" width="163px" height="100px">
        <img src="assets/slideImg/aretesium2.PNG" width="163px" height="100px">
        <img src="assets/slideImg/aretesium3.PNG" width="163px" height="100px">
        </p><br>
        <a href="#"
            style="text-align: center; padding-left: 25%; padding-right: 30%; font-size: 1.25rem; background-color: orange; width: 450px; border-radius: 15%; color: #fff;">
            触摸查看位置</a>
        <br><br><br><br><br>
        <!--1번게시물 이동 및 끝 2번게시물시작-->
        <h3>02. <ruby>潜水<rt>qiánshuǐ</rt>运动<rt>yùndòng</rt>中心<rt>zhōngxīn</rt></ruby></h3>
        <br>
        <p>
            <iframe width="500" height="200" src="https://www.youtube.com/embed/bO7nLBZ4z9g?start=17"
                title="YouTube video player" frameborder="0"
                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                allowfullscreen></iframe>
        </p>
        <p style="font-size: 0.2rem;">[출처 유튜브 채널 : 천선희]</p>
        <br>
        <p style="text-align:left ; font-size: 0.8rem;">
            欢迎大家来到安全第一的西归浦跳水中心。<br>
            西归浦Dive中心是公认的PADI教育专门中心,根据全世界认可的潜水训练教育机构PADI教育项目,进行系统、安全的教育。<br>
            从在文三岛泛岛享受的Fun跳水,到没有跳水经验的人可以参与的体验跳水项目。<br>
        </p><br>

        <p style="text-align:left ; font-size: 0.8rem;">
            在西归浦Dive中心一起进行美丽的济州大海中的水中旅行吧
        </p><br>
        <img src="assets/slideImg/seogwipoDive1.PNG" width="163px" height="100px">
        <img src="assets/slideImg/seogwipoDive2.PNG" width="163px" height="100px">
        <img src="assets/slideImg/seogwipoDive3.PNG" width="163px" height="100px">
        </p><br>
        <a href="#"
            style="text-align: center; padding-left: 25%; padding-right: 30%; font-size: 1.25rem; background-color: orange; width: 450px; border-radius: 15%; color: #fff;">
            触摸查看位置</a>
        <br><br><br><br>
        <!--2번게시물 이동 및 끝 3번게시물시작-->
        <h3>03. <ruby>风<rt>fēng</rt></ruby> 1947</h3>
        <br>
        <p>
            <iframe width="500" height="200" src="https://www.youtube.com/embed/q9RxnQYXOXI"
                title="YouTube video player" frameborder="0"
                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                allowfullscreen></iframe>
        </p>
        <p style="font-size: 0.2rem;">[출처 유튜브 채널 : 윈드1947]</p>
        <br>
        <p style="text-align:left ; font-size: 0.8rem;">
            拥抱汉拿山南侧风景的3万坪规模的"Wind 1947 Cart主题公园"是拥有亚洲最长路线的济州唯一的赛道型赛车。
        </p><br>
        <p style="text-align:left ; font-size: 0.8rem;">
            另外还设有生存体验场。<br>
            1楼运营着济州唯一的bibitan室内生存体验场,2楼激光生存体验场。
        </p><br>
        <img src="assets/slideImg/Kart1.jpg" width="163px" height="100px">
        <img src="assets/slideImg/Kart2.jpg" width="163px" height="100px">
        <img src="assets/slideImg/Kart3.jpg" width="163px" height="100px">

        <br><br>
        <a href="#"
            style="text-align: center; padding-left: 25%; padding-right: 30%; font-size: 1.25rem; background-color: orange; width: 450px; border-radius: 15%; color: #fff;">
            触摸查看位置</a>
        <br><br><br><br>
        <!--3번게시물 이동 및 끝 4번게시물시작-->
        <h3>04. <ruby>济州<rt>jǐzhōu</rt>岛<rt>dǎo</rt>連<rt>lián</rt>岳林<rt>yuèlín</rt>街<rt>jiē</rt></ruby></h3>
        <br>
        <p>
            <iframe width="500" height="200" src="https://www.youtube.com/embed/1ebfgWr4fzo"
                title="YouTube video player" frameborder="0"
                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                allowfullscreen></iframe>
        </p>
        <p style="font-size: 0.2rem;">[출처 유튜브 채널 : 베네필름_베감독]</p>
        <br>
        <p style="text-align:left ; font-size: 0.8rem;">
            济州市旧左路在榧子林邑坪岱里的奉盖洞在美丽的道路,在林间路上的榧子林사려니奉盖洞路段,在济州市朝天邑桥来里的,在西归浦市물찻오름南汉南里的上涨,林间사려니。<br>
            长约15公里,并且整体的平均高度在林间550米。<br>
        </p><br>
        <p style="text-align:left ; font-size: 0.8rem;">
            纯净的空气,在林荫道上走,这有利于消除压力,人的脏器和心肺功能提高,所以很多人的名胜。<br>
            2009年7月济州的旅游胜地,在现有基础上,济州市的代表性地点选定31家,济州市的之一。31非经济
        </p><br>


        <img src="assets/slideImg/saruniForest1.jpg" width="163px" height="100px">
        <img src="assets/slideImg/saruniForest2.jpg" width="163px" height="100px">
        <img src="assets/slideImg/saruniForest3.jpg" width="163px" height="100px">

        <br><br>
        <a href="#"
            style="text-align: center; padding-left: 25%; padding-right: 30%; font-size: 1.25rem; background-color: orange; width: 450px; border-radius: 15%; color: #fff;">
            触摸查看位置</a>
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

        <h3>01. <ruby>济州<rt>jǐzhōu</rt>琉璃<rt>liúli</rt>城堡<rt>chéngbǎo</rt></ruby></h3>
        <br>
        <p>
            <iframe width="500" height="200" src="https://www.youtube.com/embed/BCghxP6FY7w"
                title="YouTube video player" frameborder="0"
                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                allowfullscreen></iframe>
        <p style="font-size: 0.2rem;">[출처 유튜브 채널 : 제주에딧]</p>
        <br>
        <p style="text-align:left ; font-size: 0.8rem;">
            闪闪发光的玻璃工艺作品与济州岛原始森林葛扎石相融合,是自然和作品融为一体,让人感动心灵的旅行地。
        </p><br>
        <p style="text-align:left ; font-size: 0.8rem;">

        </p><br>
        <img src="assets/slideImg/glassCastle1.jpg" width="163px" height="100px">
        <img src="assets/slideImg/glassCastle2.jpg" width="163px" height="100px">
        <img src="assets/slideImg/glassCastle3.jpg" width="163px" height="100px">
        </p><br>
        <a href="http://172.30.1.7:8081/PTSD_project/famliyTour(china).jsp"
            style="text-align: center; padding-left: 25%; padding-right: 30%; font-size: 1.25rem; background-color: orange; width: 450px; border-radius: 15%; color: #fff;">
            触摸查看位置</a>
        <br><br><br><br><br>
        <!--1번게시물 이동 및 끝 2번게시물시작-->
        <h3>02. <ruby>公<rt>démǎ</rt>园<rt>gōngyuán</rt></ruby></h3>
        <br>
        <p>
            <iframe width="500" height="200" src="https://www.youtube.com/embed/bLhv9mj6L1o"
                title="YouTube video player" frameborder="0"
                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                allowfullscreen></iframe>
        </p>
        <p style="font-size: 0.2rem;">[출처 유튜브 채널 : 여행버튼 Tourbutton]</p>
        <br>
        <p style="text-align:left ; font-size: 0.8rem;">
            Derma Park是将广开土大王的一生以壮观的马公演出在济州岛可以看到的演出之一。<br>

        </p><br>

        <p style="text-align:left ; font-size: 0.8rem;">
            在济州旅行中可以体验骑马,还提供有趣的看点。
        </p><br>
        <img src="assets/slideImg/dermaPark1.jpg" width="163px" height="100px">
        <img src="assets/slideImg/dermaPark2.jpg" width="163px" height="100px">
        <img src="assets/slideImg/dermaPark3.jpg" width="163px" height="100px">
        </p><br>
        <a href="#"
            style="text-align: center; padding-left: 25%; padding-right: 30%; font-size: 1.25rem; background-color: orange; width: 450px; border-radius: 15%; color: #fff;">
            触摸查看位置</a>
        <br><br><br><br>
        <!--2번게시물 이동 및 끝 3번게시물시작-->
        <h3>03. <ruby>博物<rt>bówùguǎn</rt>馆栩栩如生<rt>xǔxǔrúshēng</rt></ruby></h3>
        <br>
        <p>
            <iframe width="500" height="200" src="https://www.youtube.com/embed/sXerXNbjAW4?start=26"
                title="YouTube video player" frameborder="0"
                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                allowfullscreen></iframe>
        </p>
        <p style="font-size: 0.2rem;">[출처 유튜브 채널 : V]</p>
        <br>
        <p style="text-align:left ; font-size: 0.8rem;">
            博物馆是以"活着"的Trick Art为背景拍照的好旅行地。<br>
            如果进入画中进行演出，就会成为画画的特技艺术世界的神奇感将成为有趣的人生照。 <br>
        </p><br>
        <p style="text-align:left ; font-size: 0.8rem;">
            是和孩子们一起去，也是恋人一起去也能愉快享受的旅行地。
        </p><br>
        <img src="assets/slideImg/museumAlive1.jpg" width="163px" height="100px">
        <img src="assets/slideImg/museumAlive2.jpg" width="163px" height="100px">
        <img src="assets/slideImg/museumAlive3.jpg" width="163px" height="100px">

        <br><br>
        <a href="http://172.30.1.7:8081/PTSD_project/famliyTour(china).jsp"
            style="text-align: center; padding-left: 25%; padding-right: 30%; font-size: 1.25rem; background-color: orange; width: 450px; border-radius: 15%; color: #fff;">
            触摸查看位置</a>
        <br><br><br><br>
        <!--3번게시물 이동 및 끝 4번게시물시작-->
        <h3>04. <ruby>济州<rt>jǐzhōu</rt>天空<rt>tiānkōng</rt>水秀<rt>shuǐxiù</rt></ruby></h3>
        <br>
        <p>
            <iframe width="500" height="200" src="https://www.youtube.com/embed/3nSpNa1sCUg?start=26"
                title="YouTube video player" frameborder="0"
                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                allowfullscreen></iframe>
        </p>
        <p style="font-size: 0.2rem;">[출처 유튜브 채널 : 투어패스]</p>
        <br>
        <p style="text-align:left ; font-size: 0.8rem;">
            天空水上表演是济州岛最晚出现的中国技艺和乌克兰跳水选手们的跳水表演。<br>
        </p><br>
        <p style="font-size:0.2rem; font-size:0.8rem;">
            无论和孩子们一起去，还是和恋人一起去，都是可以愉快享受的看点睛之笔。
        </p><br>

        <img src="assets/slideImg/skyWatershow1.jpg" width="163px" height="100px">
        <img src="assets/slideImg/skyWatershow2.jpg" width="163px" height="100px">
        <img src="assets/slideImg/skyWatershow3.jpg" width="163px" height="100px">

        <br><br>
        <a href="http://172.30.1.7:8081/PTSD_project/famliyTour(china).jsp"
            style="text-align: center; padding-left: 25%; padding-right: 30%; font-size: 1.25rem; background-color: orange; width: 450px; border-radius: 15%; color: #fff;">
            触摸查看位置</a>
        <br><br><br><br>
        <!--4번게시물 이동  끝 -->

        <a href="#" onclick="toggle3()"
            style="background-color: black; color: #fff; text-align: center; font-size: 1.5rem;" id="popClose">X</a>

    </div>
    <!--
        이제 우정여행 팝업구간


    -->
    <div id="popup4">
        <h1 style="text-align:center;">🥰 <ruby>与<rt>yǔ</rt>友人<rt>yǒurén</rt>同行<rt>tóngxíng</rt></ruby> 🥰</h1>
        <br><br><br>

        <h3>01. <ruby>奥沙洛克<rt>àoshāluòkè</rt>茶<rt>chá</rt>博物馆<rt>bówùguǎn</rt></ruby></h3>
        <br>
        <p>
            <iframe width="500" height="200" src="https://www.youtube.com/embed/BvvXh8AP1Dg"
                title="YouTube video player" frameborder="0"
                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                allowfullscreen></iframe>
        <p style="font-size: 0.2rem;">[출처 유튜브 채널 : 오설록 월차 생활]</p>
        <br>
        <p style="text-align:left ; font-size: 0.8rem;">

            与济州曙光茶园相连的吴雪绿茶博物馆是爱茉莉太平洋为介绍和普及茶和韩国传统茶文化于2001年9月开馆的韩国首个茶博物馆。<br>
            来品尝一下在里面享受的绿茶冰淇淋吧。
        </p><br>
        <p style="text-align:left ; font-size: 0.8rem;">
            世界级设计建筑专门网站"设计boom"评选的"世界10大美术馆"中，内外风景优美的茶博物馆每年吸引150万名游客，是济州最好的景点和文化。
            是空间。
        </p><br>
        <img src="assets/slideImg/oseolrok1.jpg" width="163px" height="100px">
        <img src="assets/slideImg/oseolrok2.jpg" width="163px" height="100px">
        <img src="assets/slideImg/oseolrok3.jpg" width="163px" height="100px">
        </p><br>
        <a href="#"
            style="text-align: center; padding-left: 25%; padding-right: 30%; font-size: 1.25rem; background-color: orange; width: 450px; border-radius: 15%; color: #fff;">
            触摸查看位置</a>
        <br><br><br><br><br>
        <!--1번게시물 이동 및 끝 2번게시물시작-->
        <h3>02. 伊霍特乌海滩</h3>
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
            昼夜都很美丽的济州海边。<br>
            其中不乏深受游客喜爱的海滩。<br>
            这里就是以小马灯塔、济州岛拍照的好地方而闻名的伊霍特右海边。<br>
            红色小马和白色小马形成了鲜明的对比,给我们带来了异国风情。<br>
            另外,在梨花女子酒店右海边的路口,洋槐林茂盛,沙滩后面形成松树林。<br>
            松树林之间设有露营地,一到夏天就带着帐篷来露营的人很多。
        </p><br>

        <p style="text-align:left ; font-size: 0.8rem;">
            该酒店内设有瞭望休息所、停车场、更衣室等便于享受各种活动的设施。
        </p><br>
        <img src="assets/slideImg/Leehotaewoo1.jpg" width="163px" height="100px">
        <img src="assets/slideImg/Leehotaewoo2.jpg" width="163px" height="100px">
        <img src="assets/slideImg/Leehotaewoo3.jpg" width="163px" height="100px">
        </p><br>
        <a href="#"
            style="text-align: center; padding-left: 25%; padding-right: 30%; font-size: 1.25rem; background-color: orange; width: 450px; border-radius: 15%; color: #fff;">
            触摸查看位置</a>
        <br><br><br><br>
        <!--2번게시물 이동 및 끝 3번게시물시작-->
        <h3>03. <ruby>济州<rt>jǐzhōu</rt>史努<rt>shǐnǔ</rt>比<rt>比</rt>花园<rt>huāyuán</rt></ruby></h3>
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
            史努比花园是在自然中亲身体验皮纳茨插曲,了解人生的意义,通过自然休息获得安慰的地方。
        </p><br>
        <p style="text-align:left ; font-size: 0.8rem;">
            Pinutz朋友们在经历雪、雨、风、落叶等自然环境和季节变化的同时,寻找人生的意义并成长。<br>
            体验济州岛自然赋予的纯粹价值和各主题花园中尖峰的各种小插曲吧。
        </p><br>
        <img src="assets/slideImg/snoopyGarden1.jpg" width="163px" height="100px">
        <img src="assets/slideImg/snoopyGarden2.jpg" width="163px" height="100px">
        <img src="assets/slideImg/snoopyGarden3.jpg" width="163px" height="100px">

        <br><br>
        <a href="#"
            style="text-align: center; padding-left: 25%; padding-right: 30%; font-size: 1.25rem; background-color: orange; width: 450px; border-radius: 15%; color: #fff;">
            触摸查看位置</a>
        <br><br><br><br>
        <!--3번게시물 이동 및 끝 4번게시물시작-->
        <h3>04. <ruby>光<rt>guāng</rt>掩体<rt>yǎntǐ</rt></ruby></h3>
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
            播放旧国家基础通信设施地堡,通过光和音乐欣赏巨匠作品地光地堡。<br>
            引进创新展示技法"投入型媒体艺术"的光掩体在感觉的前端提供超越视觉、投入艺术的体验，可以轻松理解多种艺术作品，用与众不同的方法欣赏。
            在。<br>
            通过这些,可以起到恢复场所性的城市再生效果和让更多的人体验文化艺术的文化民主化的作用。<br>
        </p><br>


        <img src="assets/slideImg/LightBunker1.PNG" width="163px" height="100px">
        <img src="assets/slideImg/LightBunker2.PNG" width="163px" height="100px">
        <img src="assets/slideImg/LightBunker3.PNG" width="163px" height="100px">

        <br><br>
        <a href="#"
            style="text-align: center; padding-left: 25%; padding-right: 30%; font-size: 1.25rem; background-color: orange; width: 450px; border-radius: 15%; color: #fff;">
            触摸查看位置</a>
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