<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../../layout/sick_head.jsp" %>
<%@ include file="../../layout/sick_menu.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b450fd1e475fcbb9f2bb640be5a6f4a8&libraries=services"></script>
<style>
  .topMar { margin:10px };
  .hiden {
	display: none
}
</style>
<script>
$(function() { 
	$("#nameSearchBtn").bind("click",searchNameGo); //병원명으로 상세리스트로 검색
	
	function searchNameGo(){
		if($("#hosName").val()==''){
			alert("병원명을 입력하세요");
		}else{
		document.nameSearchFrm.action="SSearchList.do"
		document.nameSearchFrm.method="post";
		document.nameSearchFrm.submit();
		}
	};

});

//리스트 클릭 시 상세페이지로 이동시킬지 버튼으로 이동시킬지? 클릭이벤트발생필요 
		
</script>
</head>

<body>
<div class="content-wrapper">
	<section class="content-header">
			<div class="container-fluid">
				<div class="row mb-2">
					<div class="col-sm-6">
						<h1>검색결과</h1>
					</div>
				</div>
			</div>
	<!-- /.container-fzluid -->
		</section>
	<div class="container">
		<form id="nameSearchFrm" name="nameSearchFrm">
		<div class="input-group mb-3 topmg">
				<input type="text" class="form-control"	placeholder="병원명" name="hosName" id="hosName">
				<div class="input-group-append">
					<button class="btn btn-outline-secondary" type="button"
					id="nameSearchBtn">검색</button>
				</div>
		</div>
		</form>
		
		<div class="row hiden" style="display: none">
			<div class="mb-3 col BTNpadmar" style="margin: 2px 2px; padding-right:0px; padding-left:0px; ">
				<button type="button" class="btn btn-secondary btn-lg btn-block">랭킹순</button>
			</div>
			<div class="mb-3 col BTNpadmar" style="margin: 2px 2px; padding-right:0px; padding-left:0px; ">
				<button type="button" class="btn btn-secondary btn-lg btn-block">거리순</button>
			</div>
			<div class="mb-3 col BTNpadmar" style="margin: 2px 2px; padding-right:0px; padding-left:0px; ">
				<button type="button" class="btn btn-secondary btn-lg btn-block">상세조건</button>
			</div>
		</div>
		<c:if test="${empty hosList }">
			<div class="card" style="margin: 5px;">
				<div class="col-md-12">
					<div class="card-body text-center">
						<p class="card-text"> <strong>검색결과가 없습니다.</strong></p>
						<p></p>
						<a href="SsearchMain.do" class="btn btn-secondary">지역 및 카테고리로<br>다시 검색하기</a>
					</div>
				</div>
				 	
			</div>
		</c:if>
		
		<!-- 병원리스트출력 검색마다 추가되도록 이벤트가 발생해야함 -->
		<!--  for:each  -->
		<c:forEach items="${hosList}" var="list" varStatus="i">
			<div class="card" style="margin: 5px;">
				<div class="row no-gutters">
					<div class="col-md-4 ">
						<div id="map${i.count }" style="width: auto; height: 200px;"></div>
						<!-- 지도담을 영역만들기 -->
						<script>
						function mapAdrr${i.count}(){
							// 주소-좌표 변환 객체를 생성합니다
							var geocoder = new kakao.maps.services.Geocoder();
							// 주소로 좌표를 검색합니다
							geocoder.addressSearch('${list.hosAddr}', function(result, status) {
			
							    // 정상적으로 검색이 완료됐으면 
							     if (status === kakao.maps.services.Status.OK) {
							    	 
							        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
										console.log(coords);
							        // 결과값으로 받은 위치를 마커로 표시합니다
							        var marker = new kakao.maps.Marker({
							            map: map,
							            position: coords
							        });
							        
									
									var container = document.getElementById('map'+${i.count});
									var options = {
										center : coords,
										level : 3
									};
			
									var map = new kakao.maps.Map(container, options);
									
	
							        // 인포윈도우로 장소에 대한 설명을 표시합니다
							        var infowindow = new kakao.maps.InfoWindow({
							            content: '<div style="width:150px;text-align:center;padding:6px 0;">${list.hosName}</div>'
							        });
							        infowindow.open(map, marker);
	
							        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
							        map.setCenter(coords);
							    }else {
							    } 
							})
						}
						
						mapAdrr${i.count}();
						</script>
					</div>
					<div class="col-md-8">
						<div class="card-body">
							<h5 class="card-title">${list.hosName }</h5>
							<p class="card-text">${list.hosAddr }</p>
							<p>전화번호 : ${list.hosPhone }</p>
							<p>진료 시간 : ${list.hosBizTime }</p>
							<a href="SHospitalInfo.do?hosId=${list.hosId}" class="btn btn-secondary"> 접수 예약 및 상세페이지</a>
						</div>
					</div>
				</div>
			</div>
		</c:forEach>
	</div>
</div>
<%@ include file="../../layout/all_footer.jsp"%>
</body>
</html>