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
  	body { background-color:#F4F6F9};
  	
	</style>
<script>
	$(function() {
		$("#HDoctorlist").bind("click", function() {
			location.href='HDoctorlist.do';
		});
		$("#HMediAll").bind("click", function() {
			location.href='HMediAll.do';
		});
		
		$("ul").on("click","a", function() {
			
			var divId = $(this).attr('name');
			
			$("#"+divId).removeClass("hiden");
			if(divId=='tabs-medi'){
				$("#tabs-sic").addClass("hiden");
				$("#tabs-theme").addClass("hiden");
			}
			if(divId=='tabs-sic'){
				$("#tabs-medi").addClass("hiden");
				$("#tabs-theme").addClass("hiden");
			}
			if(divId=='tabs-theme'){
				$("#tabs-medi").addClass("hiden");
				$("#tabs-sic").addClass("hiden");
			}

		});
		
	});
</script>

</head>
<body>
<div class="content-wrapper">
	<section class="content-header">
			<div class="container-fluid">
				<div class="row mb-2">
					<div class="col-sm-6">
						<h1> 회원정보 </h1>
					</div>
				</div>
			</div>
	<!-- /.container-fzluid -->
		</section>
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
				<div class="card mb-3" style="margin: 5px;">
					<!-- tabs가 적용이 안되서 주석처리함 -->
					<div class="card" style="margin: 5px;">
						<div class="card-header text-center"><strong>키워드 정보</strong></div>
						<!-- card body 시작 -->
						<div class="card-body">
							<div id="tabs" class="ui-tabs ui-corner-all ">
								<ul class="nav nav-pills justify-content-center" id="pills-tab" role="tablist" style="font-weight: 700;">
									<li class="nav-item">
										<a class="nav-link listTab" id="all" href="#tabs-medi" role="tab" style="padding:3px" name="tabs-medi">ㅣ진료과목ㅣ</a>
									</li>
									<li class="nav-item">
										<a class="nav-link listTab" id="tmr" href="#tabs-sic" role="tab"style="padding:3px"name="tabs-sic">ㅣ증상ㅣ</a>
									</li>
									<li class="nav-item">
										<a class="nav-link listTab" id="res" href="#tabs-theme" role="tab" name="tabs-theme"style="padding:3px">ㅣ테마ㅣ</a>
									</li>
								</ul>
							</div>	
								
							<div id="tabs-medi">
								<br>
								<c:forEach items="${codeList }" var="code">
									<c:choose>
										<c:when test="${code.type eq 'SUB'}">
											<button type='button' class='btn btn-outline-secondary'>${code.name}</button>
										</c:when>
										<c:otherwise></c:otherwise>
									</c:choose>
								</c:forEach>
								<br><br>
								<a href="hosCodeCMD.do"  class="btn btn-secondary">추가 및 변경</a>
							</div>
							
							<div id="tabs-sic" class="hiden">
								<br>
								<c:forEach items="${codeList }" var="code">
									<c:choose>
										<c:when test="${code.type eq 'APA'}">
											<button type='button' class='btn btn-outline-secondary'>${code.name}</button>
										</c:when>
										<c:otherwise></c:otherwise>
									</c:choose>
								</c:forEach>
								<br><br>
								<a href="hosCodeCMD.do"  class="btn btn-secondary">추가 및 변경</a>
							</div>
							<div id="tabs-theme" class="hiden">
								<br>
								<c:forEach items="${codeList }" var="code">
									<c:choose>
										<c:when test="${code.type eq 'TEMA'}">
											<button type='button' class='btn btn-outline-secondary'>${code.name}</button>
										</c:when>
										<c:otherwise></c:otherwise>
									</c:choose>
								</c:forEach>
								<br>	<br>
								<a href="hosCodeCMD.do"  class="btn btn-secondary">추가 및 변경</a>
							</div>
						</div>
						<!-- card body 종료 -->
					</div>
					<!--  탭스가안대서 주석처리햇던 영역 마지막  --> 
				</div>
				<!-- card종료 -->
		</div>
		<!-- 등록아이콘 컨테이너 종료 -->
		<!-- 5. 의사리스트페이지 로 이동  -->
		<div class="mb-3 " style="margin: 15px;">
			<button type="button" class="btn btn-secondary btn-lg btn-block" id="HDoctorlist">
				의사 리스트 
			</button>
		</div>
		<!-- 진료현황리스트페이지 로 이동  -->
		<div class="mb-3 " style="margin: 15px;">
			<button type="button" class="btn btn-secondary btn-lg btn-block" id="HMediAll">
				진료 현황 리스트
			</button>
		</div>
	</div>
	<!-- 컨테이너종료 -->
</div> 
<!-- class="content-wrapper" 종료-->
<%@ include file="../../layout/all_footer.jsp"%>
</body>
</html>