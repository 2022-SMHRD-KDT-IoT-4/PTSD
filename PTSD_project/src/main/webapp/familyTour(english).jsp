<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>클릭 이벤트 등록하기</title>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<!-- 여기 html이름은 map.html -->
<!-- 여기서만 url이 작동함 -->
<!-- http://172.30.1.7:8081/MessageSystem_frontcontroller_command/map.html -->
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=030f60b0195c26d884376b7d726bf7a3">
	
</script>

<!-- 스크롤 스타일 없애는 js -->
<!-- <script src="assets/js/map.js"></script>-->
<style>
.wrap-container {
	width: 800px;
	height: 480px;
}

#map {
	width: 100%;
	height: 100%;
	overflow: auto;
}

/* 여기는 관광 페이지 정보를 띄워주는 화면 */
.container {
	width: 247px;
	height: 430px;
	border-radius: 6px;
	position: absolute;
	left: 7px;
	bottom: 43px;
	z-index: 999;
	color: white;
	background-color: rgba(38, 41, 36, 0.7);
	overflow: scroll;
}

.container>p {
	font-size: 13px;
}

.container>.img>.tourimg {
	width: 100%;
	height: 120px;
	border-top-left-radius: 6px;
	border-top-right-radius: 6px;
}

.title {
	text-align: center;
	font-size: large;
	font-size: bold;
}

.close {
	position: relative;
	bottom: 118px;
	width: 25px;
	height: 25px;
	left: 215px;
}

/* scroll 기능은 살리고 스타일 만 없애는 것*/
body {
	-ms-overflow-style: none;
}

::-webkit-scrollbar {
	display: none;
}

/*특정 부분 스크롤바 없애기*/
.box {
	-ms-overflow-style: none;
}

.box::-webkit-scrollbar {
	display: none;
}

#homeIcon{
	position : absolute;
	z-index : 9999999999999;
	width : 50px;
	hegiht : 50px;
	left : 44%;
	display : block;
	top : 3%;
}
</style>



</head>

