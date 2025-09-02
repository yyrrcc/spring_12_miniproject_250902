<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="../common/header.jsp" %>
<%@ include file="../common/nav.jsp" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/map.css">

<div class="map-container">
    <h2>오시는 길</h2>

    <!-- 안내문 -->
    <div class="map-info">
        <h3>찾아오시는 방법</h3>
        <ul>
            <li>🚶‍♂️ 도보: 지하철 ○○역 2번 출구에서 직진 후 도보 5분</li>
            <li>🚇 지하철: ○○역 (2호선, 3호선) 하차 후 도보 5분</li>
            <li>🚌 버스: ○○정류장에서 하차 (간선 123, 456번 / 지선 789번)</li>
            <li>🚗 자가용: ○○주차장 이용 가능 (30분 무료)</li>
        </ul>
    </div>    
    
    <!-- 지도 자리 -->
    <div class="map-box">
    	<div id="map" style="width: 700px; height: 400px;"></div>
    </div>
</div>


	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=72f2c91b6fdfa51322882cc132e82e6b&libraries=services"></script>
	<script>
		var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng(37.556485736141845, 126.94518938389395), // 위도, 경도
			level: 3
		};

		var map = new kakao.maps.Map(container, options);
		
		
		
		//주소-좌표 변환 객체 생성 (app키에 &libraries=services 추가)
	    var geocoder = new kakao.maps.services.Geocoder();
	    var address = "경기도 고양시 일산동구 중앙로";
		geocoder.addressSearch(address, function(result, status) {
	        if (status === kakao.maps.services.Status.OK) {
	            // 검색된 좌표 (위도: y, 경도: x)
	            var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
	            // 지도 중심 이동
	            map.setCenter(coords);
	            // 마커 생성
	            var marker = new kakao.maps.Marker({
	                map: map,
	                position: coords
	            });
	            // 인포윈도우 생성 (주소 표시)
	            var infowindow = new kakao.maps.InfoWindow({
	                content: '<div style="padding:5px;">' + address + '</div>'
	            });
	            infowindow.open(map, marker);
	            // 콘솔에 위도 경도 출력
	            console.log("위도: " + result[0].y + ", 경도: " + result[0].x);
		        } else {
		            alert("주소 검색 실패: " + status);
		        }
		    });
	</script>





<%@ include file="../common/footer.jsp" %>
