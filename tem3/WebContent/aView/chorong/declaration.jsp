<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<%@ include file="/layout/sick_head.jsp"%>
<script src="<%=request.getContextPath()%>/aView/chorong/js/chorong.js"></script>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/aView/chorong/css/chorong.css">
<%@ include file="/layout/sick_menu.jsp"%>

<!-- 컨텐츠 위치 -->
<!-- Content Wrapper. Contains page content -->
<form id="frm" name="frm" method="post">

	<div class="content-wrapper">
		<!-- Content Header (Page header) -->
		<section class="content-header">
			<div class="container-fluid">
				<div class="row mb-2">
					<div class="col-sm-6">
						<h1>병원신고</h1>
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

						<!-- 선택한 병원정보 출력   -->
						<div class="card card-secondary">
							<div class="card-header">
								<h3 class="card-title">신고내용입력</h3>
							</div>
							<div class="card-body">

								<div class="row">
									<div class="col-sm-12">
										<div class="form-group">
											<label for="hosId">병원명</label> 
											<!-- 병원id값, 병원이름 가져오기. 병원id value 수정하기 -->
											<!-- param.name test해보기 -->
											<input type="text"
												class="form-control" value="병원1${dto.hosName}" readonly>
											<input type="hidden" id="hosId" name="hosId" value="hos1">
											<br>
											<label for="decCont">신고내용</label>
											<textarea id="decCont" class="form-control" 
											style="height:180px;"
											name="decCont" placeholder="신고내용을 입력해주세요 "></textarea>
											
										</div>
									</div>
								</div>
							</div>
							<!-- /.card-body 끝 신청폼바디-->
						</div>




						<!-- 신청폼푸터 // 제출 및 기타 버튼 위치 -->
						<!-- 클릭시 신고완료 알림 창 띄운 후 상세 페이지로 이동 -->
						<div class="card-footer">
							<input type="hidden" id="id" name="id" value="sic1">
							<!-- 로그인중인 아이디(임시로 sic1로 설정) 나중에 수정-->
							<input type="reset" class="btn btn-secondary" value="초기화">
							<input type="submit" class="btn btn-secondary float-right"
								value="신고하기" onclick="decFormSubmit()">
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



<!-- 유효성 체크 및 값 넘기기 -->
<script>
	//신고내용입력 여부 체크

	//도착예상시간 선택가능값 제어 후 전달
	function decFormSubmit() {
		alert("신고가 완료되었습니다.");//alert을 모달창으로 수정할 것. 
		frm.action = "SDeclaration.do"; //접수신청처리 후  결과페이지로
		frm.submit();
	}
</script>
</body>
</html>