<body>
	<!-- id c2는 아래 마커를 누르면 클릭이벤트가 발생할 수 있도록 하기 위해 id를 사용했다 -->

	<div class="wrap-container">
			<!-- 사진 -->

		<div id="map">
		
		<a href="test"><img alt="homeIcon" src="assets/slideImg/homeIconDay.png" id="homeIcon"></a>
		
		<!-- 1번 제주 유리의 성 -->
			<div class="container" id="c0" style="display: none"><!-- 작은 화면 -->
				<div class="img">
					<img alt="tourphoto" src="assets/img/familyTour/제주 유리의 성.jpg" class="tourimg">
					<img alt="close" src="assets/img/closeicon.png" class="close">
				</div>
				<span class="title">&nbsp;Jeju Glass City</span>
				<br>
				<br>
				<br>
				<!-- 주소 -->
				<span class="title">&nbsp;Address</span>
				<p>
					&nbsp;Road name - 462, Greenchabonjae-ro,<br>
					&nbsp;Hangyeong-myeon, Jeju-si, Jeju-si<br>
					&nbsp;Jibun - Jersey 3135-1<br>
				</p>
				<br>
				<!-- 소개글 -->
				<span class="title">&nbsp;Phone number</span>
				<p>&nbsp;064-772-7777</p>
				<br>

				<!-- 운영시간 -->
				<span class="title">&nbsp;Operating hours</span>
				<p>&nbsp;Every day 09:00 – 19:00<br>
					&nbsp;18:00 Entrance closed
					</p>

				<br>
				<!--  관광지 가격정보 -->
				<span class="title">&nbsp;Price</span>

				<p>
					&nbsp;Adult (regular) 11,000 won<br>
					&nbsp;General (regular) 9,000 won<br>
					&nbsp;Children (regular) 8,000 won<br>
					&nbsp;Adults (30 people or more) 9,000 won<br>
					&nbsp;Target (30 people or more) 7,000 won<br>
					&nbsp;Children (more than 30 people) 6,000 won<br>
					&nbsp;People of merit / Senior citizens (adults) 9,000 won<br>
					&nbsp;People of Merit/Senior Seniors (Youth) 7,000 won<br>
					&nbsp;People of merit / Senior citizens (children) 6,000 won<br>
				</p>

			</div><!-- container끝 태그 -->
		
	<!-- 2번 더마파크 -->
			<div class="container" id="c1" style="display: none"><!-- 작은 화면 -->
				<div class="img">
					<img alt="tourphoto" src="assets/img/familyTour/더마파크.jpg" class="tourimg">
					<img alt="close" src="assets/img/closeicon.png" class="close">
				</div>
				<span class="title">&nbsp;Derma Park</span>
				<br>
				<br>
				<br>
				<!-- 주소 -->
				<span class="title">&nbsp;Address</span>
				<p>
					&nbsp;Road name: Derma Park, 155 Wolim 7-gil, Hallim-eup, Jeju-si, Jeju-do<br>
					&nbsp;Lot number: Wollim-ri Mountain 8
				</p>
				<br>
				<!-- 소개글 -->
				<span class="title">&nbsp;Phone number</span>
				<p>&nbsp;064-795-8080</p>
				<br>

				<!-- 운영시간 -->
				<span class="title">&nbsp;Operating hours</span>
				<p>
				   &nbsp;Every day 09:00–17:00 (Entrance deadline for carts 16:30)<br>
				   &nbsp;Every day 09:00 – 17:00 (Horseback closing 16:30)<br>
				   &nbsp;Every day 09:00 – 17:00 (zoo closing 17:00)<br>
				   &nbsp;Every day 09:00 – 17:00 (Performance closing 16:40)<br>
				   
				</p>

				<br>
				<!--  관광지 가격정보 -->
				<span class="title">&nbsp;Price</span>

				<p>
					&nbsp;Performance fee (adult) - 20,000 won<br>
					&nbsp;Performance admission fee (middle and high school students) - 18,000 won<br>
					&nbsp;Performance fee (children) - 15,000 won<br>
					&nbsp;Horse Riding Course A - 12,000 won<br>
					&nbsp;Kart Experience 1 Seater - 25,000 won<br>
					&nbsp;Kart experience for 2 people - 35,000 won<br>
					
				</p>

			</div><!-- container2끝 태그 -->		
			
			
			
			
			
			
	<!-- 3번 박물관은 살아 있다 -->
			<div class="container" id="c2" style="display: none"><!-- 작은 화면 -->
				<div class="img">
					<img alt="tourphoto" src="assets/img/familyTour/박물관은 살아있다.jpg" class="tourimg">
					<img alt="close" src="assets/img/closeicon.png" class="close">
				</div>
				<span class="title">&nbsp;The Museum is Alive Jeju</span>
				<br>
				<br>
				<br>
				<!-- 주소 -->
				<span class="title">&nbsp;Address</span>
				<p>
					&nbsp;Road name: 42 Jungmungwangwang-ro, Seogwipo-si, Jeju-do<br>
					&nbsp;Lot number: 2629 Saekdal-dong
				</p>
				<br>
				<!-- 소개글 -->
				<span class="title">&nbsp;Phone number</span>
				<p>&nbsp;064-805-0888</p>
				<br>

				<!-- 운영시간 -->
				<span class="title">&nbsp;Operating hours</span>
				<p>
				   &nbsp;Every day between 10:00 and 19:00<br>
				   &nbsp;Entrance closing (18:00)<br>
				   
				   
				</p>

				<br>
				<!--  관광지 가격정보 -->
				<span class="title">&nbsp;Price</span>

				<p>
					&nbsp;Adult - KRW 14,000<br>
					&nbsp;Youth/Military and Police - 13,000 won<br>
					&nbsp;Children - 12,000 won<br>
					&nbsp;Seniors/disabled people/people of national merit - 12,000 won<br>
					
				</p>

			</div><!-- container3끝 태그 -->	
			
			
				
	<!-- 4번 차귀도 해적 잠수함 -->
			<div class="container" id="c3" style="display: none"><!-- 작은 화면 -->
				<div class="img">
					<img alt="tourphoto" src="assets/img/familyTour/차귀도 해적잠수함.jpg" class="tourimg">
					<img alt="close" src="assets/img/closeicon.png" class="close">
				</div>
				<span class="title">&nbsp;Chagwido pirate submarine</span>
				<br>
				<br>
				<br>
				<!-- 주소 -->
				<span class="title">&nbsp;Address</span>
				<p>
					&nbsp;Road name: 1143, Noeulhaean-ro, Hangyeong-myeon, Jeju-si, Jeju-si<br>
					&nbsp;Lot number: 3616-10, Gosan-ri
				</p>
				<br>
				<!-- 소개글 -->
				<span class="title">&nbsp;Phone number</span>
				<p>&nbsp;I don't have a phone number.</p>
				<br>

				<!-- 운영시간 -->
				<span class="title">&nbsp;Operating hours</span>
				<p>
				   &nbsp;There's no fixed opening hours<br>
				   
				   
				</p>

				<br>
				<!--  관광지 가격정보 -->
				<span class="title">&nbsp;Price</span>

				<p>
					&nbsp;No tourist information<br>
					
				</p>

			</div><!-- container4끝 태그 -->
			
					
	<!-- 5번 제주 스카이 워터쇼 -->
			<div class="container" id="c4" style="display: none"><!-- 작은 화면 -->
				<div class="img">
					<img alt="tourphoto" src="assets/img/familyTour/제주 스카이워터쇼.jpg" class="tourimg">
					<img alt="close" src="assets/img/closeicon.png" class="close">
				</div>
				<span class="title">&nbsp;Jeju Sky Water Show</span>
				<br>
				<br>
				<br>
				<!-- 주소 -->
				<span class="title">&nbsp;Address</span>
				<p>
					&nbsp;Road name: 2172-80, Beonyeong-ro, Gujwa-eup, Jeju-si, Jeju-si<br>
					&nbsp;Lot number: 2172-80, Beonyeong-ro, Gujwa-eup, Jeju-si, Jeju-do
				</p>
				<br>
				<!-- 소개글 -->
				<span class="title">&nbsp;Phone number</span>
				<p>&nbsp;064-782-7870</p>
				<br>

				<!-- 운영시간 -->
				<span class="title">&nbsp;Operating hours</span>
				<p>
				   &nbsp;Every day 09:30 – 14:30<br>
				   &nbsp;(12:00 – 13:00 break time)<br>
				   &nbsp;- 09:30/11:30/14:30<br>
				   &nbsp;Performance 3 times daily<br>
				   
				   
				</p>

				<br>
				<!--  관광지 가격정보 -->
				<span class="title">&nbsp;Price</span>

				<p>
					&nbsp;Adult - KRW 22,000<br>
					&nbsp;Lee - 20,000 won<br>
					&nbsp;Child - 16,000 won<br>
					&nbsp;Jeju Islander Adult - KRW 17,000<br>
					&nbsp;Jeju-do residents - 16,000 won<br>
					&nbsp;Children of Jeju-do - 15,000 won<br>
					
				</p>

			</div><!-- container5끝 태그 -->	
			
				
	<!-- 6번 성읍민속마을 -->
			<div class="container" id="c5" style="display: none"><!-- 작은 화면 -->
				<div class="img">
					<img alt="tourphoto" src="assets/img/familyTour/성읍민속마을.jpg" class="tourimg">
					<img alt="close" src="assets/img/closeicon.png" class="close">
				</div>
				<span class="title">&nbsp;Seongeup Folk Village</span>
				<br>
				<br>
				<br>
				<!-- 주소 -->
				<span class="title">&nbsp;Address</span>
				<p>
					&nbsp;Lot number: 3294, Seongeup-ri, Pyoseon-myeon, Seogwipo-si, Jeju-do<br>
				</p>
				<br>
				<!-- 소개글 -->
				<span class="title">&nbsp;Phone number</span>
				<p>&nbsp;064-782-7870</p>
				<br>

				<!-- 운영시간 -->
				<span class="title">&nbsp;Operating hours</span>
				<p>
				   &nbsp;10:00-17:00 daily operation hours of culture<br>
				   &nbsp;and tourism commentators and rest <br>
				   &nbsp;hours 12:00-13:00<br>
				   
				   
				</p>

				<br>
				<!--  관광지 가격정보 -->
				<span class="title">&nbsp;Price</span>

				<p>
					&nbsp;Admission – Free<br>
					
				</p>

			</div><!-- container6끝 태그 -->		
				
				
	<!-- 7번 일출랜드 -->
			<div class="container" id="c6" style="display: none"><!-- 작은 화면 -->
				<div class="img">
					<img alt="tourphoto" src="assets/img/familyTour/일출랜드.jpg" class="tourimg">
					<img alt="close" src="assets/img/closeicon.png" class="close">
				</div>
				<span class="title">&nbsp;Sunrise Land</span>
				<br>
				<br>
				<br>
				<!-- 주소 -->
				<span class="title">&nbsp;Address</span>
				<p>
					&nbsp;Road name: 4150-30<br>
					&nbsp;Jungsan-dong-ro, Seongsan-eup, Seogwipo-si, Jeju-do<br>
					&nbsp;The lot number: Samdal-ri 1010<br>
				</p>
				<br>
				<!-- 소개글 -->
				<span class="title">&nbsp;Phone number</span>
				<p>&nbsp;064-784-2080</p>
				<br>

				<!-- 운영시간 -->
				<span class="title">&nbsp;Operating hours</span>
				<p>
				   &nbsp;Everyday 08:30 – 18:00<br>
				   &nbsp;- Open all year round, <br>
				   &nbsp;close an hour before sunset,<br>
				   &nbsp;and make advance<br>
				   &nbsp;reservations for craft experiences<br>
				   
				   
				</p>

				<br>
				<!--  관광지 가격정보 -->
				<span class="title">&nbsp;Price</span>

				<p>
					&nbsp;Admission fee is 9,000 won for adults<br>
					&nbsp;Admission route - 8,000 won<br>
					&nbsp;Admission fee for teenagers - 6,000 won<br>
					&nbsp;Admission fee for children - 5,000 won<br>
					&nbsp;Tangerine experience - 5,000 won<br>
					
				</p>

			</div><!-- container7끝 태그 -->	
			
				
	<!-- 8번 성산일출봉 -->
			<div class="container" id="c7" style="display: none"><!-- 작은 화면 -->
				<div class="img">
					<img alt="tourphoto" src="assets/img/familyTour/제주_성산일출봉_1.jpg" class="tourimg">
					<img alt="close" src="assets/img/closeicon.png" class="close">
				</div>
				<span class="title">&nbsp;Seongsan Ilchulbong Tuff Cone</span>
				<br>
				<br>
				<br>
				<!-- 주소 -->
				<span class="title">&nbsp;Address</span>
				<p>
					&nbsp;Lot number: 1 Seongsan-ri, Seongsan-eup,<br>
					&nbsp;Seogwipo-si, Jeju-do<br>
				</p>
				<br>
				<!-- 소개글 -->
				<span class="title">&nbsp;Phone number</span>
				<p>&nbsp;064-783-0959</p>
				<br>

				<!-- 운영시간 -->
				<span class="title">&nbsp;Operating hours</span>
				<p>
				   &nbsp;Every day 07:00 – 20:00 <br>
				   &nbsp;March to September<br>
				   &nbsp;Closed on the first Monday of every month<br>
				   
				   
				</p>

				<br>
				<!--  관광지 가격정보 -->
				<span class="title">&nbsp;Price</span>

				<p>
					
					&nbsp;Tourism information in Korean<br>
					&nbsp;Adult (individual) - 5,000 won<br>
					&nbsp;Adult (group) - 4,000 won<br>
					&nbsp;Youth, soldiers (individual) - 2,500 won<br>
					&nbsp;Youth, soldiers (group) - 2,000 won<br>
					&nbsp;Children (individual) - 2,500 won<br>
					&nbsp;Children (Group) - 2,000 won<br>
				</p>

			</div><!-- container8끝 태그 -->		
		
		
		</div>
		<p id="result"></p>
	</div>
	<!-- map(id) 끝 태그 -->


	<!-- 여기 html이름은 map.html -->
	<!-- 여기서만 url이 작동함 -->
	<!-- http://172.30.1.7:8081/MessageSystem_frontcontroller_command/map.html -->
	<script>
	$(".close").click(function(){
		$(".container").fadeOut()
	})
	
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
			center : new kakao.maps.LatLng(33.36168, 126.556351), // 지도의 중심좌표
			level : 10
		// 지도의 확대 레벨
		};
		

		var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

		// 지도에 클릭 이벤트를 등록합니다
		// 지도를 클릭하면 마지막 파라미터로 넘어온 함수를 호출합니다
		kakao.maps.event.addListener(map, 'click', function(mouseEvent) {

			// 클릭한 위도, 경도 정보를 가져옵니다 
			var latlng = mouseEvent.latLng;

			var message = '클릭한 위치의 위도는 ' + latlng.getLat() + ' 이고, ';
			message += '경도는 ' + latlng.getLng() + ' 입니다';

			var resultDiv = document.getElementById('result');
			

		});
		
		

		//---------------------------------------------
		// 마커 표시를 위한 변수
		var positions = [ {
			content : '<div>Jeju Glass City</div>',
			latlng : new kakao.maps.LatLng(33.31463452183118 , 126.27366627388697)
		}, {
			content : '<div>Derma Park</div>',
			latlng : new kakao.maps.LatLng(33.354227574700396, 126.2444649248069)
		}, {
			content : '<div>The Museum is Alive Jeju</div>',
			latlng : new kakao.maps.LatLng(33.25497680176304, 126.40885332612669)
		}, {
			content : '<div>Chagwido pirate submarine</div>',
			latlng : new kakao.maps.LatLng(33.3079926695599, 126.16406624124434 )
		},{
			content : '<div>Jeju Sky Water Show</div>',
			latlng : new kakao.maps.LatLng(33.42412649954406 , 126.7437627487 )
		},{
			content : '<div>Seongeup Folk Village</div>',
			latlng : new kakao.maps.LatLng(33.38457082106541 , 126.8004610826966 )
		},{
			content : '<div>Sunrise Land</div>',
			latlng : new kakao.maps.LatLng(33.383595334001534 , 126.84144532977302)
		} ,{
			content : '<div>Seongsan Ilchulbong Tuff Cone</div>',
			latlng : new kakao.maps.LatLng(33.46004495163662  , 126.94107473564132 )
		}  ];
	  	
		for (var i = 0; i < positions.length; i++) {
			makeMap(positions[i], i);
		}
		
		function makeMap(positions, i){
			// 마커를 생성합니다
			var marker = new kakao.maps.Marker({
				map : map, // 마커를 표시할 지도
				position : positions.latlng
			// 마커의 위치
			});

			// 마커에 표시할 인포윈도우를 생성합니다 
			var infowindow = new kakao.maps.InfoWindow({
				content : positions.content
			// 인포윈도우에 표시할 내용
			});			
			// 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
			// 이벤트 리스너로는 클로저를 만들어 등록합니다 
			// for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
			/* kakao.maps.event.addListener(marker, 'click', makeOverListener(
					map, marker, infowindow)); */
			/* kakao.maps.event.addListener(marker, 'mouseout',
					makeOutListener(infowindow)); */
			kakao.maps.event.addListener(marker, 'click', function() {
			      // 마커 위에 인포윈도우를 표시합니다
			      if($("#c"+i).css("display")=="none"){
			    	  $("#c"+i).css("display","block");
			    	  
			      }else{
			    	  $("#c"+i).css("display","none");
			      }
			      
			      
			      infowindow.open(map, marker);  
			});
			
		}
		// 인포윈도우를 표시하는 클로저를 만드는 함수입니다 
		/* function makeOverListener(map, marker, infowindow) {
		    return function() {
		        infowindow.open(map, marker);
		    };
		} */
		
	/* 	// 인포윈도우를 닫는 클로저를 만드는 함수입니다 
		function makeOutListener(infowindow) {
		    return function() {
		        infowindow.close();
		    };
		} */
			
		
	
	$("#glasscastle").click(function(){
		$(".container").fadeIn()
		
		
	})
			
			
		
		
	</script>



</body>
</html>