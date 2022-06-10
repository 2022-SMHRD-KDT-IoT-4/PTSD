<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>클릭 이벤트 등록하기</title>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>




<script type="text/javascript">
	$(document).ready(function()({
		goMap();
	});
	
	function goMap(){
		var latlng = mouseEvent.latLng;
		var x=latlng.getLat();
		var y=latlng.getLng();
	 	var location =x+y;
	 	
	 	$.ajax({
			type:"post",
			url:"MapService2",
			data: {"location":location},
			success:function(){
				alrert("성공")
			},
			error:function(){
				alrert("error");
			}
	 	});
	 	
	}
</script>

</head>
<body>
<div id="map" style="width:100%;height:350px;"></div>
<p><em>지도를 클릭해주세요!</em></p> 

<p id="result"></p>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=2b1ee554bf87be554b11f65dda2c1f7d"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };


//여기


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

function getCurrentPosBtn(){
    navigator.geolocation.getCurrentPosition(locationLoadSuccess,locationLoadError);
};

</script>
<button  type="button" class="btn btn-lg btn-primary" onclick="getCurrentPosBtn()">위치가져오기</button>
</body>
</html>