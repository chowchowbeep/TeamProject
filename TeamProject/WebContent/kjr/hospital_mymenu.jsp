<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 마이메뉴 페이지 -->
<!-- 부트스트랩4 -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<script src=" https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
	integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
	crossorigin="anonymous"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script>
	$(function() {
		$("#tabs").tabs();
	});
</script>

</head>
<body>
	<!-- 1.병원회원정보 간략하게 출력 -->
	<div class="card mb-3 ">
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

	<!--2. 등록한 카테고리 아이콘으로 출력 -->
	<div class="card text-center">
		<div id="tabs" style="margin: 15px;"
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
	<div class="card mb-3 ">
		<button type="button" class="btn btn-primary btn-lg btn-block">Block
			level button</button>
	</div>

	<!-- 6. 진료현황리스트페이지 로 이동  -->
	<div class="card mb-3 ">
		<button type="button" class="btn btn-primary btn-lg btn-block">Block
			level button</button>
	</div>


	<!-- 
4. 카테고리 수정버튼 : 카테고리수정페이지 로이동
5. 의사리스트페이지 로 이동 
6. 진료현황리스트페이지 로 이동  -->



</body>
</html>