<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b450fd1e475fcbb9f2bb640be5a6f4a8"></script>
</head>
<body>
	<div id="map" style="width: auto; height: 400px;"></div>
	<!-- 지도담을 영역만들기 -->
	<script>
		var container = document.getElementById('map');
		var options = {
			center : new kakao.maps.LatLng(33.450701, 126.570667),
			level : 3
		};
		var map = new kakao.maps.Map(container, options);
	</script>
</body>
</html>