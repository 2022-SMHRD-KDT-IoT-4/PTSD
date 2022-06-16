<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>위도경도받기</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<style>
.map_wrap {
	position: relative;
	width: 100%;
	height: 350px;
}

.title {
	font-weight: bold;
	display: block;
}

.hAddr {
	position: absolute;
	left: 10px;
	top: 10px;
	border-radius: 2px;
	background: #fff;
	background: rgba(255, 255, 255, 0.8);
	z-index: 1;
	padding: 5px;
}

#centerAddr {
	display: block;
	margin-top: 2px;
	font-weight: normal;
}

.bAddr {
	padding: 5px;
	text-overflow: ellipsis;
	overflow: hidden;
	white-space: nowrap;
}
</style>


<script type="text/javascript">
	var message = "";

	function goMap() {
		var latlng = $("#latlng").text();
		console.log(latlng);
		$.ajax({
			type : "post",
			url : "MapService2",
			data : {
				"latlng" : latlng
			},
			success : function() {
				alert("성공")
			},
			error : function() {
				alert("error");
			}
		});

	}
</script>

</head>
<body>
	<div id="map" style="width: 100%; height: 350px;"></div>
	<p>
		<em>지도를 클릭해주세요!</em>
	</p>

	<p id="result"></p>
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=2b1ee554bf87be554b11f65dda2c1f7d"></script>
	<script>
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
			center : new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
			level : 3
		// 지도의 확대 레벨
		};

		var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

		// 지도에 클릭 이벤트를 등록합니다
		// 지도를 클릭하면 마지막 파라미터로 넘어온 함수를 호출합니다
		kakao.maps.event.addListener(map, 'click', function(mouseEvent) {

			// 클릭한 위도, 경도 정보를 가져옵니다 
			var latlng = mouseEvent.latLng;

			message = '클릭한 위치의 위도는 ' + latlng.getLat() + ' 이고, ';
			message += '경도는 ' + latlng.getLng() + ' 입니다';
			var resultDiv = document.getElementById('result');
			resultDiv.innerHTML = message;
			$("#latlng").text(latlng);
		});
	</script>

	<span id="latlng"></span>
	<button type="button" class="btn btn-lg btn-primary" onclick="goMap()">위치가져오기</button>
</body>
</html>