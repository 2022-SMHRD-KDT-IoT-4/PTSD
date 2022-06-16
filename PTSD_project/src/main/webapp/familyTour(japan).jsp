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
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=091143d21933d5f540a9255827785526">
	
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
</style>



</head>

<body>
	<!-- id c2는 아래 마커를 누르면 클릭이벤트가 발생할 수 있도록 하기 위해 id를 사용했다 -->

	<div class="wrap-container">
			<!-- 사진 -->

		<div id="map">
		
		<!-- 1번 제주 유리의 성 -->
			<div class="container" id="c0" style="display: none"><!-- 작은 화면 -->
				<div class="img">
					<img alt="tourphoto" src="assets/img/familyTour/제주 유리의 성.jpg" class="tourimg">
					<img alt="close" src="assets/img/closeicon.png" class="close">
				</div>
				<span class="title">&nbsp;済州グラスシティ</span>
				<br>
				<br>
				<br>
				<!-- 주소 -->
				<span class="title">&nbsp;住所, 居所.</span>
				<p>
					&nbsp;道路名 - 済州済州市漢慶面緑茶盆栽炉462<br>
					&nbsp;地番 - 低地里3135-1<br>
				</p>
				<br>
				<!-- 소개글 -->
				<span class="title">&nbsp;電話番号.</span>
				<p>&nbsp;064-772-7777</p>
				<br>

				<!-- 운영시간 -->
				<span class="title">&nbsp;営業時間</span>
				<p>
					&nbsp;毎日09:00–19:00<br>
					&nbsp;18:00入場締切
					</p>

				<br>
				<!--  관광지 가격정보 -->
				<span class="title">&nbsp;価格.</span>

				<p>
					&nbsp;大人（一般）11,000ウォン<br>
					&nbsp;青少年（一般）9,000ウォン<br>
					&nbsp;子供（一般）8,000ウォン<br>
					&nbsp;大人（団体-30人以上）9,000ウォン<br>
					&nbsp;青少年（団体-30人以上）7,000ウォン<br>
					&nbsp;子供（団体-30人以上）6,000ウォン<br>
					&nbsp;障害者/有功者/京畿大学（大人）9,000ウォン<br>
					&nbsp;障害者/有功者/京ロー大（青少年）7,000ウォン<br>
					&nbsp;障害者/有功者/京畿大学（子供）6,000ウォン<br>
				</p>

			</div><!-- container끝 태그 -->
		
	<!-- 2번 더마파크 -->
			<div class="container" id="c1" style="display: none"><!-- 작은 화면 -->
				<div class="img">
					<img alt="tourphoto" src="assets/img/familyTour/더마파크.jpg" class="tourimg">
					<img alt="close" src="assets/img/closeicon.png" class="close">
				</div>
				<span class="title">&nbsp;ダマパーク</span>
				<br>
				<br>
				<br>
				<!-- 주소 -->
				<span class="title">&nbsp;住所, 居所.</span>
				<p>
					&nbsp;道路名：済州済州市ハンリム邑ウォリム7ギル155ダマパーク<br>
					&nbsp;地番：ウォリムリ山8
				</p>
				<br>
				<!-- 소개글 -->
				<span class="title">&nbsp;電話番号.</span>
				<p>&nbsp;064-795-8080</p>
				<br>

				<!-- 운영시간 -->
				<span class="title">&nbsp;営業時間</span>
				<p>
				   
				   &nbsp;毎日09:00~17:00(カート入場締切16:30)<br>
				   &nbsp;毎日09:00~17:00(ホースバッククロージング16:30)<br>
				   &nbsp;毎日09:00~17:00(動物園閉店17:00)<br>
				   &nbsp;毎日09:00~17:00(公演終了16:40)<br>
				</p>

				<br>
				<!--  관광지 가격정보 -->
				<span class="title">&nbsp;価格.</span>

				<p>
					&nbsp;公演観覧料（大人） - 20,000ウォン<br>
					&nbsp;公演観覧料（中高生） - 18,000ウォン<br>
					&nbsp;公演観覧料（子供） - 15,000ウォン<br>
					&nbsp;乗馬Aコース - 12,000ウォン<br>
					&nbsp;カート体験1人乗り - 25,000ウォン<br>
					&nbsp;カート体験2人乗り - 35,000ウォン<br>
				</p>

			</div><!-- container2끝 태그 -->		
			
			
			
			
			
			
	<!-- 3번 박물관은 살아 있다 -->
			<div class="container" id="c2" style="display: none"><!-- 작은 화면 -->
				<div class="img">
					<img alt="tourphoto" src="assets/img/familyTour/박물관은 살아있다.jpg" class="tourimg">
					<img alt="close" src="assets/img/closeicon.png" class="close">
				</div>
				<span class="title">&nbsp;博物館は生きている済州</span>
				<br>
				<br>
				<br>
				<!-- 주소 -->
				<span class="title">&nbsp;住所, 居所.</span>
				<p>
					&nbsp;道路名：済州西帰浦市中文観光路42<br>
					&nbsp;地番：サムルドン2629
				</p>
				<br>
				<!-- 소개글 -->
				<span class="title">&nbsp;電話番号.</span>
				<p>&nbsp;064-805-0888</p>
				<br>

				<!-- 운영시간 -->
				<span class="title">&nbsp;営業時間</span>
				<p>
					&nbsp;毎日10:00-19:00<br>
					&nbsp;入場締切(18:00)<br>
				   
				   
				</p>

				<br>
				<!--  관광지 가격정보 -->
				<span class="title">&nbsp;価格.</span>

				<p>
					&nbsp;大人 - 14,000ウォン<br>
					&nbsp;青少年/群衆 - 13,000ウォン<br>
					&nbsp;子供 - 12,000ウォン<br>
					&nbsp;パス/障害者/国家有功者 - 12,000ウォン<br>				
					
				</p>

			</div><!-- container3끝 태그 -->	
			
			
				
	<!-- 4번 차귀도 해적 잠수함 -->
			<div class="container" id="c3" style="display: none"><!-- 작은 화면 -->
				<div class="img">
					<img alt="tourphoto" src="assets/img/familyTour/차귀도 해적잠수함.jpg" class="tourimg">
					<img alt="close" src="assets/img/closeicon.png" class="close">
				</div>
				<span class="title">&nbsp;お茶も海賊潜水艦</span>
				<br>
				<br>
				<br>
				<!-- 주소 -->
				<span class="title">&nbsp;住所, 居所.</span>
				<p>
					&nbsp;道路名：済州済州市ハンギョンミョン夕日海岸路1143<br>
					&nbsp;地番：高山里3616-10
				</p>
				<br>
				<!-- 소개글 -->
				<span class="title">&nbsp;電話番号.</span>
				<p>&nbsp;観光情報なし</p>
				<br>

				<!-- 운영시간 -->
				<span class="title">&nbsp;営業時間</span>
				<p>
				   &nbsp;営業時間は決まっていません。<br>
				   
				   
				</p>

				<br>
				<!--  관광지 가격정보 -->
				<span class="title">&nbsp;価格.</span>

				<p>
					&nbsp;観光情報なし<br>
					
				</p>

			</div><!-- container4끝 태그 -->
			
					
	<!-- 5번 제주 스카이 워터쇼 -->
			<div class="container" id="c4" style="display: none"><!-- 작은 화면 -->
				<div class="img">
					<img alt="tourphoto" src="assets/img/familyTour/제주 스카이워터쇼.jpg" class="tourimg">
					<img alt="close" src="assets/img/closeicon.png" class="close">
				</div>
				<span class="title">&nbsp;済州スカイウォーターショー</span>
				<br>
				<br>
				<br>
				<!-- 주소 -->
				<span class="title">&nbsp;住所, 居所.</span>
				<p>
					&nbsp;道路名：済州済州市口座邑繁栄路2172-80<br>
					&nbsp;地番：済州済州市口座邑繁栄路2172-80<br>
				</p>
				<br>
				<!-- 소개글 -->
				<span class="title">&nbsp;電話番号.</span>
				<p>&nbsp;064-782-7870</p>
				<br>

				<!-- 운영시간 -->
				<span class="title">&nbsp;営業時間</span>
				<p>
				   &nbsp;毎日09:30–14:30(12:00–13:00休憩時間)<br>
				&nbsp;- 09:30/11:30/14:30毎日3回公演
				   
				</p>

				<br>
				<!--  관광지 가격정보 -->
				<span class="title">&nbsp;価格.</span>

				<p>
					&nbsp;Adult 大人 - 22,000ウォン<br>
					&nbsp;イ - 20,000ウォン<br>
					&nbsp;小人 - 16,000ウォン<br>
					&nbsp;済州島民大人 - 17,000ウォン<br>
					&nbsp;済州島民 - 16,000ウォン<br>
					&nbsp;済州島民小人 - 15,000ウォン
					
				</p>

			</div><!-- container5끝 태그 -->	
			
				
	<!-- 6번 성읍민속마을 -->
			<div class="container" id="c5" style="display: none"><!-- 작은 화면 -->
				<div class="img">
					<img alt="tourphoto" src="assets/img/familyTour/성읍민속마을.jpg" class="tourimg">
					<img alt="close" src="assets/img/closeicon.png" class="close">
				</div>
				<span class="title">&nbsp;城邑民俗村</span>
				<br>
				<br>
				<br>
				<!-- 주소 -->
				<span class="title">&nbsp;住所, 居所.</span>
				<p>
					&nbsp;地番：済州西帰浦市表線面城邑里3294<br>
				</p>
				<br>
				<!-- 소개글 -->
				<span class="title">&nbsp;電話番号.</span>
				<p>&nbsp;064-782-7870</p>
				<br>

				<!-- 운영시간 -->
				<span class="title">&nbsp;営業時間</span>
				<p>
				   &nbsp;毎日10:00-17:00文化観光解説者営業時間<br>
				   &nbsp;休憩時間12:00~13:00
				   
				</p>

				<br>
				<!--  관광지 가격정보 -->
				<span class="title">&nbsp;価格.</span>

				<p>
					&nbsp;入場料 – 無料<br>
					
				</p>

			</div><!-- container6끝 태그 -->		
				
				
	<!-- 7번 일출랜드 -->
			<div class="container" id="c6" style="display: none"><!-- 작은 화면 -->
				<div class="img">
					<img alt="tourphoto" src="assets/img/familyTour/일출랜드.jpg" class="tourimg">
					<img alt="close" src="assets/img/closeicon.png" class="close">
				</div>
				<span class="title">&nbsp;日の出ランド</span>
				<br>
				<br>
				<br>
				<!-- 주소 -->
				<span class="title">&nbsp;住所, 居所.</span>
				<p>
					&nbsp;道路名:済州西帰浦市城山邑中山間東路4150-30<br>
					&nbsp;地番:三達里1010
				</p>
				<br>
				<!-- 소개글 -->
				<span class="title">&nbsp;電話番号.</span>
				<p>&nbsp;064-784-2080</p>
				<br>

				<!-- 운영시간 -->
				<span class="title">&nbsp;営業時間</span>
				<p>
					&nbsp;毎日08:30–18:00<br>
					&nbsp;- 年中無休、日没1時間前の入場締め切り<br>
					&nbsp;工芸体験の事前予約<br>	   
				   
				</p>

				<br>
				<!--  관광지 가격정보 -->
				<span class="title">&nbsp;価格.</span>

				<p>
					&nbsp;入場料大人:9000ウォン<br>
					&nbsp;入場料経路-8,000ウォン<br>
					&nbsp;入場料青少年-6,000ウォン<br>
					&nbsp;入場料子供-5,000ウォン<br>
					&nbsp;ミカン体験-5,000ウォン					
				</p>

			</div><!-- container7끝 태그 -->	
			
				
	<!-- 8번 성산일출봉 -->
			<div class="container" id="c7" style="display: none"><!-- 작은 화면 -->
				<div class="img">
					<img alt="tourphoto" src="assets/img/familyTour/제주_성산일출봉_1.jpg" class="tourimg">
					<img alt="close" src="assets/img/closeicon.png" class="close">
				</div>
				<span class="title">&nbsp;城山日出峰</span>
				<br>
				<br>
				<br>
				<!-- 주소 -->
				<span class="title">&nbsp;住所, 居所.</span>
				<p>
					&nbsp;地番:済州西帰浦市城山邑城山里1<br>
				</p>
				<br>
				<!-- 소개글 -->
				<span class="title">&nbsp;電話番号.</span>
				<p>&nbsp;064-783-0959</p>
				<br>

				<!-- 운영시간 -->
				<span class="title">&nbsp;営業時間</span>
				<p>
				   &nbsp;毎日07:00–20:00 <br>
					&nbsp;3~9月/毎月第1月曜日休館
				   
				</p>

				<br>
				<!--  관광지 가격정보 -->
				<span class="title">&nbsp;価格.</span>

				<p>
					&nbsp;観光情報韓国語です。<br>
					&nbsp;大人(個人)-5,000ウォン<br>
					&nbsp;大人(団体)-4,000ウォン<br>
					&nbsp;青少年、軍人(個人)-2,500ウォンです。<br>
					&nbsp;青少年、軍人(団体)-2,000ウォンです。<br>
					&nbsp;子供(個人)-2,500ウォンです。<br>
					&nbsp;子供(団体)-2,000ウォンです。<br>
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
			content : '<div>済州グラスシティ</div>',
			latlng : new kakao.maps.LatLng(33.31463452183118 , 126.27366627388697)
		}, {
			content : '<div>ダマパーク</div>',
			latlng : new kakao.maps.LatLng(33.354227574700396, 126.2444649248069)
		}, {
			content : '<div>博物館は生きている済州</div>',
			latlng : new kakao.maps.LatLng(33.25497680176304, 126.40885332612669)
		}, {
			content : '<div>お茶も海賊潜水艦</div>',
			latlng : new kakao.maps.LatLng(33.3079926695599, 126.16406624124434 )
		},{
			content : '<div>済州スカイウォーターショー</div>',
			latlng : new kakao.maps.LatLng(33.42412649954406 , 126.7437627487 )
		},{
			content : '<div>城邑民俗村</div>',
			latlng : new kakao.maps.LatLng(33.38457082106541 , 126.8004610826966 )
		},{
			content : '<div>日の出ランド</div>',
			latlng : new kakao.maps.LatLng(33.383595334001534 , 126.84144532977302)
		} ,{
			content : '<div>城山日出峰</div>',
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