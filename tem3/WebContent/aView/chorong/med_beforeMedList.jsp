<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../../0_hos_layout_header.jsp"%>
<%@ include file="../../0_hos_layout_topMenu.jsp"%>

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
						<li class="breadcrumb-item"><a href="#">일반회원</a></li>

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
			<div class="dropdown">
				예약&nbsp;<i class="fas fa-caret-down"></i>
				<div>		<!-- 2. 진료 타입별로 선택해서 조회 가능한 기능     -->
					<a class="breadcrumb-item" href="전체목록">전체</a> <a style="color:gray;"
						class="breadcrumb-item" href="당일접수목록" >당일 접수</a> <a
						class="breadcrumb-item" href="예약목록" style="color:gray;">예약</a>
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col-12">

					<div class="card">

						<h3 class="card-title">
							<!-- 제목 -->
						</h3>

						<div class="card-tools"></div>
						<div class="card-body table-responsive p-0">
							<table class="table table-striped table-valign-middle">
							<!-- 3. 항목 선택 시 병원정보 상세조회 페이지로 이동 
								4. 취소한 이력은 취소표시  -->
								<thead>
									<tr>
										<th style="width: 5%;">번호</th>
										<th>이름</th>
										<th style="width: 28%;">예약 시간</th>
										<th style="width: 29%;">담당의</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>0001</td>
										<td>조선아<span class="badge bg-warning">NEW</span>
										</td>
										<td>13:00</td>
										<td><a href="#" class="text-muted"> <i
												class="fas fa-search"></i>
										</a></td>
									</tr>
									<tr>
										<td>0002</td>
										<td>이다연</td>
										<td>13:30</td>
										<td><a href="#" class="text-muted"> <i
												class="fas fa-search"></i>
										</a></td>
									</tr>
									<tr>
										<td>1000</td>
										<td>김민정</td>
										<td>15:00</td>
										<td><a href="#" class="text-muted"> <i
												class="fas fa-search"></i>
										</a></td>
									</tr>
									<tr>
										<td>0013</td>
										<td>김초롱</td>
										<td>13:00</td>
										<td><a href="#" class="text-muted"> <i
												class="fas fa-search"></i>
										</a></td>
									</tr>
									<tr>
										<td>0023</td>
										<td>김주련</td>
										<td>16:00</td>
										<td><a href="#" class="text-muted"> <i
												class="fas fa-search"></i>
										</a></td>
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



</body>
</html>