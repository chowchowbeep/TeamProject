<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<%@ include file="/layout/sick_head.jsp"%>
<script src="<%=request.getContextPath()%>/aView/chorong/js/chorong.js"></script>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/aView/chorong/css/chorong.css">
<%@ include file="/layout/sick_menu.jsp"%>


<!-- 모달 -->
<div class="modal" id="modal" role="dialog"
	aria-labelledby="modalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 id="modalLabel" class="modal-title"></h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body" id="modalBody"></div>
			<div class="modal-footer">
				<button id="closeModalBtn" type="button" class="btn btn-secondary"
					data-dismiss="modal">확인</button>
			</div>
		</div>
	</div>
</div>




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
											<input type="text" class="form-control"
												value="${param.hosName}" readonly> <input
												type="hidden" id="hosId" name="hosId" value="${param.hosId}">
											<br> <label for="decCont">신고내용</label>
											<textarea id="decCont" name="decCont" class="form-control"
												style="height: 180px;" placeholder="신고내용을 입력해주세요 "></textarea>

										</div>
									</div>
								</div>
							</div>
							<!-- /.card-body 끝 신청폼바디-->




							<!-- 신청폼푸터 // 제출 및 기타 버튼 위치 -->
							<!-- 클릭시 신고완료 알림 창 띄운 후 상세 페이지로 이동 -->
							<div class="card-footer">
								<input type="reset" class="btn btn-secondary" value="초기화">
								<button type="button" onclick="decFormCheck()"
									class="btn btn-secondary float-right">신고하기</button>
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
	//유효성 체크 및 값 넘기기
	function decFormCheck() {
		var cont = $("#decCont").val();
		var noContHead = "내용없음";
		var noContCont = "신고내용을 입력해 주세요.";
		var submittedHead = "제출완료";
		var submitted = "신고가 완료되었습니다.";
		if (cont == null || cont == "") {
			event.preventDefault();
			$('#modal').modal(); // 내용없음 모달 
			$("#modalLabel").html(noContHead);
			$("#modalBody").html(noContCont);
			
		} else {
			event.preventDefault();
			$('#modal').modal(); // 신고완료 모달
			$("#modalLabel").html(submittedHead);
			$("#modalBody").html(submitted);
			
		}
	}
	$("#closeModalBtn").on("click", function(){
		frm.action = "SDeclarationInsert.do";
		frm.submit();
	})	;
</script>
</body>
</html>
