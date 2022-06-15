<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>tourSlide</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
<link rel="stylesheet" type="text/css"
	href="assets/slideImg/swiper.min.css">
<link rel="stylesheet" type="text/css"
	href="assets/css/styleTourWhite.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
	<script>
           $(document).ready(function () {
            $(".loader").css("left","352px");

             });
           


    </script>
	<div class="swiper-container" id="blur">
		<div class="swiper-wrapper">
			<!--여기서부터-->
			<div class="swiper-slide">
				<a href="#" onclick="toggle1()"><div class="imgBx">
						<img src="assets/slideImg/aloneTour.jpg">
					</div>
					<div class="details">
						<h3>
							a Solo Tour<span></span>
						</h3>
					</div></a>
				<script type="text/javascript">
                function toggle1(){
                    var blur=document.getElementById('blur');
                    blur.classList.toggle('active');
                    var popup = document.getElementById('popup1');
                    popup.classList.toggle('active');
                    
                }
            </script>
			</div>
			<!--여기까지가 한장-->
			<!--여기서부터-->
			<div class="swiper-slide">
				<a href="#" onclick="toggle2()"><div class="imgBx">
						<img src="assets/slideImg/coupleTour.jpg" width="250px"
							height="199.61px">
					</div>
					<div class="details">
						<h3>
							Couple Tour<br>
							<span></span>
						</h3>
					</div></a>
				<script type="text/javascript">
                function toggle2(){
                    var blur=document.getElementById('blur');
                    blur.classList.toggle('active');
                    var popup = document.getElementById('popup2');
                    popup.classList.toggle('active');
                    
                }
            </script>
			</div>
			<!--여기까지가 한장-->
			<!--여기서부터-->
			<div class="swiper-slide">
				<a href="#" onclick="toggle3()"><div class="imgBx">
						<img src="assets/slideImg/familyTour.jpg" width="250px"
							height="199.61px">
					</div>
					<div class="details">
						<h3>
							Family Tour<br>
							<span></span>
						</h3>
					</div></a>
				<script type="text/javascript">
                function toggle3(){
                    var blur=document.getElementById('blur');
                    blur.classList.toggle('active');
                    var popup = document.getElementById('popup3');
                    popup.classList.toggle('active');
                    
                }
            </script>
			</div>
			<!--여기까지가 한장-->
			<!--여기서부터-->
			<div class="swiper-slide">
				<a href="#" onclick="toggle4()"><div class="imgBx">
						<img src="assets/slideImg/friendTour.jpg" width="250px"
							height="199.61px">
					</div>
					<div class="details">
						<h3>Tour with Friends</h3>
						<br>
						<span></span>
						</h3>
					</div></a>
				<script type="text/javascript">
                function toggle4(){
                    var blur=document.getElementById('blur');
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
			<a href="whiteMain.jsp"><span id="homeTour"></span></a> <a
				href="koreaTourWhite.jsp"><span id="koreaTour"></span></a> <a
				href="englishTourWhite.jsp"><span id="englishTour"></span></a> <a
				href="chinaTourWhite.jsp"><span id="chinaTour"></span></a> <a
				href="japanTourWhite.jsp"><span id="japanTour"></span></a>
		</div>
		<div class="circle">
			<div class="loader">
				<span></span>
			</div>
		</div>
	</div>
	<!--여기서부터 게시글-->
	<div id="popup1">
		<h1 style="text-align: center;">😎 a Solo Tour 😎</h1>
		<br>
		<br>
		<br>

		<h3>01. Jeju Dongmun Market</h3>
		<br>
		<p>
			<iframe width="500" height="200"
				src="https://www.youtube.com/embed/OAYe8wL75Bg"
				title="YouTube video player" frameborder="0"
				allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
				allowfullscreen></iframe>
		<p style="font-size: 0.2rem;">[출처 유튜브 채널 : 제주동문시장]</p>
		<br>
		<p style="text-align: left; font-size: 0.8rem;">
			Dongmun Traditional Market is located in the center of Jeju Island,
			and is the largest and most historic permanent traditional market.<br>
			As it boasts a huge scale, it is a place where locals and travelers
			continue to walk throughout the year.
		</p>
		<br>
		<p style="text-align: left; font-size: 0.8rem;">
			You can enjoy the beauty of the market, which contains the lives of
			merchants in Jeju Island during the day, and the beauty of the night
			market full of food at night.<br> It sells all kinds of products
			such as Jeju's specialties, souvenirs, clothes, and food, so it can
			be said to be Jeju's everything merchant.<br> It is also close
			to Jeju Airport, so it is good to stop by and shop before leaving.
		</p>
		<br> <img src="assets/slideImg/jejuDomoonmarket1.jpg"
			width="163px" height="100px"> <img
			src="assets/slideImg/jejuDomoonmarket2.jpg" width="163px"
			height="100px"> <img
			src="assets/slideImg/jejuDomoonmarket3.jpg" width="163px"
			height="100px">
		</p>
		<br> <a href="#"
			style="text-align: center; padding-left: 25%; padding-right: 30%; font-size: 1.25rem; background-color: orange; width: 450px; border-radius: 15%; color: #fff;">
			Touch to view location</a> <br>
		<br>
		<br>
		<br>
		<br>
		<!--1번게시물 이동 및 끝 2번게시물시작-->
		<h3>02. Seongsan Ilchulbong</h3>
		<br>
		<p>
			<iframe width="500" height="200"
				src="https://www.youtube.com/embed/_PPfmnt06NQ"
				title="YouTube video player" frameborder="0"
				allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
				allowfullscreen></iframe>
		</p>
		<p style="font-size: 0.2rem;">[출처 유튜브 채널 : 무인항공]</p>
		<br>
		<p style="text-align: left; font-size: 0.8rem;">
			Seongsan Ilchulbong Peak is a water-based volcano created when magma
			erupts from the water unlike other oreum Volcanoes in Jeju Island.<br>
			As the hot magma emitted during volcanic activity met the cold
			seawater, volcanic ash became sticky due to a lot of moisture, and
			Seongsan Ilchulbong Peak was piled up as it formed a layer.
		</p>
		<br>

		<p style="text-align: left; font-size: 0.8rem;">
			When you reach the top, you can see a crater with a width of 80,000
			pyeong, and grass such as silver grass grows inside in a concave
			shape like a bowl.<br> There are 99 even peaks (rocks) around
			the crater.<br> It was named Seongsan because it looked like a
			huge castle, and Ilchulbong because the sunrise was spectacular.
		</p>
		<br>
		<p style="text-align: left; font-size: 0.8rem;">
			The steep stairway to the top of Seongsan Ilchulbong Peak is short of
			breath, but it takes 20 minutes to reach the top.<br> At the
			top, the wide crater and the scenery of the sea behind it give a
			magnificent feeling completely different from other oreum in Jeju.<br>
			Since ancient times, the sunrise view from the top of this place has
			been said to be the best among the 10 scenic spots in Yeongju (Jeju's
			scenic spot), and the Seongsan Sunrise Festival is held on December
			31 every year.
		</p>
		<br> <img src="assets/slideImg/sungSanmountain1.jpg"
			width="163px" height="100px"> <img
			src="assets/slideImg/sungSanmountain2.jpg" width="163px"
			height="100px"> <img src="assets/slideImg/sungSanmountain3.jpg"
			width="163px" height="100px">
		</p>
		<br> <a href="#"
			style="text-align: center; padding-left: 25%; padding-right: 30%; font-size: 1.25rem; background-color: orange; width: 450px; border-radius: 15%; color: #fff;">
			Touch to view location</a> <br>
		<br>
		<br>
		<br>
		<!--2번게시물 이동 및 끝 3번게시물시작-->
		<h3>03. Udo Island</h3>
		<br>
		<p>
			<iframe width="500" height="200"
				src="https://www.youtube.com/embed/-4qZnIDzmPk"
				title="YouTube video player" frameborder="0"
				allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
				allowfullscreen></iframe>
		</p>
		<p style="font-size: 0.2rem;">[출처 유튜브 채널 : korea drone
			travle(드론여행)]</p>
		<br>
		<p style="text-align: left; font-size: 0.8rem;">
			Udo Island was called Soseom or Sheseom Island from an early age
			because it resembled the shape of a cow lying down.<br> As a
			tourist destination with gentle slopes, jade soil, abundant fishing
			grounds, and eight scenic spots of Udo, it is a representative annex
			island of Jeju that attracts about 2 million tourists a year.
		</p>
		<br>
		<p style="text-align: left; font-size: 0.8rem;">
			Udo Island can take a boat from Seongsan Port and Jongdal Port, and
			it takes about 15 minutes from wherever it departs.<br> The
			length of the island is 3.8km and the circumference is 17km. It takes
			three to four hours to walk nonstop, but most tourists take a bus,
			bicycle, or mini electric car to visit famous tourist attractions.<br>
			<br> It takes about 3-4 hours to visit 1-2 famous tourist
			attractions such as Gummeole Beach, Udobong Peak, Hongjodan
			Mysterious Beach, and Hagosudong Beach, and to relax in cafes or
			restaurants.<br> If you want to enjoy Udo Island in a relaxed
			manner, it is also good to take the morning boat and come out in the
			afternoon boat and stay in Udo Island all day long. However, the
			operation of the ship may vary depending on the weather, so for
			planning the Udo travel schedule, Weather conditions must be checked.
		</p>
		<br> <img src="assets/slideImg/jejuWoodo1.jpg" width="163px"
			height="100px"> <img src="assets/slideImg/jejuWoodo2.jpg"
			width="163px" height="100px"> <img
			src="assets/slideImg/jejuWoodo3.jpg" width="163px" height="100px">

		<br>
		<br> <a href="#"
			style="text-align: center; padding-left: 25%; padding-right: 30%; font-size: 1.25rem; background-color: orange; width: 450px; border-radius: 15%; color: #fff;">
			Touch to view location</a> <br>
		<br>
		<br>
		<br>
		<!--3번게시물 이동 및 끝 4번게시물시작-->
		<h3>04. Aewol HanDam Coastal Walk</h3>
		<br>
		<p>
			<iframe width="500" height="200"
				src="https://www.youtube.com/embed/AHBqjnHp85Y"
				title="YouTube video player" frameborder="0"
				allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
				allowfullscreen></iframe>
		</p>
		<p style="font-size: 0.2rem;">[출처 유튜브 채널 : Walk Time HakuNam]</p>
		<br>
		<p style="text-align: left; font-size: 0.8rem;">
			Handam Coastal Walk, also called Gwakgeum Olle-gil, is a trail built
			along the coast from Aewol Port to Gwakjwamul Beach. It is beautiful
			because it is in harmony with the surrounding scenery. The total
			length is 1.2 km, and the waves right next to it You can walk along
			the splashing coastal road.<br> It is also one of the 31 "Hidden
			Scenic Views of Jeju City" announced by Jeju City in 2009 by
			selecting 31 representative places in Jeju City in addition to
			existing tourist attractions. <br>
		</p>
		<br>

		<p style="text-align: left; font-size: 0.8rem;">
			Various strange types of rocks created by solidifying lava attract
			attention, and the winding road along the coast made of black rocks
			adds fun to the walking path.<br> Another attractive point of
			this place is that it is located in the west of Jeju Island, so you
			can enjoy the beautiful sunset well.
		</p>
		<br> <img src="assets/slideImg/jejuAewolhandam1.jpg"
			width="163px" height="100px"> <img
			src="assets/slideImg/jejuAewolhandam2.jpg" width="163px"
			height="100px"> <img src="assets/slideImg/jejuAewolhandam3.jpg"
			width="163px" height="100px"> <br>
		<br> <a href="#"
			style="text-align: center; padding-left: 25%; padding-right: 30%; font-size: 1.25rem; background-color: orange; width: 450px; border-radius: 15%; color: #fff;">
			Touch to view location</a> <br>
		<br>
		<br>
		<br>
		<!--4번게시물 이동  끝 -->

		<a href="#" onclick="toggle1()"
			style="background-color: black; color: #fff; text-align: center; font-size: 1.5rem;"
			id="popClose">X</a>
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
		<h1 style="text-align: center;">🥰 a couple tour 🥰</h1>
		<br>
		<br>
		<br>

		<h3>01. Arte Museum, Jeju Island</h3>
		<br>
		<p>
			<iframe width="500" height="200"
				src="https://www.youtube.com/embed/athlev1JU-E"
				title="YouTube video player" frameborder="0"
				allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
				allowfullscreen></iframe>
		<p style="font-size: 0.2rem;">[출처 유튜브 채널 : d'strict]</p>
		<br>
		<p style="text-align: left; font-size: 0.8rem;">

			Art Museum, Korea's largest media art exhibition hall!<br> The
			Art Museum is the largest immersive media art exhibition hall in
			Korea, presented by d'strict, a world-class digital design company
			famous for COEX'WAVE'.<br>
		</p>
		<br>
		<p style="text-align: left; font-size: 0.8rem;">With a floor area
			of 1,400 pyeong used as a speaker manufacturing plant and a
			magnificent space of up to 10M, 10 colorful media art exhibitions
			created by light and sound are held!</p>
		<br> <img src="assets/slideImg/aretesium1.PNG" width="163px"
			height="100px"> <img src="assets/slideImg/aretesium2.PNG"
			width="163px" height="100px"> <img
			src="assets/slideImg/aretesium3.PNG" width="163px" height="100px">
		</p>
		<br> <a href="#"
			style="text-align: center; padding-left: 25%; padding-right: 30%; font-size: 1.25rem; background-color: orange; width: 450px; border-radius: 15%; color: #fff;">
			Touch to view location</a> <br>
		<br>
		<br>
		<br>
		<br>
		<!--1번게시물 이동 및 끝 2번게시물시작-->
		<h3>02. Dive Center Scuba Diving</h3>
		<br>
		<p>
			<iframe width="500" height="200"
				src="https://www.youtube.com/embed/bO7nLBZ4z9g?start=17"
				title="YouTube video player" frameborder="0"
				allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
				allowfullscreen></iframe>
		</p>
		<p style="font-size: 0.2rem;">[출처 유튜브 채널 : 천선희]</p>
		<br>
		<p style="text-align: left; font-size: 0.8rem;">
			Welcome to Seogwipo Dive Center, which puts safety first.<br>
			Seogwipo Dive Center is an authorized PADI education center and
			provides systematic and safe education in accordance with the PADI
			education program, a globally recognized scuba training education
			institution.<br> We run fun diving programs that can be enjoyed
			on Beomseom Island in Munseom Island, and experience diving programs
			that people who have no diving experience can participate in.<br>
		</p>
		<br>

		<p style="text-align: left; font-size: 0.8rem;">Enjoy a beautiful
			underwater trip in Jeju at Seogwipo Dive Center</p>
		<br> <img src="assets/slideImg/seogwipoDive1.PNG" width="163px"
			height="100px"> <img src="assets/slideImg/seogwipoDive2.PNG"
			width="163px" height="100px"> <img
			src="assets/slideImg/seogwipoDive3.PNG" width="163px" height="100px">
		</p>
		<br> <a href="#"
			style="text-align: center; padding-left: 25%; padding-right: 30%; font-size: 1.25rem; background-color: orange; width: 450px; border-radius: 15%; color: #fff;">
			Touch to view location</a> <br>
		<br>
		<br>
		<br>
		<!--2번게시물 이동 및 끝 3번게시물시작-->
		<h3>03. Wind 1947</h3>
		<br>
		<p>
			<iframe width="500" height="200"
				src="https://www.youtube.com/embed/q9RxnQYXOXI"
				title="YouTube video player" frameborder="0"
				allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
				allowfullscreen></iframe>
		</p>
		<p style="font-size: 0.2rem;">[출처 유튜브 채널 : 윈드1947]</p>
		<br>
		<p style="text-align: left; font-size: 0.8rem;">Wind 1947 Cart
			Theme Park, which is 30,000 pyeong with the southern scenery of
			Hallasan Mountain, is Jeju's only circuit-type racing cart with the
			longest course in Asia.</p>
		<br>
		<p style="text-align: left; font-size: 0.8rem;">
			또한 서바이벌 체험장이 마련되어 있습니다.<br> We operate the only BBTAN indoor
			survival center in Jeju on the first floor and the laser survival
			experience center on the second floor.
		</p>
		<br> <img src="assets/slideImg/Kart1.jpg" width="163px"
			height="100px"> <img src="assets/slideImg/Kart2.jpg"
			width="163px" height="100px"> <img
			src="assets/slideImg/Kart3.jpg" width="163px" height="100px"> <br>
		<br> <a href="#"
			style="text-align: center; padding-left: 25%; padding-right: 30%; font-size: 1.25rem; background-color: orange; width: 450px; border-radius: 15%; color: #fff;">
			Touch to view location</a> <br>
		<br>
		<br>
		<br>
		<!--3번게시물 이동 및 끝 4번게시물시작-->
		<h3>04. Saryuni Forest Road in Jeju Island</h3>
		<br>
		<p>
			<iframe width="500" height="200"
				src="https://www.youtube.com/embed/1ebfgWr4fzo"
				title="YouTube video player" frameborder="0"
				allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
				allowfullscreen></iframe>
		</p>
		<p style="font-size: 0.2rem;">[출처 유튜브 채널 : 베네필름_베감독]</p>
		<br>
		<p style="text-align: left; font-size: 0.8rem;">
			Bizarim-ro is a beautiful road from Pyeongdae-ri, Gujwa-eup, Jeju-si
			to Bonggae-dong, and Sasaeni Forest Road is a forest road that passes
			through Mulcha Oreum in Gyorae-ri, Jocheon-eup, Jeju-si to Sasaeni
			Oreum in Hannam-eup, Seogwipo-si.<br> The total length is about
			15km, and the average altitude of the entire forest road is 550m.<br>
		</p>
		<br>
		<p style="text-align: left; font-size: 0.8rem;">
			Walking along this forest path while breathing clean air is known to
			relieve stress and improve intestinal and cardiopulmonary functions,
			making it a popular attraction for many people.<br> In July
			2009, Jeju-si selected and announced 31 representative places in
			Jeju-si in addition to existing tourist attractions.
		</p>
		<br> <img src="assets/slideImg/saruniForest1.jpg" width="163px"
			height="100px"> <img src="assets/slideImg/saruniForest2.jpg"
			width="163px" height="100px"> <img
			src="assets/slideImg/saruniForest3.jpg" width="163px" height="100px">

		<br>
		<br> <a href="#"
			style="text-align: center; padding-left: 25%; padding-right: 30%; font-size: 1.25rem; background-color: orange; width: 450px; border-radius: 15%; color: #fff;">
			Touch to view location</a> <br>
		<br>
		<br>
		<br>
		<!--4번게시물 이동  끝 -->

		<a href="#" onclick="toggle2()"
			style="background-color: black; color: #fff; text-align: center; font-size: 1.5rem;"
			id="popClose">X</a>

	</div>
	<!--
        이제 가족여행 팝업구간


    -->
	<div id="popup3">
		<h1 style="text-align: center;">👨‍👩‍👧 Family Tour 👨‍👩‍👧</h1>
		<br>
		<br>
		<br>

		<h3>01. Castle of Jeju Yuri</h3>
		<br>
		<p>
			<iframe width="500" height="200"
				src="https://www.youtube.com/embed/BCghxP6FY7w"
				title="YouTube video player" frameborder="0"
				allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
				allowfullscreen></iframe>
		<p style="font-size: 0.2rem;">[출처 유튜브 채널 : 제주에딧]</p>
		<br>
		<p style="text-align: left; font-size: 0.8rem;">It is a travel
			destination where the bling-bling glass craft works are combined with
			Gotjawal, the primeval forest of Jeju Island, and nature and works
			become one.</p>
		<br>
		<p style="text-align: left; font-size: 0.8rem;"></p>
		<br> <img src="assets/slideImg/glassCastle1.jpg" width="163px"
			height="100px"> <img src="assets/slideImg/glassCastle2.jpg"
			width="163px" height="100px"> <img
			src="assets/slideImg/glassCastle3.jpg" width="163px" height="100px">
		</p>
		<br> <a href="http://172.30.1.7:8081/PTSD_project/familyTour(english).jsp"
			style="text-align: center; padding-left: 25%; padding-right: 30%; font-size: 1.25rem; background-color: orange; width: 450px; border-radius: 15%; color: #fff;">
			Touch to view location</a> <br>
		<br>
		<br>
		<br>
		<br>
		<!--1번게시물 이동 및 끝 2번게시물시작-->
		<h3>02. Derma Park</h3>
		<br>
		<p>
			<iframe width="500" height="200"
				src="https://www.youtube.com/embed/bLhv9mj6L1o"
				title="YouTube video player" frameborder="0"
				allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
				allowfullscreen></iframe>
		</p>
		<p style="font-size: 0.2rem;">[출처 유튜브 채널 : 여행버튼 Tourbutton]</p>
		<br>
		<p style="text-align: left; font-size: 0.8rem;">
			Derma Park is one of the performances you can see in Jeju with a
			spectacular horse performance of the life story of King Gwanggaeto.<br>

		</p>
		<br>

		<p style="text-align: left; font-size: 0.8rem;">You can experience
			horseback riding during your trip to Jeju Island, and it provides
			interesting attractions.</p>
		<br> <img src="assets/slideImg/dermaPark1.jpg" width="163px"
			height="100px"> <img src="assets/slideImg/dermaPark2.jpg"
			width="163px" height="100px"> <img
			src="assets/slideImg/dermaPark3.jpg" width="163px" height="100px">
		</p>
		<br> <a href="http://172.30.1.7:8081/PTSD_project/familyTour(english).jsp"
			style="text-align: center; padding-left: 25%; padding-right: 30%; font-size: 1.25rem; background-color: orange; width: 450px; border-radius: 15%; color: #fff;">
			Touch to view location</a> <br>
		<br>
		<br>
		<br>
		<!--2번게시물 이동 및 끝 3번게시물시작-->
		<h3>03. The Museum Is Alive in Jeju</h3>
		<br>
		<p>
			<iframe width="500" height="200"
				src="https://www.youtube.com/embed/sXerXNbjAW4?start=26"
				title="YouTube video player" frameborder="0"
				allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
				allowfullscreen></iframe>
		</p>
		<p style="font-size: 0.2rem;">[출처 유튜브 채널 : V]</p>
		<br>
		<p style="text-align: left; font-size: 0.8rem;">
			The museum is a good travel destination to take pictures with the
			living trick art in the background.<br> It's a place where the
			novelty of the trick art world becomes an interesting life shot when
			you go into a painting and direct it. <br>
		</p>
		<br>
		<p style="text-align: left; font-size: 0.8rem;">It is a travel
			destination where you can enjoy it even if you go with children or
			with lovers.</p>
		<br> <img src="assets/slideImg/museumAlive1.jpg" width="163px"
			height="100px"> <img src="assets/slideImg/museumAlive2.jpg"
			width="163px" height="100px"> <img
			src="assets/slideImg/museumAlive3.jpg" width="163px" height="100px">

		<br>
		<br> <a href="http://172.30.1.7:8081/PTSD_project/familyTour(english).jsp"
			style="text-align: center; padding-left: 25%; padding-right: 30%; font-size: 1.25rem; background-color: orange; width: 450px; border-radius: 15%; color: #fff;">
			Touch to view location</a> <br>
		<br>
		<br>
		<br>
		<!--3번게시물 이동 및 끝 4번게시물시작-->
		<h3>04. Jeju Sky Water Show</h3>
		<br>
		<p>
			<iframe width="500" height="200"
				src="https://www.youtube.com/embed/3nSpNa1sCUg?start=26"
				title="YouTube video player" frameborder="0"
				allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
				allowfullscreen></iframe>
		</p>
		<p style="font-size: 0.2rem;">[출처 유튜브 채널 : 투어패스]</p>
		<br>
		<p style="text-align: left; font-size: 0.8rem;">
			The Sky Water Show is the latest performance to be seen in Jeju
			Island, with Chinese art and Ukrainian divers diving shows<br>
		</p>
		<br>
		<p style="font-size: 0.2rem; font-size: 0.8rem;">It's something to
			enjoy even if you go with kids or with lovers</p>
		<br> <img src="assets/slideImg/skyWatershow1.jpg" width="163px"
			height="100px"> <img src="assets/slideImg/skyWatershow2.jpg"
			width="163px" height="100px"> <img
			src="assets/slideImg/skyWatershow3.jpg" width="163px" height="100px">

		<br>
		<br> <a href="http://172.30.1.7:8081/PTSD_project/familyTour(english).jsp"
			style="text-align: center; padding-left: 25%; padding-right: 30%; font-size: 1.25rem; background-color: orange; width: 450px; border-radius: 15%; color: #fff;">
			Touch to view location</a> <br>
		<br>
		<br>
		<br>
		<!--4번게시물 이동  끝 -->

		<a href="#" onclick="toggle3()"
			style="background-color: black; color: #fff; text-align: center; font-size: 1.5rem;"
			id="popClose">X</a>

	</div>
	<!--
        이제 우정여행 팝업구간


    -->
	<div id="popup4">
		<h1 style="text-align: center;">🥰 Tour with Friends 🥰</h1>
		<br>
		<br>
		<br>

		<h3>01. Oseolok Tea Museum</h3>
		<br>
		<p>
			<iframe width="500" height="200"
				src="https://www.youtube.com/embed/BvvXh8AP1Dg"
				title="YouTube video player" frameborder="0"
				allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
				allowfullscreen></iframe>
		<p style="font-size: 0.2rem;">[출처 유튜브 채널 : 오설록 월차 생활]</p>
		<br>
		<p style="text-align: left; font-size: 0.8rem;">

			Oseolok Tea Museum, which borders the Seogwang Tea Field in Jeju, is
			the first tea museum in Korea opened in September 2001 by
			AmorePacific to introduce and promote tea and traditional Korean tea
			culture.<br> Come and taste the Osullok green tea ice cream that
			you enjoy in it.
		</p>
		<br>
		<p style="text-align: left; font-size: 0.8rem;">The T-Museum,
			which boasts beautiful scenery inside and outside the world's top 10
			art museums selected by Design Boom, a global design and
			architectural site, is Jeju's best attraction and culture with 1.5
			million visitors a year It's a space.</p>
		<br> <img src="assets/slideImg/oseolrok1.jpg" width="163px"
			height="100px"> <img src="assets/slideImg/oseolrok2.jpg"
			width="163px" height="100px"> <img
			src="assets/slideImg/oseolrok3.jpg" width="163px" height="100px">
		</p>
		<br> <a href="#"
			style="text-align: center; padding-left: 25%; padding-right: 30%; font-size: 1.25rem; background-color: orange; width: 450px; border-radius: 15%; color: #fff;">
			Touch to view location</a> <br>
		<br>
		<br>
		<br>
		<br>
		<!--1번게시물 이동 및 끝 2번게시물시작-->
		<h3>02. Ihotou Beach</h3>
		<br>
		<p>
			<iframe width="500" height="200"
				src="https://www.youtube.com/embed/EfVivWs58ZU"
				title="YouTube video player" frameborder="0"
				allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
				allowfullscreen></iframe>
		</p>
		<p style="font-size: 0.2rem;">[출처 유튜브 채널 : Visit Jeju - 제주관광공사 공식
			유튜브 채널]</p>
		<br>
		<p style="text-align: left; font-size: 0.8rem;">
			Jeju beach with beautiful day and night.<br> Among them, there
			is a beach that is loved by many tourists.<br> It is a
			well-known place to take pictures of Jeju Island with a pony
			lighthouse.<br> Red ponies and white ponies have a stark
			contrasting color that gives us an exotic landscape.<br> In
			addition, acacia forests are thick on the streets of Ihotou Beach,
			and pine forests are formed behind the sandy beach.<br> There is
			a camping site between the pine forests, so many people come to enjoy
			camping with tents in summer.
		</p>
		<br>

		<p style="text-align: left; font-size: 0.8rem;">The hotel is well
			equipped with convenient facilities to enjoy various activities such
			as an observation rest area, parking lot, and changing room.</p>
		<br> <img src="assets/slideImg/Leehotaewoo1.jpg" width="163px"
			height="100px"> <img src="assets/slideImg/Leehotaewoo2.jpg"
			width="163px" height="100px"> <img
			src="assets/slideImg/Leehotaewoo3.jpg" width="163px" height="100px">
		</p>
		<br> <a href="#"
			style="text-align: center; padding-left: 25%; padding-right: 30%; font-size: 1.25rem; background-color: orange; width: 450px; border-radius: 15%; color: #fff;">
			Touch to view location</a> <br>
		<br>
		<br>
		<br>
		<!--2번게시물 이동 및 끝 3번게시물시작-->
		<h3>03. Jeju Snoopy Garden</h3>
		<br>
		<p>
			<iframe width="500" height="200"
				src="https://www.youtube.com/embed/esFp56nFi0Y?start=47"
				title="YouTube video player" frameborder="0"
				allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
				allowfullscreen></iframe>
		</p>
		<p style="font-size: 0.2rem;">[출처 유튜브 채널 : JITM 2022]</p>
		<br>
		<p style="text-align: left; font-size: 0.8rem;">Snoopy Garden is a
			place where you learn the meaning of life by experiencing the Peanuts
			episode directly in nature and gain comfort through rest in nature.</p>
		<br>
		<p style="text-align: left; font-size: 0.8rem;">
			Peanuts friends find and grow the meaning of life by experiencing
			changes in the natural environment and seasons such as snow, rain,
			wind, and fallen leaves.<br> Experience the pure value of Jeju
			nature and various episodes of Peanuts in each theme garden.
		</p>
		<br> <img src="assets/slideImg/snoopyGarden1.jpg" width="163px"
			height="100px"> <img src="assets/slideImg/snoopyGarden2.jpg"
			width="163px" height="100px"> <img
			src="assets/slideImg/snoopyGarden3.jpg" width="163px" height="100px">

		<br>
		<br> <a href="#"
			style="text-align: center; padding-left: 25%; padding-right: 30%; font-size: 1.25rem; background-color: orange; width: 450px; border-radius: 15%; color: #fff;">
			Touch to view location</a> <br>
		<br>
		<br>
		<br>
		<!--3번게시물 이동 및 끝 4번게시물시작-->
		<h3>04. Bunker of Light</h3>
		<br>
		<p>
			<iframe width="500" height="200"
				src="https://www.youtube.com/embed/sScyV1fM9Ss"
				title="YouTube video player" frameborder="0"
				allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
				allowfullscreen></iframe>
		</p>
		<p style="font-size: 0.2rem;">[출처 유튜브 채널 : 빛의 벙커 Bunker des
			Lumières]</p>
		<br>
		<p style="text-align: left; font-size: 0.8rem;">
			Bunker of Light, which plays Bunker, a communication facility during
			the old state period, and appreciates the works of masters through
			music.<br> Introducing immersive media art, an innovative
			exhibition technique, the Bunker of Light provides an experience of
			immersing in art beyond vision from the front of the senses, so you
			can easily understand and appreciate various artworks in a different
			way There is.<br> Through this, it is possible to play the role
			of cultural democratization in which more people experience culture
			and art and the effect of urban regeneration that revitalizes the
			place.<br>
		</p>
		<br> <img src="assets/slideImg/LightBunker1.PNG" width="163px"
			height="100px"> <img src="assets/slideImg/LightBunker2.PNG"
			width="163px" height="100px"> <img
			src="assets/slideImg/LightBunker3.PNG" width="163px" height="100px">

		<br>
		<br> <a href="#"
			style="text-align: center; padding-left: 25%; padding-right: 30%; font-size: 1.25rem; background-color: orange; width: 450px; border-radius: 15%; color: #fff;">
			Touch to view location</a> <br>
		<br>
		<br>
		<br>
		<!--4번게시물 이동  끝 -->

		<a href="#" onclick="toggle4()"
			style="background-color: black; color: #fff; text-align: center; font-size: 1.5rem;"
			id="popClose">X</a>

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
            slideShadows : true,
          },
          pagination: {
            el: '.swiper-pagination',
          },
        });
      </script>
</body>
</html>