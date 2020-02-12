<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ include file="../../0_hos_layout_header.jsp"%>
<style>
td {
	text-align: center;
}
</style>
<%@ include file="../../0_hos_layout_topMenu.jsp"%>

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
					<li class="breadcrumb-item"><a href="당일접수목록">당일접수</a></li>
					<li class="breadcrumb-item"><a href="예약목록">예약</a></li>
				</ol>
			</div>

			<br>
			<div class="row">
				<div class="col-12">
					<div class="card">
						<div class="card-body table-responsive p-0">
							<table class="table table table-hover text-nowrap">
								<thead>
									<tr align="center">
										<th style="width: 33%;">신청일</th>
										<th style="width: 33%;">병원</th>
										<th style="width: 33%;">상태</th>
									</tr>
								</thead>
								<tbody>
									<tr class="goDetail">
										<td>2020/02/11</td>
										<td>yy병원</td>
										<td>병원취소</td>
									</tr>
									<tr class="goDetail">
										<td>2020/02/11</td>
										<td>xx병원</td>
										<td>본인취소</td>
									</tr>
									<tr class="goDetail">
										<td>2020/02/11</td>
										<td>xy병원</td>
										<td>당일접수진료</td>
									</tr>
									<tr class="goDetail">
										<td>2020/02/11</td>
										<td>yx병원</td>
										<td>예약진료</td>
									</tr>
									<tr class="goDetail">
										<td>2020/02/11</td>
										<td>zz병원</td>
										<td>예약진료</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<!-- /.card -->
				</div>
			</div>
		</div>
	</section>
	<!-- Control Sidebar -->
	<aside class="control-sidebar control-sidebar-dark">
		<!-- Control sidebar content goes here -->
	</aside>
	<!-- /.control-sidebar -->


</div>
<!-- ./wrapper -->
<%@ include file="../../0_all_layout_footer.jsp"%>
<script>
	// 목록 항목 클릭시 상세정보로 이동
	$(".goDetail").click(function() {
		console.log("클릭");
		location.href = "진료이력상세정보.do";
	})
</script>


</body>
</html>


