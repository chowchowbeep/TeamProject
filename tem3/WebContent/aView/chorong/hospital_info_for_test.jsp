<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../../layout/sick_head.jsp"%>

<%@ include file="../../layout/sick_menu.jsp"%>
</head>

<!-- ShospitalInfoForTest.do -->
<body>
	<form id="frm" name="frm" method="post">
		<div class="container">

				<div class="card text-center" style="margin: 5px;">
					<div class="card-header ">${dto.hosName }</div>
					<div class="card-body" id="map" style="width: auto; height: 300px;">
						<script type="text/javascript"
							src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ab80218668811d838f72b330468c19b3"></script>
						<script>
							var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
							var options = { //지도를 생성할 때 필요한 기본 옵션
								center : new kakao.maps.LatLng(33.450701,
										126.570667),
								level : 3
							//지도의 레벨(확대, 축소 정도)
							};
							var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
						</script>
					</div>
				</div>

				<%-- center : new kakao.maps.LatLng(${dto.hosLat},${dto.hosLng})), --%>

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
				<input type="hidden" name="hosId" value="${dto.hosId }"> <input
					type="hidden" name="hosName" value="${dto.hosName }"> <input
					type="hidden" name="hosAddr" value="${dto.hosAddr }"> <input
					type="hidden" name="hosBizTime" value="${dto.hosBizTime }">
				<input type="hidden" name="sicId" value="sic1">
				<!-- 나중에 세션으로 수정-->



				<button type="button" id="tmrRq"
					class="btn btn-primary btn-lg btn-block">당일접수</button>
				<button type="button" id="resRq"
					class="btn btn-primary btn-lg btn-block">예약신청</button>
		
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