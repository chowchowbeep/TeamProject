<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ include file="/layout/sick_head.jsp"%>
<script src="<%=request.getContextPath()%>/aView/chorong/js/chorong.js"></script>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/aView/chorong/css/chorong.css">
<%@ include file="/layout/sick_menu.jsp"%>

<!--  -->


<form id="frm" name="frm" method="post">
	<!-- 컨텐츠 위치 -->
	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper">
		<!-- Content Header (Page header) -->
		<section class="content-header">
			<div class="container-fluid">
				<div class="row mb-2">
					<div class="col-sm-6">
						<h1>병원신고하기</h1>
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


						<!-- 1. 선택한 병원정보 출력  -->
						<div class="card card-secondary">
							<div class="card-header">
								<h3 class="card-title">선택한 정보 확인</h3>
							</div>
							<div class="card-body">

								<div class="row">
									<div class="col-sm-6">
										<div class="form-group">
											<label for="hosName">병원명</label> <input type="text"
												class="form-control" value="${dto.artrName}병원명" readonly>
											<input type="hidden" id="hosName" name="hosName"
												class="form-control" value="${dto.hosId}병원명" readonly>
										</div>
										<div class="form-group">
											<label for="hosAddr">주소</label>
											<textarea id="hosAddr" name="hosAddr" class="form-control"
												disabled>${dto.hosAddr}주소주소</textarea>
										</div>
									</div>
								</div>
							</div>
						</div>


						<!-- 신청 폼 div시작 -->
						<div class="card card-secondary">
							<!-- 신청폼헤더 -->
							<div class="card-header">
								<h3 class="card-title">신고양식</h3>
							</div>
							<!-- /.card-header 끝 신청폼말머리-->

							<div class="card-body">
								<div class="row">
									<div class="col-sm-6">


										<!-- 2. 의사 선택_ 선택한병원정보에서 -->
										<div class="form-group">
											<label for="artrNo">진료받을 의사 선택</label> <select
												class="custom-select" id="artrNo" name="artrNo">
												<option value="${dto.artrName}">성명: 예시성명 / 진료과목:
													예시과목</option>

											</select>
										</div>

										<!-- 3. 선생님께 한마디 입력란  -->
										<div class="form-group">
											<label for="msg">의사선생님에게 한 마디</label>
											<textarea id="msg" name="msg" class="form-control"
												placeholder="증상, 기타사항을 입력해주세요"></textarea>
											<!-- <input type="text" name="email" class="form-control" 
                    				id="toDr" name="toDr" placeholder="증상, 기타사항을 입력해주세요"> -->
										</div>



									</div>
								</div>




							</div>
							<!-- /.card-body 끝 신청폼바디-->



							<div class="card-footer">
								<input type="reset" class="btn btn-secondary" value="초기화">
								<input type="submit" class="btn btn-secondary float-right"
									value="신고하기" onclick="resFormSubmit()">

							</div>
						</div>
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
</form>


<%@ include file="/layout/all_footer.jsp"%>


<script>
	// 필수입력사항체크 후 값 넘기도록

	function resFormSubmit() {
		alert("예약신청이 완료되었습니다.");
		frm.action = ".do"; //신고처리 후 결과페이지로
		frm.submit();
	}
</script>

</body>
</html>
