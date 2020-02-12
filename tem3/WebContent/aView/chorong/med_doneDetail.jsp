<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ include file="../../0_sick_layout_header.jsp"%>
<%@ include file="../../0_sick_layout_topMenu.jsp"%>

<!-- 컨텐츠 위치 -->
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<div class="container-fluid">
			<div class="row mb-2">
				<div class="col-sm-6">
					<h1>진료이력상세</h1>
				</div>
				<div class="col-sm-6">
					<ol class="breadcrumb float-sm-right">
						<li class="breadcrumb-item"><a href="#">홈</a></li>
						<li class="breadcrumb-item active">일반회원</li>
					</ol>
				</div>
			</div>
		</div>
		<!-- /.container-fluid -->
	</section>

	<!-- Main content -->
	<section class="content">
		<div class="container-fluid">
			<div class="row">
				<!-- left column -->
				<div class="col-md-12">


					<!-- 1. 신청한 병원 상세정보-->
					<div class="card card-secondary">
						<!--  <div class="card-header">
							<h3 class="card-title">상세정보</h3> </div> 	-->
						<div class="card-body">

							<div class="row">
								<div class="col-sm-6">
									<div class="form-group">
										<!--  -->
										<label for="hosName">상태정보</label> <input type="text"
											id="medType" name="medType" class="form-control"
											value="${dto.medType}예약" disabled> <br> <label
											for="hosName">병원명</label> <input type="text" id="hosName"
											name="hosName" class="form-control"
											value="${dto.artr_name}병원명" disabled> <br> <label
											for="hosAddr">주소</label>
										<textarea id="hosAddr" name="hosAddr" class="form-control"
											disabled>${dto.artr_name}주소주소</textarea>
										<br> <label for="hosTel">연락처</label> <input type="text"
											id="hosTel" name="hosTel" class="form-control"
											value="${dto.artr_name}연락처" disabled> <br> <label
											for="DrInfo">의사 및 진료과목</label> <input type="text" id="DrInfo"
											name="DrInfo" class="form-control"
											value="${dto.artr_name}의사이름 진료과목" disabled> <br>
										<label for="toDr">의사선생님에게 한 마디</label>
										<textarea id="toDr" name="toDr" class="form-control" disabled></textarea>
										<br> <label for="medType">진료신청타입/상태</label> <input
											type="text" id="medType" name="medType" class="form-control"
											value="진료타입" disabled> <br>

										<!-- <input type="text" name="email" class="form-control" 
                    				id="toDr" name="toDr" placeholder="증상, 기타사항을 입력해주세요"> -->



										<!-- sql문으로 진료정보.진료상태가 진료후 인 것만 골라온 다음
										-> 예약을 했다가(진료날짜가 입력됨) 진료가 완료되거나, 취소한 경우에는 아래와 같이 예약상태의 이력을 표시제어  -->
										<!-- c:if test = 내에 조건을  진료신청.예약날짜 != null로(el표현식 이용하기) -->
										<label for="medDay">예약날짜</label> <input type="text"
											id="medDay" name="medDay" class="form-control" value="진료날짜"
											disabled> <br> <label for="medTime">예약시간</label>
										<input type="text" id="medTime" name="medTime"
											class="form-control" value="진료시간" disabled>
										<!-- /c:if -->

									</div>
								</div>
							</div>
						</div>





						<!-- 신청폼푸터 // 제출 및 기타 버튼 위치-->
						<div class="card-footer">
							<button onclick="location.href='목록페이지로'"
								class="btn btn-secondary float-left">목록</button>
							<span style="margin-left:50px;">
							<button onclick="location.href='리뷰작성페이지로'"
								class="btn btn-secondary mx-auto">리뷰등록</button></span>
							<button onclick="location.href='재접수페이지로'"
								class="btn btn-secondary float-right">재접수</button>
						</div>



					</div>


				</div>
				<!--/.col (left) -->




				<!-- right column -->
				<div class="col-md-12"></div>
				<!--/.col (right) -->
			</div>
			<!-- /.row -->
		</div>
		<!-- /.container-fluid -->
	</section>
	<!-- /.content -->
</div>
<!-- /.content-wrapper -->


<%@ include file="../../0_all_layout_footer.jsp"%>



</body>
</html>




