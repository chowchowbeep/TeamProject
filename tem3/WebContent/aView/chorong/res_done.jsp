<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ include file="../../0_sick_layout_header.jsp"%>

<!-- 컨텐츠 위치 -->
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<div class="container-fluid">
			<div class="row mb-2">
				<div class="col-sm-6">
					<!-- 1. 예약완료 멘트 출력 -->
					<h1>예약이 완료되었습니다!</h1>
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


					<!-- 선택한 정보 확인 -->
					<!-- 2. 예약된 정보 출력_병원정보/ 예약시간 정보 등  -->
					<div class="card card-secondary">
						<div class="card-header">
							<h3 class="card-title">예약정보확인</h3>
						</div>
						<div class="card-body">

							<div class="row">
								<div class="col-sm-6">
									<div class="form-group">
										<!--  -->
										<label for="hosName">병원명</label> <input type="text"
											id="hosName" name="hosName" class="form-control"
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
										<br>

										<!-- <input type="text" name="email" class="form-control" 
                    				id="toDr" name="toDr" placeholder="증상, 기타사항을 입력해주세요"> -->

										<label for="medDay">진료날짜</label> <input type="text"
											id="medDay" name="medDay" class="form-control" value="진료날짜"
											disabled> <br> <label for="medTime">진료시간</label>
										<input type="text" id="medTime" name="medTime"
											class="form-control" value="진료시간" disabled>
									</div>
								</div>
							</div>
						</div>


						<!-- 신청폼푸터 // 제출 및 기타 버튼 위치 -->
						<!-- 
							3. 확인버튼 구현
							-> 확인버튼 클릭시 접수현황 페이지로 이동
							4. 예약취소 버튼 구현_   예약취소 .do 호출 및 alert function구현
							-> 예약취소 버튼 클릭 : 취소완료 팝업페이지 출력
							-> 진료현황리스트 페이지로 이동
						-->
						<div class="card-footer">
							<button onclick="location.href='접수현황페이지'"
								class="btn btn-secondary">확인</button>
							<button onclick="" class="btn btn-secondary float-right">예약취소</button>
						</div>
					</div>
					<!-- 
					넘겨받는:예약시간 선택 페이지
					넘기는:진료현황 리스트 페이지(확인버튼, 예약취소버튼 누를 경우_취소확인 및 완료팝업 출력후)"	
				 -->


				</div>
				<!--/.col (left) -->

				<!-- right column -->
				<div class="col-md-6"></div>
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
<script>
//취소이벤트 발생시 

</script>


</body>
</html>
