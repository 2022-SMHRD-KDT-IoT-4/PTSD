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
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>

<body>
    <script>
        $(document).ready(function () {
            $(document).ready(function () {
                $(".loader").css("left", "530px");
                $(".imgBx").css("height", "200px");
            });


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
                        <h3>ソロ<ruby>旅行<rt>りょこう</rt></ruby><span></span></h3>
                    </div>
                </a>
                <script type="text/javascript">
                    function toggle() {
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
                        <h3>カップル<ruby>旅行<rt>りょこう</rt></ruby><span></span></h3>
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
                        <h3>家族<ruby>旅行<rt>りょこう</rt></ruby><span></span></h3>
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
                        <h3>友情<ruby>旅行<rt>りょこう</rt></ruby></h3><span></span></h3>
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
        <h1 style="text-align:center;">😎 ソロ<ruby>旅行<rt>りょこう</rt></ruby> 😎</h1>
        <br><br><br>

        <h3>01. <ruby>済州東門市場<rt>さいしゅうひがしもんしじょう</rt></ruby></h3>
        <br>
        <p>
            <iframe width="500" height="200" src="https://www.youtube.com/embed/OAYe8wL75Bg"
                title="YouTube video player" frameborder="0"
                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                allowfullscreen></iframe>
        <p style="font-size: 0.2rem;">[출처 유튜브 채널 : 제주동문시장]</p>
        <br>
        <p style="text-align:left ; font-size: 0.8rem;">
            東門在来市場は済州道の都心に位置し、最も大きくて歴史の深い常設在来市場だ。<br>
            莫大な規模を誇るだけに、1年中現地人、そして旅行客の足が絶えないところだ。
        </p><br>
        <p style="text-align:left ; font-size: 0.8rem;">
            昼間は済州島の商人たちの人生を盛り込んだ市場の姿を、夜は食べ物がいっぱいの夜市の醍醐味を楽しむことができる。<br>
            済州の特産品、記念品、衣類、食べ物など様々な商品を販売しており、済州の万物商といえる。<br>
            済州空港とも近いため、出発する前にしばらく立ち寄ってショッピングするのにも良い。
        </p><br>
        <img src="assets/slideImg/jejuDomoonmarket1.jpg" width="155px" height="100px">
        <img src="assets/slideImg/jejuDomoonmarket2.jpg" width="155px" height="100px">
        <img src="assets/slideImg/jejuDomoonmarket3.jpg" width="155px" height="100px">
        </p><br>
        <a href="#"
            style="text-align: center; padding-left: 25%; padding-right: 30%; font-size: 1.25rem; background-color: orange; width: 450px; border-radius: 15%; color: #fff;">
            位置確認</a>
        <br><br><br><br><br>
        <!--1번게시물 이동 및 끝 2번게시물시작-->
        <h3>02. <ruby>城山日出峰<rt>しろやまにっしゅつ峰ほう</rt></ruby></h3>
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
            城山日出峰は済州道の他のオルムとは異なり、マグマが水中から噴出して作られた水性火山体だ。<br>
            火山活動時に噴出した熱いマグマが冷たい海水と出会い、火山灰が湿気を多く含んで粘り強い性質を見せるようになり、これが層を成して積もったのが城山日出峰だ。
        </p><br>

        <p style="text-align:left ; font-size: 0.8rem;">
            頂上に上がれば幅が8万坪余りに達する噴火口を見ることができるが、器のように凹んだ形で中にはススキなどの草が生えている。<br>
            噴火口の周りには99個の似たり寄ったりの峰(岩石)が位置している。<br>
            この姿が巨大な城のようだと言って「城山」、日が昇る姿が壮観だと言って「日出峰」という名前が付けられた。
        </p><br>
        <p style="text-align:left ; font-size: 0.8rem;">
            城山日出峰の頂上に至る急な階段道は息切れするが、十分に20分で頂上に達する。<br>
            頂上からは広い噴火口とその後ろに広がる海の風景は、済州の他のオルムとは全く異なる雄大な感じを与える。<br>
            昔からこの頂上から眺める日の出の光景は栄州10景(済州の景勝地)の中で一番と言われ、これに毎年12月31日には城山日出祭りが開かれる。
        </p><br>
        <img src="assets/slideImg/sungSanmountain1.jpg" width="155px" height="100px">
        <img src="assets/slideImg/sungSanmountain2.jpg" width="155px" height="100px">
        <img src="assets/slideImg/sungSanmountain3.jpg" width="155px" height="100px">
        </p><br>
        <a href="#"
            style="text-align: center; padding-left: 25%; padding-right: 30%; font-size: 1.25rem; background-color: orange; width: 450px; border-radius: 15%; color: #fff;">
            位置確認</a>
        <br><br><br><br>
        <!--2번게시물 이동 및 끝 3번게시물시작-->
        <h3>03. <ruby>牛島<rt>うしじま</rt></ruby></h3>
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
            牛島は牛が横になっている形に似ていることから、早くから牛島またはシェ島と呼ばれた。<br>
            緩やかな傾斜と沃土、豊かな漁場、牛島八景など天恵の自然条件を備えた観光地として、年間約200万人の観光客が訪れる済州の代表的な付属島だ。
        </p><br>
        <p style="text-align:left ; font-size: 0.8rem;">
            城山港と鐘達港から牛島行きは船に乗れるが、どこから出発しても15分程度かかる。<br>
            島の長さは3.8km、周囲は17km。休まず歩くと3~4時間かかる距離だが、ほとんどの観光客はバスや自転車、ミニ電気自動車に乗って有名な観光地を中心に回る。<br>
            <br>

            コムモレ海辺や牛島峰、紅潮団塊海辺、下高水洞海辺など有名な観光地1~2ヵ所を見回り、カフェや飲食店で休息を楽しんでも大体3~4時間程度かかる。<br>
            余裕を持って牛島を楽しみたいなら、午前の朝、船に乗って午後の船を出て一日中牛島に泊まってみるのもいい。 ただし、気象によって船の運航可否が異なる場合がありますので、牛島旅行日程を組むには
            気象条件を必ず確認しなければならない。
        </p><br>
        <img src="assets/slideImg/jejuWoodo1.jpg" width="155px" height="100px">
        <img src="assets/slideImg/jejuWoodo2.jpg" width="155px" height="100px">
        <img src="assets/slideImg/jejuWoodo3.jpg" width="155px" height="100px">

        <br><br>
        <a href="#"
            style="text-align: center; padding-left: 25%; padding-right: 30%; font-size: 1.25rem; background-color: orange; width: 450px; border-radius: 15%; color: #fff;">
            位置確認</a>
        <br><br><br><br>
        <!--3번게시물 이동 및 끝 4번게시물시작-->
        <h3>04. <ruby>涯月寒潭海岸散策<rt>はてつきさむたんかいがんさんさく</rt>路<rt>ろ</rt></ruby></h3>
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
            「郭錦オルレ道」とも呼ばれる漢潭海岸散策路は、涯月港から郭支果物海辺まで海岸沿いに造成された散策路だ。 周辺の景観と調和していて美しいです。 全長は1.2kmで、すぐ横に波が
            ざわざわとした海岸沿いを歩くことができる。<br>
            2009年済州市が既存の観光名所以外に済州市一帯の代表的な場所31ヶ所を選定して発表した「済州市の隠れた秘境」31ヶ所の一つでもある。 <br>
        </p><br>

        <p style="text-align:left ; font-size: 0.8rem;">
            溶岩が固まって作られた多様な不思議な形の岩が視線を集め、黒い岩で構成された海岸沿いに曲がりくねって続く道は散歩道に面白さを増してくれる。<br>
            済州島の西側に位置しており、美しい日没をよく鑑賞できるという点もここの魅力ポイントだ。
        </p><br>
        <img src="assets/slideImg/jejuAewolhandam1.jpg" width="155px" height="100px">
        <img src="assets/slideImg/jejuAewolhandam2.jpg" width="155px" height="100px">
        <img src="assets/slideImg/jejuAewolhandam3.jpg" width="155px" height="100px">

        <br><br>
        <a href="#"
            style="text-align: center; padding-left: 25%; padding-right: 30%; font-size: 1.25rem; background-color: orange; width: 450px; border-radius: 15%; color: #fff;">
            位置確認</a>
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
        <h1 style="text-align:center;">🥰 カップル<ruby>旅行<rt>りょこう</rt></ruby> 🥰</h1>
        <br><br><br>

        <h3>01. アルテミュージアム<ruby>済州<rt>さいしゅう</rt></ruby></h3>
        <br>
        <p>
            <iframe width="500" height="200" src="https://www.youtube.com/embed/athlev1JU-E"
                title="YouTube video player" frameborder="0"
                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                allowfullscreen></iframe>
        <p style="font-size: 0.2rem;">[출처 유튜브 채널 : d'strict]</p>
        <br>
        <p style="text-align:left ; font-size: 0.8rem;">

            韓国最大の没入型メディアアート展示館アルテミュージアム!<br>
            アルテミュージアムはコエックスの「WAVE」作品で有名な世界レベルのデジタルデザインカンパニーd'strictが披露する国内最大規模の没入型メディアアート展示館です。<br>
        </p><br>
        <p style="text-align:left ; font-size: 0.8rem;">
            スピーカー製造工場として使われていた床面積1,400坪、最大10Mに迫る壮大な空間では、光と音が作り出した10個の多彩なメディアアート展示が繰り広げられます！
        </p><br>
        <img src="assets/slideImg/aretesium1.PNG" width="155px" height="100px">
        <img src="assets/slideImg/aretesium2.PNG" width="155px" height="100px">
        <img src="assets/slideImg/aretesium3.PNG" width="155px" height="100px">
        </p><br>
        <a href="#"
            style="text-align: center; padding-left: 25%; padding-right: 30%; font-size: 1.25rem; background-color: orange; width: 450px; border-radius: 15%; color: #fff;">
            位置確認</a>
        <br><br><br><br><br>
        <!--1번게시물 이동 및 끝 2번게시물시작-->
        <h3>02. ダイブセンタースキューバダイビング</h3>
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
            安全を最優先にする西帰浦ダイブセンターへようこそ。<br>
            西帰浦ダイブセンターは公認されたPADI教育専門センターであり、世界的に認めたスキューバトレーニング教育機関であるPADI教育プログラムに合わせて体系的で安全な教育を行います。<br>
            文島のソプソムボムソムで楽しむファンダイビングからダイビング経験のない方々が参加できる体験ダイビングプログラムまで運営しています。<br>
        </p><br>

        <p style="text-align:left ; font-size: 0.8rem;">
            美しい済州の海の中の水中旅行を西帰浦ダイブセンターでお楽しみください。
        </p><br>
        <img src="assets/slideImg/seogwipoDive1.PNG" width="155px" height="100px">
        <img src="assets/slideImg/seogwipoDive2.PNG" width="155px" height="100px">
        <img src="assets/slideImg/seogwipoDive3.PNG" width="155px" height="100px">
        </p><br>
        <a href="#"
            style="text-align: center; padding-left: 25%; padding-right: 30%; font-size: 1.25rem; background-color: orange; width: 450px; border-radius: 15%; color: #fff;">
            位置確認</a>
        <br><br><br><br>
        <!--2번게시물 이동 및 끝 3번게시물시작-->
        <h3>03. ウインド1947</h3>
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
            漢拏山の南側の風景を抱いた3万坪規模の「ウィンド1947カートテーマパーク」は、アジア最長のコースを保有する済州唯一のサーキット型レーシングカートです。
        </p><br>
        <p style="text-align:left ; font-size: 0.8rem;">
            また、サバイバル体験場も設けられています。<br>
            1階済州唯一のビビタン室内サバイバル、2階レーザーサバイバル体験場を運営しています。
        </p><br>
        <img src="assets/slideImg/Kart1.jpg" width="155px" height="100px">
        <img src="assets/slideImg/Kart2.jpg" width="155px" height="100px">
        <img src="assets/slideImg/Kart3.jpg" width="155px" height="100px">

        <br><br>
        <a href="#"
            style="text-align: center; padding-left: 25%; padding-right: 30%; font-size: 1.25rem; background-color: orange; width: 450px; border-radius: 15%; color: #fff;">%nbsp;%nbsp;
            位置確認</a>
        <br><br><br><br>
        <!--3번게시물 이동 및 끝 4번게시물시작-->
        <h3>04. <ruby>済州島横浜林道<rt>さいしゅう島とうよこはまりんどう</rt></ruby></h3>
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
            毘沙林路は済州市旧左邑平台里から鳳蓋洞まで続く美しい道路であり、サリョニ林道は毘沙林路の鳳蓋洞区間から済州市朝天邑橋来里のムルチャッオルムを経て西帰浦市南原邑漢南里のサリョニオルムまで
            続く林道だ。<br>
            全長は約15kmで、林道全体の平均高度は550mだ。<br>
        </p><br>
        <p style="text-align:left ; font-size: 0.8rem;">
            清浄な空気を吸いながらこの林道を歩くとストレス解消に良く、腸と心肺機能が向上すると知られており、多くの人が訪れる名所だ。<br>
            2009年7月、済州市が既存の観光名所以外に済州市一帯の代表的な場所31ヵ所を選定して発表した済州市隠れた秘境31の一つだ。
        </p><br>


        <img src="assets/slideImg/saruniForest1.jpg" width="155px" height="100px">
        <img src="assets/slideImg/saruniForest2.jpg" width="155px" height="100px">
        <img src="assets/slideImg/saruniForest3.jpg" width="155px" height="100px">

        <br><br>
        <a href="#"
            style="text-align: center; padding-left: 25%; padding-right: 30%; font-size: 1.25rem; background-color: orange; width: 450px; border-radius: 15%; color: #fff;">
            位置確認</a>
        <br><br><br><br>
        <!--4번게시물 이동  끝 -->

        <a href="#" onclick="toggle2()"
            style="background-color: black; color: #fff; text-align: center; font-size: 1.5rem;" id="popClose">X</a>

    </div>
    <!--
        이제 가족여행 팝업구간


    -->
    <div id="popup3">
        <h1 style="text-align:center;">👩<ruby>家族旅行<rt>かぞくりょこう</rt></ruby>👩‍👧</h1>
        <br><br><br>

        <h3>01. <ruby>済州<rt>さいしゅう</rt></ruby>ガラスの<ruby>城<rt>しろ</rt></ruby></h3>
        <br>
        <p>
            <iframe width="500" height="200" src="https://www.youtube.com/embed/BCghxP6FY7w"
                title="YouTube video player" frameborder="0"
                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                allowfullscreen></iframe>
        <p style="font-size: 0.2rem;">[출처 유튜브 채널 : 제주에딧]</p>
        <br>
        <p style="text-align:left ; font-size: 0.8rem;">
            キラキラしたガラス工芸作品が済州島の原始林であるコッチャワルと調和し、自然と作品が一つになって見る人に心に感動する旅行地です。
        </p><br>
        <p style="text-align:left ; font-size: 0.8rem;">

        </p><br>
        <img src="assets/slideImg/glassCastle1.jpg" width="155px" height="100px">
        <img src="assets/slideImg/glassCastle2.jpg" width="155px" height="100px">
        <img src="assets/slideImg/glassCastle3.jpg" width="155px" height="100px">
        </p><br>
        <a href="http://172.30.1.45:8081/PTSD_project/familyTour(japan)castleofglass.jsp"
            style="text-align: center; padding-left: 25%; padding-right: 30%; font-size: 1.25rem; background-color: orange; width: 450px; border-radius: 15%; color: #fff;">
            位置確認</a>
        <br><br><br><br><br>
        <!--1번게시물 이동 및 끝 2번게시물시작-->
        <h3>02. ダーマ·パーク</h3>
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
            ダーマパークは広開土大王の一代記をスペクタクルな馬上公演で表現することができる公演で、済州で見られる公演の一つです。<br>

        </p><br>

        <p style="text-align:left ; font-size: 0.8rem;">
            済州旅行中に乗馬体験ができ、楽しい見どころもご提供しております。
        </p><br>
        <img src="assets/slideImg/dermaPark1.jpg" width="155px" height="100px">
        <img src="assets/slideImg/dermaPark2.jpg" width="155px" height="100px">
        <img src="assets/slideImg/dermaPark3.jpg" width="155px" height="100px">
        </p><br>
        <a href="http://172.30.1.45:8081/PTSD_project/familyTour(japan).jsp"
            style="text-align: center; padding-left: 25%; padding-right: 30%; font-size: 1.25rem; background-color: orange; width: 450px; border-radius: 15%; color: #fff;">
            位置確認</a>
        <br><br><br><br>
        <!--2번게시물 이동 및 끝 3번게시물시작-->
        <h3>03. 「<ruby>博物館<rt>はくぶつかん</rt></ruby>は<ruby>生<rt>い</rt></ruby>きている」<ruby>済州島<rt>さいしゅうとう</rt></ruby>（チェジュド）
        </h3>
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
            博物館は生きているというトリックアートを背景に写真を撮るのに良い旅行地です。<br>
            絵の中に入って演出すると、自分が絵になるトリックアート世界の不思議さが面白い人生ショットになるところです。 <br>
        </p><br>
        <p style="text-align:left ; font-size: 0.8rem;">
            子供たちと一緒に行っても恋人同士で行っても楽しめる旅行地です。
        </p><br>
        <img src="assets/slideImg/museumAlive1.jpg" width="155px" height="100px">
        <img src="assets/slideImg/museumAlive2.jpg" width="155px" height="100px">
        <img src="assets/slideImg/museumAlive3.jpg" width="155px" height="100px">

        <br><br>
        <a href="http://172.30.1.45:8081/PTSD_project/familyTour(japan).jsp"
            style="text-align: center; padding-left: 25%; padding-right: 30%; font-size: 1.25rem; background-color: orange; width: 450px; border-radius: 15%; color: #fff;">
            位置確認</a>
        <br><br><br><br>
        <!--3번게시물 이동 및 끝 4번게시물시작-->
        <h3>04. <ruby>済州<rt>さいしゅう</rt></ruby>スカイウォーターショー</h3>
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
            スカイウォーターショーは済州島で見られる公演の中で一番遅くできた中国の技芸とウクライナのダイビング選手たちがダイビングショーで構成された公演です。<br>
        </p><br>
        <p style="font-size:0.2rem; font-size:0.8rem;">
            子供たちと一緒に行っても恋人同士で行っても楽しめる見どころです。
        </p><br>

        <img src="assets/slideImg/skyWatershow1.jpg" width="155px" height="100px">
        <img src="assets/slideImg/skyWatershow2.jpg" width="155px" height="100px">
        <img src="assets/slideImg/skyWatershow3.jpg" width="155px" height="100px">

        <br><br>
        <a href="http://172.30.1.45:8081/PTSD_project/familyTour(japan)skywatershow.jsp"
            style="text-align: center; padding-left: 25%; padding-right: 30%; font-size: 1.25rem; background-color: orange; width: 450px; border-radius: 15%; color: #fff;">
            位置確認</a>
        <br><br><br><br>
        <!--4번게시물 이동  끝 -->

        <a href="#" onclick="toggle3()"
            style="background-color: black; color: #fff; text-align: center; font-size: 1.5rem;" id="popClose">X</a>

    </div>
    <!--
        이제 우정여행 팝업구간


    -->
    <div id="popup4">
        <h1 style="text-align:center;">🥰 <ruby>友情旅行<rt>ゆうじょうりょこう</rt></ruby> 🥰</h1>
        <br><br><br>

        <h3>01. オーソロック·ティー·ミュージアム</h3>
        <br>
        <p>
            <iframe width="500" height="200" src="https://www.youtube.com/embed/BvvXh8AP1Dg"
                title="YouTube video player" frameborder="0"
                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                allowfullscreen></iframe>
        <p style="font-size: 0.2rem;">[출처 유튜브 채널 : 오설록 월차 생활]</p>
        <br>
        <p style="text-align:left ; font-size: 0.8rem;">

            済州西光茶畑と接しているオソルロクティミュージアムは、アモーレパシフィックがお茶と韓国の伝統茶文化を紹介し、普及するために2001年9月に開館した国内初のお茶博物館です。<br>
            その中で楽しむ烏雪緑緑茶アイスクリームを味わいに来てください。
        </p><br>
        <p style="text-align:left ; font-size: 0.8rem;">
            世界的なデザイン建築専門サイトであるデザインブームが選定した世界10大美術館に上がるほど、内外の美しい風景を誇るティーミュージアムは、年間150万人の観覧客が訪れる済州最高の名所であり、文化
            空間です。
        </p><br>
        <img src="assets/slideImg/oseolrok1.jpg" width="155px" height="100px">
        <img src="assets/slideImg/oseolrok2.jpg" width="155px" height="100px">
        <img src="assets/slideImg/oseolrok3.jpg" width="155px" height="100px">
        </p><br>
        <a href="#"
            style="text-align: center; padding-left: 25%; padding-right: 30%; font-size: 1.25rem; background-color: orange; width: 450px; border-radius: 15%; color: #fff;">
            位置確認</a>
        <br><br><br><br><br>
        <!--1번게시물 이동 및 끝 2번게시물시작-->
        <h3>02. イホテウ<ruby>海水浴場<rt>かいすいよくじょう</rt></ruby></h3>
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
            昼も夜も美しい済州の海辺。<br>
            その中でも多くの旅行客に愛される海辺がある。<br>
            ポランマル灯台で済州島の写真を撮るのに良い場所としてよく知られているイホテウ海岸だ。<br>
            赤いポニーと白いポニーは克明に対照的な色味が私たちに異国的な風景を与えてくれる。<br>
            また、イホテウ海辺の街角にはアカシア森が茂り、砂浜の裏には松林が形成されている。<br>
            松林の間にはキャンプ場が設けられており、夏にはテントを持ってキャンプを楽しみに来る人が多い。
        </p><br>

        <p style="text-align:left ; font-size: 0.8rem;">
            이호테우에는 전망휴게소, 주차장, 탈의실 등 다양한 활동을 즐기기에 편리한 시설이 잘 갖춰져 있다.
        </p><br>
        <img src="assets/slideImg/Leehotaewoo1.jpg" width="155px" height="100px">
        <img src="assets/slideImg/Leehotaewoo2.jpg" width="155px" height="100px">
        <img src="assets/slideImg/Leehotaewoo3.jpg" width="155px" height="100px">
        </p><br>
        <a href="#"
            style="text-align: center; padding-left: 25%; padding-right: 30%; font-size: 1.25rem; background-color: orange; width: 450px; border-radius: 15%; color: #fff;">
            位置確認</a>
        <br><br><br><br>
        <!--2번게시물 이동 및 끝 3번게시물시작-->
        <h3>03. <ruby>済州<rt>さいしゅう</rt></ruby>スヌーピーガーデン</h3>
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
            スヌーピーガーデンは、ピーナッツエピソードを自然の中で直接経験しながら人生の意味を知り、自然での休息を通じた慰めを得る場所です。
        </p><br>
        <p style="text-align:left ; font-size: 0.8rem;">
            ピーナッツは雪、雨、風、落ち葉のような自然環境と季節の変化を経験しながら人生の意味を探して成長します。<br>
            済州の自然が与える純粋な価値と各テーマガーデンでピーナッツの様々なエピソードをご体験ください。
        </p><br>
        <img src="assets/slideImg/snoopyGarden1.jpg" width="155px" height="100px">
        <img src="assets/slideImg/snoopyGarden2.jpg" width="155px" height="100px">
        <img src="assets/slideImg/snoopyGarden3.jpg" width="155px" height="100px">

        <br><br>
        <a href="#"
            style="text-align: center; padding-left: 25%; padding-right: 30%; font-size: 1.25rem; background-color: orange; width: 450px; border-radius: 15%; color: #fff;">
            位置確認</a>
        <br><br><br><br>
        <!--3번게시물 이동 및 끝 4번게시물시작-->
        <h3>04. <ruby>光<rt>ひかり</rt></ruby>のバンカー</h3>
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
            旧国家基幹通信施設バンカーを再生して巨匠たちの作品を光と音楽を通じて鑑賞する光のバンカー。<br>
            革新的な展示技法である没入型メディアアートを導入した光のバンカーは、感覚の前端から視覚を越えて芸術に没頭する経験を提供することで、多様な芸術作品を簡単に理解し、ユニークな方法で鑑賞することができる。
            ある。<br>
            これを通じて場所性を蘇らせる都市再生の効果とより多くの人々が文化芸術を体験する文化民主化の役割を遂行することができる。<br>
        </p><br>


        <img src="assets/slideImg/LightBunker1.PNG" width="155px" height="100px">
        <img src="assets/slideImg/LightBunker2.PNG" width="155px" height="100px">
        <img src="assets/slideImg/LightBunker3.PNG" width="155px" height="100px">

        <br><br>
        <a href="http://172.30.1.45:8081/PTSD_project/familyTour(japan)skywatershow.jsp"
            style="text-align: center; padding-left: 25%; padding-right: 30%; font-size: 1.25rem; background-color: orange; width: 450px; border-radius: 15%; color: #fff;">
            位置確認</a>
        <br><br><br><br>
        <!--4번게시물 이동  끝 -->

        <a href="#" onclick="toggle4()"
            style="background-color: black; color: #fff; text-align: center; font-size: 1.5rem;" id="popClose">X</a>

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