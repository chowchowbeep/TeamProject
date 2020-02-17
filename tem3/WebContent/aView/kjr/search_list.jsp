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
.mar {
	margin: 10px 0px;
}
</style>
<link rel="stylesheet" href="cssList.css">
<script>
//병원리스트출력 검색마다 추가되도록 이벤트가 발생해야함

//리스트 클릭 시 상세페이지로 이동시킬지 버튼으로 이동시킬지? 클릭이벤트발생필요 
		
</script>
</head>

<body>
	<div class="container">
		<div class="input-group mb-3 topmg"><!-- 클릭이벤트로 search_list로 이동 -->
			<input type="text" class="form-control" placeholder="Search"
				aria-label="Search" aria-describedby="button-Search2">
			<div class="input-group-append">
				<button class="btn btn-outline-secondary" type="button"
					id="button-Search2">검색</button>
			</div>
			
		</div>
		<div class="row">
			<div class="mb-3 col-4" style="margin: 20px 0px;">
				<button type="button" class="btn btn-primary btn-lg btn-block">랭킹순</button>
			</div>
			<div class="mb-3 col-4" style="margin: 20px 0px;">
				<button type="button" class="btn btn-primary btn-lg btn-block">거리순</button>
			</div>
			<div class="mb-3 col-4" style="margin: 20px 0px;">
				<button type="button" class="btn btn-primary btn-lg btn-block">상세조건</button>
			</div>
		</div>
		
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
							<p>진료 시간 :${list.hosStart } ~ ${list.hosLast }</p>
							<a href="SHospitalInfo.do" class="btn btn-primary">접수 예약 및 상세페이지</a>
						</div>
					</div>
				</div>
			</div>
		</c:forEach>
	</div>
</body>
</html>