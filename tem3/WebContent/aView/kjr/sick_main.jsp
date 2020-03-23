<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b450fd1e475fcbb9f2bb640be5a6f4a8"></script>
<%@ include file="../../layout/sick_head.jsp" %>
<%@ include file="../../layout/sick_menu.jsp" %>
<link rel="stylesheet" href="cssList.css">
<script>


/* 1. 건강정보 출력
	
	//2.$("#edit")클릭 시 sick_healModify으로 이동
2. 검색기능. 병원명입력받음. 결과값을가지고 search_list.jsp로 이동
 


4. 등록한 관심병원 정보 출력
-> 클릭하면 관심병원리스트 페이지로 이동

5. 접수증 페이지 이동 기능
*/
$(function() { //window load이벤트 생략해서 적은것
	//건강정보수정 페이지로이동
	$("#edit").on("click", function() {
		location.href='SSickHealModify.do';
	});
	
	$("#WjqtnwmdBtn").on("click", function() {
		location.href='SSickWjqtnwmd.do';
	});

	$("#searchBtn").on("click", function() {
		if($("#hosName").val()==''){
			alert("병원명을 입력하세요");
		}else{
		searchList();
		}
	});
	
	
});

//검색버튼클릭시 리스트페이지로 넘어가게 함
function searchList(){
	document.searchFrm.action="SSearchList.do"
	document.searchFrm.method="post";
	document.searchFrm.submit();
}
</script>
</head>
<body>
	<div class="container">

		<div class="card text-center  topmg">
			<div class="card" style="margin: 5px;">
				<div class="card-header text-left">건강정보</div>
				<div class="card-body">
				${hIndto.sicId } <br>
				${hIndto.chrdis }<br>
				${hIndto.hstcs } <br>
				${hIndto.bdp }	 <br>
				${hIndto.allrgy }<br>
				${hIndto.htEtc } <br>
					<p class="card-text">
					
					</p>
					<a href="#" class="btn btn-primary" id="edit">건강정보수정</a>
				</div>
			</div>
		</div>


		<div class="card text-center" style="margin: 20px 0px;">
			<div class="card-header text-left">병원검색</div>
			<div class="card-body">
			<form name="searchFrm">
				<div class="input-group mb-3">
					<input type="text" class="form-control"	placeholder="병원명" name="hosName" id="hosName">
					<div class="input-group-append">
						<button class="btn btn-outline-secondary" type="submit" id="searchBtn"><i class="fas fa-search"></i></button>
					</div>
				</div>
			</form>
				
			</div>
		</div>
		

		<div class="card text-center" style="margin: 20px 0px;">
			<div class="card-header text-left" id="bokkmarkA">최근 등록한 관심병원</div>
			<div class="card-body">
					<div id="map" style="width: auto; height: 400px;"></div>
					<!-- 지도담을 영역만들기 -->
					<script>
						var container = document.getElementById('map');
						var options = {
							center : new kakao.maps.LatLng(33.450701,126.570667),
							level : 3
						};
						var map = new kakao.maps.Map(container, options);
					</script>
			</div>
		</div>


		<div class="card mb-3 " style="margin: 20px 0px;">
			<button type="button" class="btn btn-primary btn-lg btn-block" id="WjqtnwmdBtn">접수증 관리</button>
		</div>



	</div>

</body>
</html>