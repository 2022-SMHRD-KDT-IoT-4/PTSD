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

a:link { 
	color: red; text-decoration: none;
}
a:visited { 
	color: black; text-decoration: none;
}
a:hover { 
	color: blue; text-decoration: underline;
}

</style>



</head>

<body>
	<!-- id c2는 아래 마커를 누르면 클릭이벤트가 발생할 수 있도록 하기 위해 id를 사용했다 -->

	<div class="wrap-container">
			<!-- 사진 -->

		<div id="map">
		
		<!-- 아르떼뮤지엄 제주 -->
			<div class="container" id="c0" style="display: none"><!-- 작은 화면 -->
				<div class="img">
					<img alt="tourphoto" src="assets/img/coupleTour/아르떼 뮤지엄 제주.jpg" class="tourimg">
					<img alt="close" src="assets/img/closeicon.png" class="close">
				</div>
				<span class="title">&nbsp;Arte Museum, Jeju Island</span>
				<br>
				<br>
				<br>
				<!-- 주소 -->
				<span class="title">&nbsp;Address</span>
				<p>
					&nbsp;Road name : Jeju-si Aewol-eup, Jeju-si, 478 won 478<br>
				</p>
				<br>
				<!-- 전화번호 -->
				<span class="title">&nbsp;Phone number</span>
				<p>&nbsp;1899-5008</p>
				<br>

				<!-- 운영시간 -->
				<span class="title">&nbsp;Operating hours</span>
				<p>
					&nbsp;At 20:00 in operation <br>
					&nbsp;End of operation End of operation 20:0<br>
					&nbsp;10:00 to 20:00 daily<br>
					&nbsp;- Entrance closing 19:00
				</p>

				<br>
				<!--  관광지 가격정보 -->
				<span class="title">&nbsp;Price</span>

				<p>
					&nbsp;Adults (20 years of age or older) - KRW 17,000<br>
					&nbsp;Youth with exhibition tickets (14-19 years old) - KRW 13,000<br>
					&nbsp;Children (8 to 13 years old) with exhibition tickets - KRW 10,000<br>
					&nbsp;Children (4 to 7 years old) and the elderly (over 65 years of age), <br>
					&nbsp;Disabled, Distinguished and Soldier - 8,000 won<br>
					&nbsp;Package Ticket Adult (20 years of age or older) - KRW 20,000<br>
					&nbsp;Package ticket youth (14 to 19 years old) - KRW 16,000<br>
					&nbsp;Package Ticket Children (8 to 13 years old) - KRW 13,000<br>
					&nbsp;Package Ticket Children (4 to 7 years old)<br>
					&nbsp;Path (65 years of age or older), <br>
					&nbsp;Disabled, Distinguished and Soldier - 11,000 won<br>
					&nbsp;Infants (36 months or younger) - Free
				</p>

			</div><!-- container끝 태그 -->
		
	<!-- 서귀포 다이브센터 스쿠버다이빙 -->
			<div class="container" id="c1" style="display: none"><!-- 작은 화면 -->
				<div class="img">
					<img alt="tourphoto" src="assets/img/coupleTour/서귀포 다이브 센터.jpg" class="tourimg">
					<img alt="close" src="assets/img/closeicon.png" class="close">
				</div>
				<span class="title">&nbsp;Seogwipo Dive Center Scuba Diving</span>
				<br>
				<br>
				<br>
				<!-- 주소 -->
				<span class="title">&nbsp;Address</span>
				<p>
					&nbsp;Road name : Namwon-eup, Seogwipo-si,<br> 
					&nbsp;Jeju Special Self-Governing Province <br>
					&nbsp;65-13, 2nd floor of Harye Mangjangpo<br>
				</p>
				<br>
				<!-- 전화번호 -->
				<span class="title">&nbsp;Phone number</span>
				<p>&nbsp;0507-1436-8262</p>
				<br>

				<!-- 운영시간 -->
				<span class="title">&nbsp;Operating hours</span>
				<p>
				   &nbsp;Daily - 08:00 – 20:00<br>
				</p>

				<br>
				<!--  관광지 가격정보 -->
				<span class="title">&nbsp;Price</span>

				<p>
					&nbsp;Beach Diving 2 times 100,000 won<br>
					&nbsp;Island diving costs 120,000 won<br>
					&nbsp;150,000 won for 2 boat dives<br>
					&nbsp;Equipment Rental KRW 40,000<br>
				</p>

			</div><!-- container2끝 태그 -->		
			
			
			
			
			
			
	<!-- 윈드1947 테마파크 -->
			<div class="container" id="c2" style="display: none"><!-- 작은 화면 -->
				<div class="img">
					<img alt="tourphoto" src="assets/img/coupleTour/윈드1947 테마파크.jpg" class="tourimg">
					<img alt="close" src="assets/img/closeicon.png" class="close">
				</div>
				<span class="title">&nbsp;Wind 1947 Theme park</span>
				<br>
				<br>
				<br>
				<!-- 주소 -->
				<span class="title">&nbsp;Address</span>
				<p>
					&nbsp;Road name : 78-27 Topyeong Industrial <br>
					&nbsp;Complex Road, Seogwipo, Jeju<br>
				</p>
				<br>
				<!-- 전화번호 -->
				<span class="title">&nbsp;Phone number</span>
				<p>&nbsp;064-733-3500</p>
				<br>

				<!-- 운영시간 -->
				<span class="title">&nbsp;Operating hours</span>
				<p>
					&nbsp;every day<br>
					&nbsp;Cart 10:00-18:30<br>
					&nbsp;18:00 Last Order<br>
					&nbsp;Survival 10:30 – 19:00<br>
					&nbsp;18:30 Last Order Folding<br>
				</p>

				<br>
				<!--  관광지 가격정보 -->
				<span class="title">&nbsp;Price</span>

				<p>
					&nbsp;Basic type for one person (three turns) - KRW 25,000<br>
					&nbsp;For 2 people-Basic type (3 turns) - KRW 35,000<br>
					&nbsp;One person-economical type (4 turns) - KRW 30,000<br>
					&nbsp;Slim type for one person (two turns) - KRW 20,000<br>
					&nbsp;For 2 people-economical type (4 turns) - KRW 40,000<br>
					&nbsp;Slim type for 2 people (2 turns) - KRW 30,000<br>
					&nbsp;Survival-Battle Zone (VIVITAN) - 20,000 won<br>
					&nbsp;Survival - Laser Zone - 10,000 won<br>
					&nbsp;Sniper-Target Shooting - 5,000 won<br>
					&nbsp;Survival - Comprehensive Ticket - 25,000 won
				</p>

			</div><!-- container3끝 태그 -->	
			
			
				
	<!-- 제주도 사려니숲길 -->
			<div class="container" id="c3" style="display: none"><!-- 작은 화면 -->
				<div class="img">
					<img alt="tourphoto" src="assets/img/coupleTour/제주 사려니숲길.jpg" class="tourimg">
					<img alt="close" src="assets/img/closeicon.png" class="close">
				</div>
				<span class="title">&nbsp;Sari Nani Forest Road in Jeju Island</span>
				<br>
				<br>
				<br>
				<!-- 주소 -->
				<span class="title">&nbsp;Address</span>
				<p>
					&nbsp;Road name : Mountain 137-1 Gyorae-ri, <br>
					&nbsp;Jocheon-eup, Jeju-si<br>
				</p>
				<br>
				<!-- 전화번호 -->
				<span class="title">&nbsp;Phone number</span>
				<p>&nbsp;064-900-8800</p>
				<br>

				<!-- 운영시간 -->
				<span class="title">&nbsp;Operating hours</span>
				<p>
				   &nbsp;Daily 09:00 – 17:00<br>
				</p>

				<br>
				<!--  관광지 가격정보 -->
				<span class="title">&nbsp;Price</span>

				<p>
					&nbsp;Admission is free<br>
				</p>

			</div><!-- container4끝 태그 -->
		
		
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
			content : '<div>아르떼뮤지엄 제주</div>',
			latlng : new kakao.maps.LatLng(33.3967296 , 126.345229)
		}, {
			content : '<div>서귀포 다이브센터 스쿠버 다이빙</div>',
			latlng : new kakao.maps.LatLng(33.2593135, 126.639515)
		}, {
			content : '<div>윈드 1947 테마파크</div>',
			latlng : new kakao.maps.LatLng(33.2895307, 126.588665)
		}, {
			content : '<div>제주도 사려니숲길</div>',
			latlng : new kakao.maps.LatLng(33.4077104, 126.642567)
		}];
	  	
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
			
		
	
			
			
		
		
	</script>



</body>
</html>