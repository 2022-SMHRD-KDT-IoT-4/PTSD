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
				<span class="title">&nbsp;济州玻璃城</span>
				<br>
				<br>
				<br>
				<!-- 주소 -->
				<span class="title">&nbsp;地址 ，住所 。</span>
				<p>
					&nbsp;道路名 - 済州済州市漢慶面緑茶盆栽炉462<br>
					&nbsp;地番 - 低地里3135-1<br>
				</p>
				<br>
				<!-- 전화번호 -->
				<span class="title">&nbsp;电话号码</span>
				<p>&nbsp;064-772-7777</p>
				<br>

				<!-- 운영시간 -->
				<span class="title">&nbsp;营业时间</span>
				<p>
					&nbsp;每天09:00 – 19:00<br>
					&nbsp;18:00 入场结束
					</p>

				<br>
				<!--  관광지 가격정보 -->
				<span class="title">&nbsp;价格 ，价钱 。</span>

				<p>
					&nbsp;成人（普通）11,000韩元<br>
					&nbsp;青少年（一般）9,000韩元<br>
					&nbsp;儿童（普通）8,000韩元<br>
					&nbsp;大人（30人以上团体）9,000韩元<br>
					&nbsp;青少年（30人以上团体）7,000韩元<br>
					&nbsp;儿童（30人以上团体）6,000韩元<br>
					&nbsp;残疾人/功勋/老年人（成人）9,000韩元<br>
					&nbsp;残疾人/有功者/老年人（年轻人）7,000韩元<br>
					&nbsp;残疾人/功劳/老年人（儿童）6,000韩元
				</p>

			</div><!-- container끝 태그 -->
		
	<!-- 2번 더마파크 -->
			<div class="container" id="c1" style="display: none"><!-- 작은 화면 -->
				<div class="img">
					<img alt="tourphoto" src="assets/img/familyTour/더마파크.jpg" class="tourimg">
					<img alt="close" src="assets/img/closeicon.png" class="close">
				</div>
				<span class="title">&nbsp;真皮公园</span>
				<br>
				<br>
				<br>
				<!-- 주소 -->
				<span class="title">&nbsp;住所, 居所.</span>
				<p>
					&nbsp;道路名称​​：济州特别自治道济州市翰林邑<br>
					&nbsp;155 Wolim 7-gil Derma Park<br>
					&nbsp;批号：月林里山8
				</p>
				<br>
				<!-- 전화번호 -->
				<span class="title">&nbsp;电话号码</span>
				<p>&nbsp;064-795-8080</p>
				<br>

				<!-- 운영시간 -->
				<span class="title">&nbsp;営業時間</span>
				<p>
				   
				 	&nbsp;每日09:00-17:00(大车入场截止时间16:30)<br>
					&nbsp;每日上午9:00-17:00(马背休息16:30)<br>
					&nbsp;每天09:00-17:00(动物园休息17:00)<br>
					&nbsp;每日上午09:00-17:00(表演结束16:40)<br>
				</p>

				<br>
				<!--  관광지 가격정보 -->
				<span class="title">&nbsp;价格 ，价钱 。</span>

				<p>
					&nbsp;演出入场费（成人） - 20,000韩元<br>
					&nbsp;演出入场费（初高中生） - KRW 18,000<br>
					&nbsp;演出费（儿童） - 15,000韩元<br>
					&nbsp;骑马课程 A - 12,000 韩元<br>
					&nbsp;卡丁车体验 1 人 - 25,000 韩元<br>
					&nbsp;2人卡丁车体验 - 35,000韩元
				</p>

			</div><!-- container2끝 태그 -->		
			
			
			
			
			
			
	<!-- 3번 박물관은 살아 있다 -->
			<div class="container" id="c2" style="display: none"><!-- 작은 화면 -->
				<div class="img">
					<img alt="tourphoto" src="assets/img/familyTour/박물관은 살아있다.jpg" class="tourimg">
					<img alt="close" src="assets/img/closeicon.png" class="close">
				</div>
				<span class="title">&nbsp;博物馆是活着的济州岛</span>
				<br>
				<br>
				<br>
				<!-- 주소 -->
				<span class="title">&nbsp;地址 ，住所 。</span>
				<p>
					&nbsp;道路名称​​：济州特别自治道西归浦市中门旺旺路42<br>
					&nbsp;批号：2629 Saekdal-dong
				</p>
				<br>
				<!-- 전화번호 -->
				<span class="title">&nbsp;电话号码</span>
				<p>&nbsp;064-805-0888</p>
				<br>

				<!-- 운영시간 -->
				<span class="title">&nbsp;营业时间</span>
				<p>
				    &nbsp;每日 10 : 00 - 19 : 00<br>
					&nbsp;入场截止(18:00)<br>
				   
				</p>

				<br>
				<!--  관광지 가격정보 -->
				<span class="title">&nbsp;价格 ，价钱 。</span>

				<p>
					&nbsp;成人 - 14,000 韩元<br>
					&nbsp;青年/军警 - 13,000韩元<br>
					&nbsp;儿童 - 12,000 韩元<br>s
					&nbsp;老年人/残疾人/国家有功者 - 12,000韩元				
					
				</p>

			</div><!-- container3끝 태그 -->	
			
			
				
	<!-- 4번 차귀도 해적 잠수함 -->
			<div class="container" id="c3" style="display: none"><!-- 작은 화면 -->
				<div class="img">
					<img alt="tourphoto" src="assets/img/familyTour/차귀도 해적잠수함.jpg" class="tourimg">
					<img alt="close" src="assets/img/closeicon.png" class="close">
				</div>
				<span class="title">&nbsp;Chagwido海盗潜艇</span>
				<br>
				<br>
				<br>
				<!-- 주소 -->
				<span class="title">&nbsp;地址 ，住所 。</span>
				<p>
					
					&nbsp;道路名称​​：济州市济州市汉庆面诺尔海岸路1143<br>
					&nbsp;批号：Gosan-ri 3616-10<br>
				</p>
				<br>
				<!-- 전화번호 -->
				<span class="title">&nbsp;电话号码</span>
				<p>&nbsp;没有电话号码。</p>
				<br>

				<!-- 운영시간 -->
				<span class="title">&nbsp;营业时间</span>
				<p>
				   &nbsp;运营时间还没有定下来<br>
				   
				   
				</p>

				<br>
				<!--  관광지 가격정보 -->
				<span class="title">&nbsp;价格 ，价钱 。</span>

				<p>
					&nbsp;无旅游信息<br>
					
				</p>

			</div><!-- container4끝 태그 -->
			
					
	<!-- 5번 제주 스카이 워터쇼 -->
			<div class="container" id="c4" style="display: none"><!-- 작은 화면 -->
				<div class="img">
					<img alt="tourphoto" src="assets/img/familyTour/제주 스카이워터쇼.jpg" class="tourimg">
					<img alt="close" src="assets/img/closeicon.png" class="close">
				</div>
				<span class="title">&nbsp;济州天空水秀</span>
				<br>
				<br>
				<br>
				<!-- 주소 -->
				<span class="title">&nbsp;地址 ，住所 。</span>
				<p>
					&nbsp;道路名称​​：济州市济州市旧左邑繁荣路2172-80<br>
					&nbsp;批号：济州特别自治道济州市旧左邑繁荣路2172-80
				</p>
				<br>
				<!-- 전화번호 -->
				<span class="title">&nbsp;电话号码</span>
				<p>&nbsp;064-782-7870</p>
				<br>

				<!-- 운영시간 -->
				<span class="title">&nbsp;营业时间</span>
				<p>
					&nbsp;每天09:30 – 14:30 (12:00 – 13:00 休息时间)<br>
					&nbsp;- 09:30 / 11:30 / 14:30 每天3场演出
				   
				</p>

				<br>
				<!--  관광지 가격정보 -->
				<span class="title">&nbsp;价格 ，价钱 。</span>

				<p>
					&nbsp;成人 - 22,000 韩元<br>
					&nbsp;李 - 20,000韩元<br>
					&nbsp;儿童 - 16,000韩元<br>
					&nbsp;济州岛民成人 - KRW 17,000<br>
					&nbsp;济州岛居民 - 16,000韩元<br>
					&nbsp;济州儿童 - 15,000韩元
					
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
				<span class="title">&nbsp;地址 ，住所 。</span>
				<p>
					&nbsp;批号：济州特别自治道西归浦市表善面城邑里3294<br>
				</p>
				<br>
				<!-- 전화번호 -->
				<span class="title">&nbsp;电话号码</span>
				<p>&nbsp;064-782-7870</p>
				<br>

				<!-- 운영시간 -->
				<span class="title">&nbsp;营业时间</span>
				<p>
				   &nbsp;每天10:00 - 17:00 文化观光解说员运营时间，<br>
				   &nbsp;休息时间12:00~13:00
				</p>

				<br>
				<!--  관광지 가격정보 -->
				<span class="title">&nbsp;价格 ，价钱 。</span>

				<p>
					&nbsp;免费入场<br>
					
				</p>

			</div><!-- container6끝 태그 -->		
				
				
	<!-- 7번 일출랜드 -->
			<div class="container" id="c6" style="display: none"><!-- 작은 화면 -->
				<div class="img">
					<img alt="tourphoto" src="assets/img/familyTour/일출랜드.jpg" class="tourimg">
					<img alt="close" src="assets/img/closeicon.png" class="close">
				</div>
				<span class="title">&nbsp;日出乐园</span>
				<br>
				<br>
				<br>
				<!-- 주소 -->
				<span class="title">&nbsp;地址 ，住所 。</span>
				<p>
					&nbsp;道路名称:济州西归浦市城山邑中山间东路4150-30<br>
					&nbsp;编号:三达里1010
				</p>
				<br>
				<!-- 전화번호 -->
				<span class="title">&nbsp;电话号码</span>
				<p>&nbsp;064-784-2080</p>
				<br>

				<!-- 운영시간 -->
				<span class="title">&nbsp;营业时间</span>
				<p>
				   &nbsp;每天08:30 – 18:00<br>
				   &nbsp;- 全年无休，日落前一小时结束入场，提前预约工艺体验
				</p>

				<br>
				<!--  관광지 가격정보 -->
				<span class="title">&nbsp;</span>

				<p>
					&nbsp;入场费成人-9000韩元<br>
					&nbsp;入场费途径 - 8,000元<br>
					&nbsp;青少年门票-6000韩元<br>
					&nbsp;入场费儿童-5000韩元<br>
					&nbsp;柑橘体验 - 5000韩元
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
				<span class="title">&nbsp;地址 ，住所 。</span>
				<p>
					&nbsp;编号:济州西归浦市城山邑城山里1<br>
				</p>
				<br>
				<!-- 전화번호 -->
				<span class="title">&nbsp;电话号码</span>
				<p>&nbsp;064-783-0959</p>
				<br>

				<!-- 운영시간 -->
				<span class="title">&nbsp;营业时间</span>
				<p>

					&nbsp;每天07:00 – 20:00<br>
					&nbsp;3~9月/每月第一个星期一休馆

				</p>

				<br>
				<!--  관광지 가격정보 -->
				<span class="title">&nbsp;价格 ，价钱 。</span>

				<p>
					&nbsp;韩国旅游信息<br>
					&nbsp;成人（个人） - 5000韩元<br>
					&nbsp;成人(团体) - 4000韩元<br>
					&nbsp;青少年，军人（个人） - 2500韩元<br>
					&nbsp;青少年，军人（团体） - 2,000韩币<br>
					&nbsp;儿童(个人) - 2500韩元<br>
					&nbsp;儿童(团体) - 2,000韩币
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
			content : '<div>济州玻璃城</div>',
			latlng : new kakao.maps.LatLng(33.31463452183118 , 126.27366627388697)
		}, {
			content : '<div>真皮公园</div>',
			latlng : new kakao.maps.LatLng(33.354227574700396, 126.2444649248069)
		}, {
			content : '<div>博物馆是活着的济州岛</div>',
			latlng : new kakao.maps.LatLng(33.25497680176304, 126.40885332612669)
		}, {
			content : '<div>Chagwido海盗潜艇</div>',
			latlng : new kakao.maps.LatLng(33.3079926695599, 126.16406624124434 )
		},{
			content : '<div>济州天空水秀</div>',
			latlng : new kakao.maps.LatLng(33.42412649954406 , 126.7437627487 )
		},{
			content : '<div>城邑民俗村</div>',
			latlng : new kakao.maps.LatLng(33.38457082106541 , 126.8004610826966 )
		},{
			content : '<div>日出乐园</div>',
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