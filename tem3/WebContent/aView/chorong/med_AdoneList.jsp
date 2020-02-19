<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ include file="/layout/sick_head.jsp"%>
<script src="<%=request.getContextPath()%>/aView/chorong/js/chorong.js"></script>
<style>
td {
	text-align: center;
}
</style>
<%@ include file="/layout/sick_menu.jsp"%>

<!-- /SMedADoneList.do로 진료이력목록조회 -->
<form id="frm" name="frm" action="SMedDoneDetail.do" method="post">
	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper">
		<!-- Content Header (Page header) -->
		<div class="content-header">
			<div class="container-fluid">
				<div class="row mb-2">
					<div class="col-sm-6">
						<!-- 1. 진료이력 출력 ( 회원Id, 진료상태 완료, 모든진료타입 ) -->
						<h1 class="m-0 text-dark">진료이력</h1>
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
					<ol class="breadcrumb">
						<li class="breadcrumb-item active">전체</li>
						<li class="breadcrumb-item"><a href="SMedTDoneList.do">접수</a></li>
						<li class="breadcrumb-item"><a href="SMedRDoneList.do">예약</a></li>
					</ol>
				</div>

				<br>
				<div class="row">
					<div class="col-12">
						<div class="card">
							<div class="card-body table-responsive p-0">


								<table class="table table table-hover text-nowrap">
									<!-- 3. 항목 선택 시 병원정보 상세조회 페이지로 이동 
								4. 취소한 이력은 취소표시  -->
									<thead>
										<tr align="center">
											<th style="width: 33%;">신청일</th>
											<th style="width: 33%;">병원</th>
											<th style="width: 33%;">신청타입</th>
											<!-- 진료타입-->
										</tr>
									</thead>
									<tbody>
										<c:forEach var="list1" items="${list1}" varStatus="status">
											<tr id="${list1.rqstNo}">

												<td>${list1.rqstDttm}</td>

												<td>${list2[status.index].hosName}</td>

												<c:choose>
													<c:when test="${list1.rqstTy =='D001'}">
														<td>접수</td>
													</c:when>
													<c:when test="${list1.rqstTy =='D002'}">
														<td>예약</td>
													</c:when>
												</c:choose>

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
	</div>


	<!-- ./wrapper -->
	<input type="hidden" id="submitNo" name="submitNo">
</form>

<%@ include file="/layout/all_footer.jsp"%>
<script>
	// 목록 항목 클릭시 상세정보로 이동
	$("tr").click(function() {
		//console.log($(this).attr("id"));
		var submitNo = $(this).attr("id");
		$("#submitNo").attr("value", submitNo);
		//console.log("변경된값 : " + $("#submitNo").attr("value"));
		document.getElementById("frm").submit(); //제출되면 클릭된 행의 신청번호가 파라미터로 실려갑니다.
	})
</script>


</body>
</html>


