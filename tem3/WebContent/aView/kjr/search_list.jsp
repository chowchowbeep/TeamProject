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
		
		<div class="row hiden">
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
						<a href="SSearchMain.do" class="btn btn-secondary">지역 및 카테고리로<br>다시 검색하기</a>
					</div>
				</div>
				 	
			</div>
		</c:if>
		
		<!-- 병원리스트출력 검색마다 추가되도록 이벤트가 발생해야함 -->
		<!--  for:each  -->
		<c:forEach items="${hosList}" var="list">
			<div class="card" style="margin: 5px;">
				<div class="row no-gutters">
					<div class="col-md-4 ">
						<img src="img/캡처.PNG" style="max-width: 540px;" class="card-img"
							alt="프로필사진">
							<h5 class="text-center">${list.hosName }</h5>
					</div>
					<div class="col-md-8">
						<div class="card-body">
							<h5 class="card-title">${list.hosName }</h5>
							<p class="card-text">${list.hosAddr }</p>
							<p>전화번호 : ${list.hosPhone }</p>
							<p>진료 시간 :${list.hosBizTime }</p>
							<a href="SHospitalInfo.do?hosId=${list.hosId}" class="btn btn-secondary">접수 예약 및 상세페이지</a>
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