<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../aView/kjr/cssList.css">
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b450fd1e475fcbb9f2bb640be5a6f4a8"></script>
<%@ include file="../../layout/sick_head.jsp" %>
<%@ include file="../../layout/sick_menu.jsp" %>
<script>
$(function() {
	$("#STmrRequest").on("click", function() {
		location.href='STmrRequest.do';
	});
	
	$("#SResRequest").on("click", function() {
		location.href='SResRequest.do';
	});
	
}
);
</script>
<style>
  .btnMar{margin:2px;}
</style>
</head>
<body>
	<div class="container">

		<div class="card text-center  topmg">
			<div class="card" style="margin: 5px;">
				<div class="card-header ">
				<c:if test="${cnt eq '0' }"><!-- 노관심병원이면 까만별 -->
					<img src="images/star-off-big.png"> &nbsp; &nbsp;
				</c:if>
				<c:if test="${cnt eq '1' }"><!-- 관심병원이면 반짝별 -->
					<img src="images/star-on-big.png"> &nbsp; &nbsp;
				</c:if>
				${list[0].hosName } </div>
				<div class="card-body">
					<div id="map" style="width: auto; height: 400px;"></div>
					<!-- 지도담을 영역만들기 -->
					<script>
						var container = document.getElementById('map');
						var options = {
							center : new kakao.maps.LatLng(33.450701,
									126.570667),
							level : 3
						};

						var map = new kakao.maps.Map(container, options);
					</script>
				</div>
			</div>



			<div class="card" style="margin: 5px;">
				<div class="card-body">
					<p>전화번호 : ${ list[0].hosPhone}</p>
					<p>주소 : ${list[0].hosAddr}</p>
					<p>진료시간 : ${list[0].hosBizTime}</p>
					<p>사업자등록번호 : ${list[0].hosBizno}</p>
						<div id="searchWd" name="searchWd">
							
							<c:forEach items="${codeList }" var="code">
							<c:if test="${code.value.type eq 'A'}">
								<button type='button' class='btn btn-outline-info btnMar'>${code.value.name}</button>
							</c:if>
							</c:forEach>
							<c:forEach items="${codeList }" var="code">
							<c:if test="${code.value.type eq 'S'}">
								<button type='button' class='btn btn-outline-info btnMar'>${code.value.name}</button>
							</c:if>
							</c:forEach>
							<br>
							<c:forEach items="${codeList }" var="code">
								<c:choose>
									<c:when test="${code.value.type eq 'A'}"></c:when >
									<c:when test="${code.value.type eq 'S'}"></c:when >
									<c:otherwise>
										<button type='button' class='btn btn-outline-info btnMar'>${code.value.name}</button>
									</c:otherwise>
							</c:choose>
							</c:forEach>
								
						
						</div>
					
				</div>
			</div>

			<button type="button" class="btn btn-primary btn-lg btn-block" id="STmrRequest">당일
				접수</button>
			<button type="button" class="btn btn-primary btn-lg btn-block" id="SResRequest">예약
				신청</button>
		</div>
	</div>
	
	
	
	


</body>
</html>