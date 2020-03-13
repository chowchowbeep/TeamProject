<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 마이메뉴 페이지 -->
<!-- 부트스트랩4 -->
<%@ include file="../../layout/sick_head.jsp" %>
<%@ include file="../../layout/sick_menu.jsp" %>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<script>
	$(function() {
		$("#HDoctorlist").bind("click", function() {
			location.href='HDoctorlist.do';
		});
		$("#HMediAll").bind("click", function() {
			location.href='HMediAll.do';
		});
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
							<h5 class="card-title">병원명 ${list.hosName }</h5>
							<p class="card-text">주소 ${list.hosAddr }</p>
							<p>전화번호 : ${list.hosPhone }</p>
							<a href="HHospitalProfile.do" class="btn btn-primary">병원회원수정페이지</a>
						</div>
					</div>
				</div>
			</div>
		</div>

	<!--2. 등록한 카테고리 아이콘으로 출력 -->
		<div class="container text-center">
			<div class="card" style="margin: 5px;">
				<div class="card" style="margin: 5px;">
					<div class="card-header">진료과목</div>
					<div class="card-body"> 
						서치리스트에서 밑에 그 해시태그처럼 나오게하면 될듯 ㅎㅎ
						진료과목 태그로 보여주기
					<p><a href="#" class="btn btn-primary">진료과목 추가 및 수정</a></p>
					</div>
				</div>
				
				<div class="card" style="margin: 5px;">
					<div class="card-header">증상</div>
					<div class="card-body"> 
						서치리스트에서 밑에 그 해시태그처럼 나오게하면 될듯 ㅎㅎ
						진료과목 태그로 보여주기
					<p><a href="#" class="btn btn-primary">증상 추가 및 수정</a></p>
					</div>
				</div>
				
				<div class="card" style="margin: 5px;">
					<div class="card-header ">테마</div>
					<div class="card-body"> 
						서치리스트에서 밑에 그 해시태그처럼 나오게하면 될듯 ㅎㅎ
						진료과목 태그로 보여주기
					<p><a href="#" class="btn btn-primary">테마 추가 및 수정</a></p>
					</div>
				</div>
			</div>
		<!-- tabs가 적용이 안되서 주석처리함 
			<div id="tabs" style="margin: 5px;" class="ui-tabs ui-corner-all ui-widget ui-widget-content">
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
		 -->
	</div>


	<!-- 3.병원회원정보 수정버튼: 병원회원수정페이지로 이동-->
	<div class="card mb-3 " style="margin: 15px;">
		<button type="button" class="btn btn-primary btn-lg btn-block" id="HDoctorlist">
			의사리스트페이지 
		</button>
	</div>
	
			
		
	<!-- 6. 진료현황리스트페이지 로 이동  -->
	<div class="card mb-3 " style="margin: 15px;">
		<button type="button" class="btn btn-primary btn-lg btn-block" id="HMediAll">
			진료현황리스트
		</button>
	</div>

</div>
	<!-- 
4. 카테고리 수정버튼 : 카테고리수정페이지 로이동
5. 의사리스트페이지 로 이동 
6. 진료현황리스트페이지 로 이동  -->



</body>
</html>