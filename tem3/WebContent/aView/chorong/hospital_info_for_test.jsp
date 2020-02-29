<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="cssList.css">
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b450fd1e475fcbb9f2bb640be5a6f4a8"></script>
<%@ include file="../../layout/sick_head.jsp"%>
<%@ include file="../../layout/sick_menu.jsp"%>
</head>

<!-- ShospitalInfoForTest.do -->
<body>
	<form id="frm" name="frm" method="post">
		<div class="container">

			<div class="card text-center  topmg">
				<div class="card" style="margin: 5px;">
					<div class="card-header ">${dto.hosName }</div>
					<div class="card-body">
						<div id="map" style="width: auto; height: 400px;"></div>
						<!-- 지도담을 영역만들기 -->
						<script>
							var container = document.getElementById('map');
							var options = {
								// 							center : new kakao.maps.LatLng(${dto.hosLat},
								// 									${dto.hosLng}),
								level : 3
							};
							var map = new kakao.maps.Map(container, options);
						</script>
					</div>
				</div>



				<div class="card" style="margin: 5px;">
					<div class="card-body">
						<p>전화번호:${dto.hosPhone }</p>
						<p>주소:${dto.hosAddr }</p>
						<p>진료시간:${dto.hosBizTime }</p>
						<p>사업자등록번호:${dto.hosBizno }</p>
						<P>검색코드</P>
					</div>
				</div>
				
				<!-- 진료신청에 필요한 값 넘기기 // 크게 변하지 않는 값들 .-->
				<input type="hidden" name="hosId" value="${dto.hosId }">
				<input type="hidden" name="hosName" value="${dto.hosName }">
				<input type="hidden" name="hosAddr" value="${dto.hosAddr }">
				<input type="hidden" name="sicId" value="${sicId }">
				<input type="hidden" name="hosBizTime" value="${dto.hosBizTime }">
				
				<!--  -->


				<button type="button" id="tmrRq"
					class="btn btn-primary btn-lg btn-block">당일접수</button>
				<button type="button" id="resRq"
					class="btn btn-primary btn-lg btn-block">예약신청</button>
			</div>
		</div>
	</form>

	<script>
		$("#tmrRq").on("click", function() {
			frm.action = "STmrRequest.do";
			frm.submit();
		})
		$("#resRq").on("click", function() {
			frm.action = "SResRequest.do";
			frm.submit();
		})
	</script>

</body>
</html>