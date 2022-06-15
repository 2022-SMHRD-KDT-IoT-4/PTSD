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
		
		<!-- 제주곶자왈도립공원 -->
			<div class="container" id="c0" style="display: none"><!-- 작은 화면 -->
				<div class="img">
					<img alt="tourphoto" src="assets/img/aloneTour/제주곶자왈도립공원.jpg" class="tourimg">
					<img alt="close" src="assets/img/closeicon.png" class="close">
				</div>
				<span class="title">&nbsp;Gotjawal Provincial Park</span>
				<br>
				<br>
				<br>
				<!-- 주소 -->
				<span class="title">&nbsp;Address</span>
				<p>
					&nbsp;Road name: Daejeong-eup, Seogwipo-si, Jeju-do<br>
					&nbsp;To Educity, 178<br>
					&nbsp;Lot number: Boseong-ri Mountain 1<br>
				</p>
				<br>
				<!-- 전화번호 -->
				<span class="title">&nbsp;Phone number</span>
				<p>&nbsp;064-772-7777</p>
				<br>

				<!-- 운영시간 -->
				<span class="title">&nbsp;Operating hours</span>
				<p>
					&nbsp;Daily 09:00 – 16:00<br>
					&nbsp;Admission time (March to October)<br>
					&nbsp;Daily 09:00 – 18:00 <br>
					&nbsp;Visit Time (March to October)<br>
					&nbsp;Entrance hours from 09:00 to 15:00 <br>
					&nbsp;every day (November to February)<br>
					&nbsp;Daily 09:00 – 17:00 <br>
					&nbsp;Visit Time (November to February)
				</p>

				<br>
				<!--  관광지 가격정보 -->
				<span class="title">&nbsp;Price</span>

				<p>
					&nbsp;Regular - 1,000 won<br>
					&nbsp;Youth - 800 won<br>
					&nbsp;Soldier - 800 won<br>
					&nbsp;Children - 500 won
				</p>

			</div><!-- container끝 태그 -->
		
	<!-- 금오름 -->
			<div class="container" id="c1" style="display: none"><!-- 작은 화면 -->
				<div class="img">
					<img alt="tourphoto" src="assets/img/aloneTour/금오름.jpg" class="tourimg">
					<img alt="close" src="assets/img/closeicon.png" class="close">
				</div>
				<span class="title">&nbsp;Gold oreum</span>
				<br>
				<br>
				<br>
				<!-- 주소 -->
				<span class="title">&nbsp;Address</span>
				<p>
					&nbsp;Mt. 1-1 in Geumak-ri, Hallim-eup, Jeju-si
				</p>
				<br>
				<!-- 전화번호 -->
				<span class="title">&nbsp;Phone number</span>
				<p>&nbsp;064-795-8080</p>
				<br>

				<!-- 운영시간 -->
				<span class="title">&nbsp;Operating hours</span>
				<p>
				   &nbsp;There's no fixed opening time<br>
				</p>

				<br>
				<!--  관광지 가격정보 -->
				<span class="title">&nbsp;Price</span>

				<p>
					&nbsp;The price is not fixed<br>
				</p>

			</div><!-- container2끝 태그 -->		
			
			
			
			
			
			
	<!-- 아르떼뮤지엄 제주 -->
			<div class="container" id="c2" style="display: none"><!-- 작은 화면 -->
				<div class="img">
					<img alt="tourphoto" src="assets/img/aloneTour/아르떼 뮤지엄 제주.jpg" class="tourimg">
					<img alt="close" src="assets/img/closeicon.png" class="close">
				</div>
				<span class="title">&nbsp;Arte Museum, Jeju Island</span>
				<br>
				<br>
				<br>
				<!-- 주소 -->
				<span class="title">&nbsp;Address</span>
				<p>
					&nbsp;Jeju-si Aewol-eup, Jeju-si, 478 won 478<br>
				</p>
				<br>
				<!-- 전화번호 -->
				<span class="title">&nbsp;Phone number</span>
				<p>&nbsp;064-805-0888</p>
				<br>

				<!-- 운영시간 -->
				<span class="title">&nbsp;Operating hours</span>
				<p>
				   &nbsp;10:00 to 20:00 daily<br>
					&nbsp;End of operation 20:00<br>
					&nbsp;Entrance closing 19:00
				</p>

				<br>
				<!--  관광지 가격정보 -->
				<span class="title">&nbsp;Price</span>

				<p>
					&nbsp;You can make a reservation on the website. <br>
					&nbsp;(Expected price: KRW 10,000)<br>
					<a href="https://artemuseum.com/" style="inline-style:none;">Arte Museum, Jeju Island</a>
				</p>

			</div><!-- container3끝 태그 -->	
			
			
				
	<!-- 일구공 스테이지 하우스 -->
			<div class="container" id="c3" style="display: none"><!-- 작은 화면 -->
				<div class="img">
					<img alt="tourphoto" src="assets/img/aloneTour/일구공 스테이지하우스.jpg" class="tourimg">
					<img alt="close" src="assets/img/closeicon.png" class="close">
				</div>
				<span class="title">&nbsp;Ilgugong Stage House</span>
				<br>
				<br>
				<br>
				<!-- 주소 -->
				<span class="title">&nbsp;Address</span>
				<p>
					&nbsp;Sunrise Coastal Road, Gujwa-eup, Jeju-si <br> 
					&nbsp;2361 Stagehouse
				</p>
				<br>
				<!-- 전화번호 -->
				<span class="title">&nbsp;Phone number</span>
				<p>&nbsp;064-782-5114</p>
				<br>

				<!-- 운영시간 -->
				<span class="title">&nbsp;Operating hours</span>
				<p>
				   &nbsp;Everyday 10:00 – 19:30<br>
					&nbsp;Last order 19:00 <br>
				   
				</p>

				<br>
				<!--  관광지 가격정보 -->
				<span class="title">&nbsp;Price</span>

				<p>
					&nbsp;Check it out on the website<br>
					<a href="https://map.naver.com/v5/search/%EC%8A%A4%ED%85%8C%EC%9D%B4%EC%A7%80%ED%95%98%EC%9A%B0%EC%8A%A4/place/1117849994?c=14126703.5353164,3960582.6085365,15,0,0,0,dh&placePath=%3Fentry%253Dbmp">&nbsp;Ilgugong Stage House</a><br>
				</p>

			</div><!-- container4끝 태그 -->
			
					
	<!-- 함덕별장 -->
			<div class="container" id="c4" style="display: none"><!-- 작은 화면 -->
				<div class="img">
					<img alt="tourphoto" src="assets/img/aloneTour/함덕별장.jpg" class="tourimg">
					<img alt="close" src="assets/img/closeicon.png" class="close">
				</div>
				<span class="title">&nbsp;Hamdeok Villa</span>
				<br>
				<br>
				<br>
				<!-- 주소 -->
				<span class="title">&nbsp;Address</span>
				<p>
					&nbsp;519-10 Joham Coastal Road, Jocheon-eup, Jeju-si<br>
				</p>
				<br>
				<!-- 전화번호 -->
				<span class="title">&nbsp;Phone number</span>
				<p>&nbsp;0507-1416-1299</p>
				<br>

				<!-- 운영시간 -->
				<span class="title">&nbsp;Operating hours</span>
				<p>
					&nbsp;Every day 10:00  ~ 19:00<br>
				   &nbsp;End of business at 19:00<br>
				</p>

				<br>
				<!--  관광지 가격정보 -->
				<span class="title">&nbsp;Price</span>

				<p>
					&nbsp;You can find out the price there<br>
				</p>

			</div><!-- container5끝 태그 -->	
			
				
	
				
				
		
		
		
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
			center : new kakao.maps.LatLng(33.28308264134021, 126.2740136133469), // 지도의 중심좌표
			level : 2
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
			content : '<div>Jeju Cape Waldo Provincial Park</div>',
			latlng : new kakao.maps.LatLng(33.28308264134021 , 126.2740136133469)
		}, {
			content : '<div>Gold oreum</div>',
			latlng : new kakao.maps.LatLng(33.354526200895535, 126.30565121970231)
		}, {
			content : '<div>Arte Museum, Jeju Island</div>',
			latlng : new kakao.maps.LatLng(33.3967296, 126.345229)
		}, {
			content : '<div>Ilgugong Stage House</div>',
			latlng : new kakao.maps.LatLng(33.49045155708686, 126.91072039536215 )
		},{
			content : '<div>Hamdeok Villa</div>',
			latlng : new kakao.maps.LatLng(33.54372188885303 , 126.66869806868866 )
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