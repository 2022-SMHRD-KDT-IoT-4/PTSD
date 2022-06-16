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
				<span class="title">&nbsp;제주 유리의 성</span>
				<br>
				<br>
				<br>
				<!-- 주소 -->
				<span class="title">&nbsp;주소</span>
				<p>
					&nbsp;도로명 - 제주 제주시 한경면 녹차분재로 462<br> &nbsp;지번 - 저지리 3135-1
				</p>
				<br>
				<!-- 소개글 -->
				<span class="title">&nbsp;전화번호</span>
				<p>&nbsp;064-772-7777</p>
				<br>

				<!-- 운영시간 -->
				<span class="title">&nbsp;운영시간</span>
				<p>&nbsp;매일 09 : 00 – 19 : 00 &nbsp;18 : 00 입장 마감</p>

				<br>
				<!--  관광지 가격정보 -->
				<span class="title">&nbsp;가격</span>

				<p>
					&nbsp;성인(일반) 11,000원<br> &nbsp;청소년(일반) 9,000원<br>
					&nbsp;어린이(일반) 8,000원<br> &nbsp;성인(단체-30인이상) 9,000원<br>
					&nbsp;청소년(단체-30인이상) 7,000원<br> &nbsp;어린이(단체-30인이상) 6,000원<br>
					&nbsp;장애인/유공자/경로우대(성인) 9,000원<br> &nbsp;장애인/유공자/경로우대(청소년)
					7,000원<br> &nbsp;장애인/유공자/경로우대(어린이) 6,000원<br>
				</p>

			</div><!-- container끝 태그 -->
		
	<!-- 2번 더마파크 -->
			<div class="container" id="c1" style="display: none"><!-- 작은 화면 -->
				<div class="img">
					<img alt="tourphoto" src="assets/img/familyTour/더마파크.jpg" class="tourimg">
					<img alt="close" src="assets/img/closeicon.png" class="close">
				</div>
				<span class="title">&nbsp;더마파크</span>
				<br>
				<br>
				<br>
				<!-- 주소 -->
				<span class="title">&nbsp;주소</span>
				<p>
					&nbsp;도로명 : 제주 제주시 한림읍 월림7길 155 더마파크<br>
					&nbsp;지번 : 월림리 산8
				</p>
				<br>
				<!-- 소개글 -->
				<span class="title">&nbsp;전화번호</span>
				<p>&nbsp;064-795-8080</p>
				<br>

				<!-- 운영시간 -->
				<span class="title">&nbsp;운영시간</span>
				<p>
				   &nbsp;매일 09 : 00 – 17 : 00(카트 입장마감 16 : 30)<br>
				   &nbsp;매일 09 : 00 – 17 : 00(승마 입장마감 16 : 30)<br>
				   &nbsp;매일 09 : 00 – 17 : 00(동물원 입장마감 17 : 00)<br>
				   &nbsp;매일 09 : 00 – 17 : 00(공연 입장마감 16 : 40)<br>
				   
				</p>

				<br>
				<!--  관광지 가격정보 -->
				<span class="title">&nbsp;가격</span>

				<p>
					&nbsp;공연 관람료(성인) - 20,000원<br>
					&nbsp;공연 관람료(중고생) - 18,000원<br>
					&nbsp;공연 관람료(어린이) - 15,000원<br>
					&nbsp;승마 A코스 - 12,000원<br>
					&nbsp;카트체험 1인승 - 25,000원<br>
					&nbsp;카트체험 2인승 - 35,000원<br>
					
				</p>

			</div><!-- container2끝 태그 -->		
			
			
			
			
			
			
	<!-- 3번 박물관은 살아 있다 -->
			<div class="container" id="c2" style="display: none"><!-- 작은 화면 -->
				<div class="img">
					<img alt="tourphoto" src="assets/img/familyTour/박물관은 살아있다.jpg" class="tourimg">
					<img alt="close" src="assets/img/closeicon.png" class="close">
				</div>
				<span class="title">&nbsp;박물관은 살아 있다</span>
				<br>
				<br>
				<br>
				<!-- 주소 -->
				<span class="title">&nbsp;주소</span>
				<p>
					&nbsp;도로명 : 제주 서귀포시 중문관광로 42<br>
					&nbsp;지번 : 색달동 2629
				</p>
				<br>
				<!-- 소개글 -->
				<span class="title">&nbsp;전화번호</span>
				<p>&nbsp;064-805-0888</p>
				<br>

				<!-- 운영시간 -->
				<span class="title">&nbsp;운영시간</span>
				<p>
				   &nbsp;매일 10 : 00 - 19: 00<br>
				   &nbsp;입장마감(18:00)<br>
				   
				   
				</p>

				<br>
				<!--  관광지 가격정보 -->
				<span class="title">&nbsp;가격</span>

				<p>
					&nbsp;성인 - 14,000원<br>
					&nbsp;청소년/군경 - 13,000원<br>
					&nbsp;어린이 - 12,000원<br>
					&nbsp;경로/장애인/국가유공자 - 12,000원<br>
					
				</p>

			</div><!-- container3끝 태그 -->	
			
			
				
	<!-- 4번 차귀도 해적 잠수함 -->
			<div class="container" id="c3" style="display: none"><!-- 작은 화면 -->
				<div class="img">
					<img alt="tourphoto" src="assets/img/familyTour/차귀도 해적잠수함.jpg" class="tourimg">
					<img alt="close" src="assets/img/closeicon.png" class="close">
				</div>
				<span class="title">&nbsp;차귀도 해적 잠수함</span>
				<br>
				<br>
				<br>
				<!-- 주소 -->
				<span class="title">&nbsp;주소</span>
				<p>
					&nbsp;도로명 : 제주 제주시 한경면 노을해안로 1143<br>
					&nbsp;지번 : 고산리 3616-10
				</p>
				<br>
				<!-- 소개글 -->
				<span class="title">&nbsp;전화번호</span>
				<p>&nbsp;전화번호가 없습니다.</p>
				<br>

				<!-- 운영시간 -->
				<span class="title">&nbsp;운영시간</span>
				<p>
				   &nbsp;운영시간이 안 정해져 있습니다<br>
				   
				   
				</p>

				<br>
				<!--  관광지 가격정보 -->
				<span class="title">&nbsp;가격</span>

				<p>
					&nbsp;관광정보 없음<br>
					
				</p>

			</div><!-- container4끝 태그 -->
			
					
	<!-- 5번 제주 스카이 워터쇼 -->
			<div class="container" id="c4" style="display: none"><!-- 작은 화면 -->
				<div class="img">
					<img alt="tourphoto" src="assets/img/familyTour/제주 스카이워터쇼.jpg" class="tourimg">
					<img alt="close" src="assets/img/closeicon.png" class="close">
				</div>
				<span class="title">&nbsp;제주 스카이 워터쇼</span>
				<br>
				<br>
				<br>
				<!-- 주소 -->
				<span class="title">&nbsp;주소</span>
				<p>
					&nbsp;도로명 : 제주 제주시 구좌읍 번영로 2172-80<br>
					&nbsp;지번 : 제주 제주시 구좌읍 번영로 2172-80
				</p>
				<br>
				<!-- 소개글 -->
				<span class="title">&nbsp;전화번호</span>
				<p>&nbsp;064-782-7870</p>
				<br>

				<!-- 운영시간 -->
				<span class="title">&nbsp;운영시간</span>
				<p>
				   &nbsp;매일 09 : 30 – 14 : 30<br>
				   &nbsp;(12 : 00 – 13 : 00 휴게시간)<br>
				   &nbsp;- 09 : 30 / 11 : 30 / 14 : 30 매일3회 공연<br>
				   
				   
				</p>

				<br>
				<!--  관광지 가격정보 -->
				<span class="title">&nbsp;가격</span>

				<p>
					&nbsp;성인 - 22,000원<br>
					&nbsp;청소년 - 20,000원<br>
					&nbsp;소인 - 16,000원<br>
					&nbsp;제주도민 성인 - 17,000원<br>
					&nbsp;제주도민 청소년 - 16,000원<br>
					&nbsp;제주도민 소인 - 15,000원<br>
					
				</p>

			</div><!-- container5끝 태그 -->	
			
				
	<!-- 6번 성읍민속마을 -->
			<div class="container" id="c5" style="display: none"><!-- 작은 화면 -->
				<div class="img">
					<img alt="tourphoto" src="assets/img/familyTour/성읍민속마을.jpg" class="tourimg">
					<img alt="close" src="assets/img/closeicon.png" class="close">
				</div>
				<span class="title">&nbsp;성읍 민속마을</span>
				<br>
				<br>
				<br>
				<!-- 주소 -->
				<span class="title">&nbsp;주소</span>
				<p>
					&nbsp;지번 : 제주 서귀포시 표선면 성읍리 3294<br>
				</p>
				<br>
				<!-- 소개글 -->
				<span class="title">&nbsp;전화번호</span>
				<p>&nbsp;064-782-7870</p>
				<br>

				<!-- 운영시간 -->
				<span class="title">&nbsp;운영시간</span>
				<p>
				   &nbsp;매일 10:00 - 17:00 문화관광해설사 운영시간,<br>
				   &nbsp;휴게시간12:00~13:00<br>
				   
				   
				</p>

				<br>
				<!--  관광지 가격정보 -->
				<span class="title">&nbsp;가격</span>

				<p>
					&nbsp;입장료 – 무료<br>
					
				</p>

			</div><!-- container6끝 태그 -->		
				
				
	<!-- 7번 일출랜드 -->
			<div class="container" id="c6" style="display: none"><!-- 작은 화면 -->
				<div class="img">
					<img alt="tourphoto" src="assets/img/familyTour/일출랜드.jpg" class="tourimg">
					<img alt="close" src="assets/img/closeicon.png" class="close">
				</div>
				<span class="title">&nbsp;일출랜드</span>
				<br>
				<br>
				<br>
				<!-- 주소 -->
				<span class="title">&nbsp;주소</span>
				<p>
					&nbsp;도로명 : 제주 서귀포시 성산읍 중산간동로 4150-30<br>
					&nbsp;지번 : 삼달리 1010<br>
				</p>
				<br>
				<!-- 소개글 -->
				<span class="title">&nbsp;전화번호</span>
				<p>&nbsp;064-784-2080</p>
				<br>

				<!-- 운영시간 -->
				<span class="title">&nbsp;운영시간</span>
				<p>
				   &nbsp;매일 08 : 30 – 18 : 00<br>
				   &nbsp;- 연중무휴, 일몰 한 시간 전 입장마감,<br>
				   &nbsp;  공예체험 사전예약<br>
				   
				   
				</p>

				<br>
				<!--  관광지 가격정보 -->
				<span class="title">&nbsp;가격</span>

				<p>
					&nbsp;입장료 어른 - 9000원<br>
					&nbsp;입장료 경로 - 8,000원<br>
					&nbsp;입장료 청소년 - 6,000원<br>
					&nbsp;입장료 어린이 - 5,000원<br>
					&nbsp;감귤체험 - 5,000원<br>
					
				</p>

			</div><!-- container7끝 태그 -->	
			
				
	<!-- 8번 성산일출봉 -->
			<div class="container" id="c7" style="display: none"><!-- 작은 화면 -->
				<div class="img">
					<img alt="tourphoto" src="assets/img/familyTour/제주_성산일출봉_1.jpg" class="tourimg">
					<img alt="close" src="assets/img/closeicon.png" class="close">
				</div>
				<span class="title">&nbsp;성산일출봉</span>
				<br>
				<br>
				<br>
				<!-- 주소 -->
				<span class="title">&nbsp;주소</span>
				<p>
					&nbsp;지번 : 제주 서귀포시 성산읍 성산리 1<br>
				</p>
				<br>
				<!-- 소개글 -->
				<span class="title">&nbsp;전화번호</span>
				<p>&nbsp;064-783-0959</p>
				<br>

				<!-- 운영시간 -->
				<span class="title">&nbsp;운영시간</span>
				<p>
				   &nbsp;매일 07 : 00 – 20 : 00<br>
				   &nbsp;3~9월 / 매월 첫째 월요일 휴관<br>
				   
				   
				</p>

				<br>
				<!--  관광지 가격정보 -->
				<span class="title">&nbsp;가격</span>

				<p>
					&nbsp;성인(개인) - 5,000원<br>
					&nbsp;성인(단체) - 4,000원<br>
					&nbsp;청소년, 군인(개인) - 2,500원<br>
					&nbsp;청소년, 군인(단체) - 2,000원<br>
					&nbsp;어린이(개인) - 2,500원<br>
					&nbsp;어린이(단체) - 2,000원<br>
					
				</p>

			</div><!-- container6끝 태그 -->		
		
		
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
			content : '<div> 제주 유리의 성</div>',
			latlng : new kakao.maps.LatLng(33.31463452183118 , 126.27366627388697)
		}, {
			content : '<div>더마파크</div>',
			latlng : new kakao.maps.LatLng(33.354227574700396, 126.2444649248069)
		}, {
			content : '<div>박물관은 살아있다</div>',
			latlng : new kakao.maps.LatLng(33.25497680176304, 126.40885332612669)
		}, {
			content : '<div>차귀도 해적 잠수함</div>',
			latlng : new kakao.maps.LatLng(33.3079926695599, 126.16406624124434 )
		},{
			content : '<div>제주 스카이 워터쇼</div>',
			latlng : new kakao.maps.LatLng(33.42412649954406 , 126.7437627487 )
		},{
			content : '<div>성읍 민속 마을</div>',
			latlng : new kakao.maps.LatLng(33.38457082106541 , 126.8004610826966 )
		},{
			content : '<div>일출랜드</div>',
			latlng : new kakao.maps.LatLng(33.383595334001534 , 126.84144532977302)
		} ,{
			content : '<div>성산일출봉</div>',
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