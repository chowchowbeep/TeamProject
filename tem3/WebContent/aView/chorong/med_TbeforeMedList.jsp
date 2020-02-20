<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ include file="/layout/sick_head.jsp"%>
<script src="<%=request.getContextPath()%>/aView/chorong/js/chorong.js"></script>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/aView/chorong/css/chorong.css">
<%@ include file="/layout/sick_menu.jsp"%>



<!--  /SMedTBeforeMedList.do를 타고 들어옴-->


<!-- 클릭한 항목의 값을 파라미터로 가지고 가야 함_ 아래 스크립트 참고
	상세정보-->
<form id="frm" name="frm" method="post">

	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper">
		<!-- Content Header (Page header) -->
		<div class="content-header">
			<div class="container-fluid">
				<div class="row mb-2">
					<div class="col-sm-6">
						<h1 class="m-0 text-dark">진료신청현황</h1>
					</div>
					<!-- /.col -->
					<div class="col-sm-6">
						<ol class="breadcrumb float-sm-right">
							<li class="breadcrumb-item active">홈</li>
							<li class="breadcrumb-item">일반회원</li>
						</ol>
					</div>
					<!-- /.col -->
				</div>
				<!-- /.row -->
			</div>
			<!-- /.container-fluid -->
		</div>
		<!-- /.content-header -->






		<!-- Main content -->
		<section class="content">
			<div class="container-fluid">


				<div>
					<!-- 2. 진료 타입별로 선택해서 조회 가능한 기능     -->
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="SMedABeforeMedList.do">전체</a></li>
						<li class="breadcrumb-item active">접수</li>
						<li class="breadcrumb-item"><a href="SMedRBeforeMedList.do">예약</a></li>
						<li class="breadcrumb-item"><a href="SMedCBeforeMedList.do">취소</a></li>
					</ol>
				</div>

				<br>
				<div class="row">
					<div class="col-12">
						<div class="card">
							<div class="card-body table-responsive p-0">
								<table class="table table table-hover text-wrap">
									<!-- 3. 항목 선택 시 병원정보 상세조회 페이지로 이동 
								4. 취소한 이력은 취소표시  -->
									<thead>
										<tr align="center">
											<th style="width: 35%;">신청일</th>
											<th style="width: 35%;">병원</th>
											<th style="width: 30%;">상세</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="list" items="${list}">
											<tr id="${list.rqstNo}">

												<td>${list.rqstDttm}</td>

												<td>${list.hosName}</td>

												<td><svg class="bi bi-chevron-right" 
												width="20" height="20" viewBox="0 0 20 20" fill="currentColor"
														xmlns="http://www.w3.org/2000/svg">
														<path fill-rule="evenodd"
															d="M6.646 3.646a.5.5 0 01.708 0l6 6a.5.5 0 010 .708l-6 6a.5.5 0 01-.708-.708L12.293 10 6.646 4.354a.5.5 0 010-.708z"
															clip-rule="evenodd" /></svg></td>

											</tr>
										</c:forEach>
									</tbody>
								</table>


							</div>
						</div>
						<!-- /.card -->
					</div>
				</div>
			</div>
		</section>

		<input type="hidden" id="submitNo" name="submitNo">
		<!-- 선택한 진료신청항목의 진료신청번호를 전송 -->
		<input type="hidden" id="id" name="id" value="${id }">
		<!-- 로그인중인 아이디 -->



		<!-- 
		이전:"상단바 사이트맵, 상단바 메뉴바"
		다음:"진료현황 상세 페이지-예약, 진료현황 상세 페이지-당일접수"
	 -->
	</div>
	<!-- ./wrapper -->
</form>
<%@ include file="/layout/all_footer.jsp"%>
<script>
	// 목록 항목 클릭시 상세정보로 이동

	$("tr").click(function() {
		var submitNo = $(this).attr("id"); //클릭한 행의 id값(진료신청번호 넘길것임)
		console.log(submitNo);
		$("#submitNo").attr("value", submitNo);
		console.log("변경된값 : " + $("#submitNo").attr("value"));

		frm.action = "SRqDetail.do"; //진료신청현황 상세 페이지로
		frm.submit(); //제출되면 클릭된 행의 신청번호가 파라미터로 실려갑니다.
	})
</script>


</body>
</html>