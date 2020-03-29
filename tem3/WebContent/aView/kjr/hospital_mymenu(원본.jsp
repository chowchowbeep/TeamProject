<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 마이메뉴 페이지 -->
<!-- 부트스트랩4 -->
<%@ include file="../../layout/hos_head.jsp" %>
<%@ include file="../../layout/hos_menu.jsp" %>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
	<style>
	.btn{
		margin : 2px;
		
	}
	.hiden{
	 display: none;
	}
  	.topMar { margin:10px };
	</style>
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
		<!-- 병원회원 수정페이지 컨테이너 -->
		<div class="container">
			<div class="card" style="margin: 5px;">
				<div class="card-header text-center"><strong>회원 정보</strong></div>
				<div class="card-body text-center">
					
					<p style="font-weight: 400;">
						<small><strong>병원명</strong></small>
						<br>
						${list.hosName }
					</p>
					
					<p style="font-weight: 400;">
						<small><strong>주 소</strong></small>
						<br>
						 ${list.hosAddr }
					</p>
					
					<p style="font-weight: 400;">
						<small><strong>전화번호</strong></small>
						<br>
						${list.hosPhone }
					</p>
					<div class="text-center">
						<a href="HHospitalProfile.do" class="btn btn-secondary">회원정보 수정</a>
					</div>
				</div>
			</div>
		</div>
		<!-- 병원회원 수정페이지 컨테이너 종료 -->

	<!--2. 등록한 카테고리 아이콘으로 출력 -->
		<div class="container text-center">
			<div class="card" style="margin: 5px;">
				<div class="card" style="margin: 5px;">
					<div class="card-header">진료과목</div>
					<div class="card-body"> 
					<c:forEach items="${codeList }" var="code">
							<c:choose>
									<c:when test="${code.type eq 'SUB'}">
										<button type='button' class='btn btn-outline-secondary'>${code.name}</button>
									</c:when>
									<c:otherwise></c:otherwise>
							</c:choose>
					</c:forEach>
					<br>
					<br><a href="#" class="btn btn-secondary">진료과목 추가 및 수정</a>
					</div>
				</div>
				
				<div class="card" style="margin: 5px;">
					<div class="card-header">증상</div>
					<div class="card-body"> 
						<c:forEach items="${codeList }" var="code">
							<c:choose>
									<c:when test="${code.type eq 'APA'}">
										<button type='button' class='btn btn-outline-secondary'>${code.name}</button>
									</c:when>
									<c:otherwise></c:otherwise>
							</c:choose>
					</c:forEach>
					<br><br>
					<p><a href="#" class="btn btn-secondary">증상 추가 및 수정</a></p>
					</div>
				</div>
				
				<div class="card" style="margin: 5px;">
					<div class="card-header ">테마</div>
					<div class="card-body"> 
					<c:forEach items="${codeList }" var="code">
							<c:choose>
									<c:when test="${code.type eq 'TEMA'}">
										<button type='button' class='btn btn-outline-secondary'>${code.name}</button>
									</c:when>
									<c:otherwise></c:otherwise>
							</c:choose>
					</c:forEach>
					<br><br>
					<p><a href="#" class="btn btn-secondary">테마 추가 및 수정</a></p>
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
					<a href="#" class="btn btn-secondary">카테고리수정페이지로 이동</a>
				</div>
				<div id="tabs-sic">
					<p>증상</p>
					<a href="#" class="btn btn-secondary">카테고리수정페이지로 이동</a>
				</div>
				<div id="tabs-theme">
					<p>테마</p>
					<a href="#" class="btn btn-secondary">카테고리수정페이지로 이동</a>
				</div>
			</div>
		 -->
	</div>


	<!-- 3.병원회원정보 수정버튼: 병원회원수정페이지로 이동-->
	<div class="card mb-3 " style="margin: 15px;">
		<button type="button" class="btn btn-secondary btn-lg btn-block" id="HDoctorlist">
			의사리스트페이지 
		</button>
	</div>
	
			
		
	<!-- 6. 진료현황리스트페이지 로 이동  -->
	<div class="card mb-3 " style="margin: 15px;">
		<button type="button" class="btn btn-secondary btn-lg btn-block" id="HMediAll">
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