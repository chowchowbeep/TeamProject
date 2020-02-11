<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 마이메뉴 페이지 -->
<!-- 부트스트랩4 -->
<%@ include file="../../0_sick_layout_header.jsp" %>

<script>
	$(function() {
		$("#tabs").tabs();
	});
</script>

</head>
<body>
	<!-- 1.병원회원정보 간략하게 출력 -->
	<div class="container">
	<div class="container">
	<div class="card" style="margin: 5px;">
		<div class="row no-gutters">
			<div class="col-md-4">
				<img src="img/캡처.PNG" style="max-width: 540px;" class="card-img"
					alt="프로필사진">
			</div>
			<div class="col-md-8">
				<div class="card-body">
					<h5 class="card-title">병원명</h5>
					<p class="card-text">대구광역시 중구 성내2동 국채보상로 53</p>
					<p>전화번호 : [053-294-4141]</p>
					<a href="#" class="btn btn-primary">병원회원수정페이지</a>
				</div>
			</div>
		</div>
	</div>
	</div>

	<!--2. 등록한 카테고리 아이콘으로 출력 -->
	<div class="container text-center">
		<div id="tabs" style="margin: 5px;"
			class="ui-tabs ui-corner-all ui-widget ui-widget-content">
			<ul>
				<li><a href="#tabs-medi">진료과목</a></li>
				<li><a href="#tabs-sic">증상</a></li>
				<li><a href="#tabs-theme">테마</a></li>
			</ul>
			<div id="tabs-medi">
				<p>진료과목</p>
				<a href="#" class="btn btn-primary">카테고리수정페이지로 이동</a>
			</div>
			<div id="tabs-sic">
				<p>증상</p>
				<a href="#" class="btn btn-primary">카테고리수정페이지로 이동</a>
			</div>
			<div id="tabs-theme">
				<p>테마</p>
				<a href="#" class="btn btn-primary">카테고리수정페이지로 이동</a>
			</div>
		</div>
	</div>



	<!-- 3.병원회원정보 수정버튼: 병원회원수정페이지로 이동-->
	<div class="card mb-3 " style="margin: 15px;">
		<button type="button" class="btn btn-primary btn-lg btn-block">Block
			level button</button>
	</div>

	<!-- 6. 진료현황리스트페이지 로 이동  -->
	<div class="card mb-3 " style="margin: 15px;">
		<button type="button" class="btn btn-primary btn-lg btn-block">Block
			level button</button>
	</div>

</div>
	<!-- 
4. 카테고리 수정버튼 : 카테고리수정페이지 로이동
5. 의사리스트페이지 로 이동 
6. 진료현황리스트페이지 로 이동  -->



</body>
</html>