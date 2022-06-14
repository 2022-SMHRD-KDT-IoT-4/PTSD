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
#container {
	width: 247px;
	height: 430px;
	border-radius: 6px;
	position: absolute;
	left: 7px;/* 옆으로는 247px씩 넘어가게 하면 된다. */
	z-index: 999;
	color: white;
	background-color: rgba(38, 41, 36, 0.7);
	overflow: scroll;
}

#container>p {
	font-size: 13px;
}

.tourimg {
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
	z-index : 10;
	bottom: 118px;
	width: 25px;
	height: 25px;
	left: 215px;
}

#container2 {
	width: 247px;
	height: 430px;
	border-radius: 6px;
	position: absolute;
	left: 274px;/* 옆으로는 247px씩 넘어가게 하면 된다. */
	z-index: 999;
	color: white;
	background-color: rgba(38, 41, 36, 0.7);
	overflow: scroll;
}

#container2>p {
	font-size: 13px;
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

#information{
	width : 270px;
	height : 430px;
	overflow : hidden;
	position: relative;
	bottom: 10px;
}


#left{
	position : absolute;
	z-index : 999999999999;
	left : 9px;
	top : 405px;
	color : white;
	
}

#right{
	position : absolute;
	z-index : 999999999999;
	left : 210px;
	top : 405px;
	color : white;
	
}

</style>



</head>

<body>

	<div class="wrap-container">
			<!-- 사진 -->

		<div id="map">
		
		<ul id="information">
					<!-- <input type="button" value="이전코스"> -->
		
		<li>
		<!-- 1번 제주 유리의 성 -->
			<div id="container"><!-- 작은 화면 -->
				<div class="img">
					<img alt="tourphoto" src="assets/img/더마파크.jpg" class="tourimg">
					<img alt="close" src="assets/img/closeicon.png" class="close">
				</div>
				<span class="title">&nbsp;1번 코스 제주 유리의 성</span>
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
		</li>
			
			
		<li>
		<!-- 2번 -->
			<div id="container2"><!-- 작은 화면 -->
				<div class="img">
					<img alt="tourphoto" src="assets/img/더마파크.jpg" class="tourimg">
					<img alt="close" src="assets/img/closeicon.png" class="close">
				</div>
				<span class="title">&nbsp;1번 코스 제주 유리의 성</span>
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

			</div><!-- container2끝 태그 -->
			
		</li>
			
		
				<div id="left">
					&lt;이전
				</div>
				<div id="right">
					다음&gt;
				</div>
		</ul><!-- information끝태그 -->
	</div>
		<p id="result"></p>
	<!-- map(id) 끝 태그 -->


	<!-- 여기 html이름은 map.html -->
	<!-- 여기서만 url이 작동함 -->
	<!-- http://172.30.1.7:8081/MessageSystem_frontcontroller_command/map.html -->
	<script>
	
	// 이전을 클릭하면 container가 움직이도록 설정
	
	        
	        
	
	$(".close").click(function(){
		$("#container").fadeOut()
		$("#left").fadeOut()
		$("#right").fadeOut()
	})
	
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
			center : new kakao.maps.LatLng(33.31463452183118, 126.27366627388697), // 지도의 중심좌표
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
			resultDiv.innerHTML = message;

		});

		//---------------------------------------------
		// 마커 표시를 위한 변수
		var positions = [ {
			content : '<div>제주유리의 성</div>',
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
			// 마커를 생성합니다
			var marker = new kakao.maps.Marker({
				map : map, // 마커를 표시할 지도
				position : positions[i].latlng
			// 마커의 위치
			});

			// 마커에 표시할 인포윈도우를 생성합니다 
			var infowindow = new kakao.maps.InfoWindow({
				content : positions[i].content
			// 인포윈도우에 표시할 내용
			});

			// 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
			// 이벤트 리스너로는 클로저를 만들어 등록합니다 
			// for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
			kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(
					map, marker, infowindow));
			kakao.maps.event.addListener(marker, 'mouseout',
					makeOutListener(infowindow));
		}

		// 인포윈도우를 표시하는 클로저를 만드는 함수입니다 
		function makeOverListener(map, marker, infowindow) {
		    return function() {
		        infowindow.open(map, marker);
		    };
		}
		
		// 인포윈도우를 닫는 클로저를 만드는 함수입니다 
		function makeOutListener(infowindow) {
		    return function() {
		        infowindow.close();
		    };
		}
			
		
			
			
		
	 $(function(){
	        var $container = $("#container");
	        var $container2 = $("#container2");
	        $("#left").on("click", function(){
	            $container.animate({left: "+=247px"}, 400)
	            
	            
	        });

            $("#right").on("click", function(){
                $container.animate({left: "-=247px"}, 400);
                	
            });
     })
		
	</script>



</body>
</html>