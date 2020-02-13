<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ include file="/layout/sick_head.jsp"%>
<style>
td {
	text-align: center;
}
</style>
<%@ include file="/layout/sick_menu.jsp"%>

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





	<!-- 
		이전:"상단바 사이트맵, 상단바 메뉴바"
		다음:"진료현황 상세 페이지-예약, 진료현황 상세 페이지-당일접수"
	 -->






	<!-- Main content -->
	<section class="content">
		<div class="container-fluid">


			<div>
				<!-- 2. 진료 타입별로 선택해서 조회 가능한 기능     -->
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
								<!-- 3. 항목 선택 시 병원정보 상세조회 페이지로 이동 
								4. 취소한 이력은 취소표시  -->
								<thead>
									<tr align="center">
										<th style="width: 33%;">신청일</th>
										<!-- 접수일 경우 접수일로 표시 -->
										<th style="width: 33%;">병원</th>
										<th style="width: 33%;">상태</th><!-- 진료상태 -->
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>2020/02/11</td>
										<td>yy병원</td>
										<td>당일접수</td>
									</tr>
									<tr>
										<td>2020/02/11</td>
										<td>xx병원</td>
										<td>예약</td>
									</tr>
									<tr>
										<td>2020/02/11</td>
										<td>xy병원</td>
										<td>취소</td>
									</tr>
									<tr>
										<td>2020/02/11</td>
										<td>xx병원</td>
										<td>예약</td>
									</tr>
									<tr>
										<td>2020/02/11</td>
										<td>zz병원</td>
										<td>예약</td>
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
<%@ include file="/layout/all_footer.jsp"%>
<script>
	// 목록 항목 클릭시 상세정보로 이동
	$("tr").click(function() {
		console.log("클릭");
		location.href = "상세정보.do";
	})
</script>


</body>
</html>