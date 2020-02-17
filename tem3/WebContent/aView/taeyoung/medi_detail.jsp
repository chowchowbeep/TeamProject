<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/layout/hos_head.jsp"%>
<%@ include file="/layout/hos_menu.jsp"%>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1>medi_detail</h1>
						</div>
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a href="#">홈</a></li>
								<li class="breadcrumb-item active">진료현황</li>
							</ol>
						</div>
					</div>
				</div>
				<!-- /.container-fluid -->
			</section>

			<!-- Main content -->
			<section class="content">
				<!-- Default box -->
				<div class="card-body pt-0" style="width: 360px;">
					<div class="row d-flex align-items-stretch">
						<div class="col-12 col-sm-6 col-md-4 d-flex align-items-stretch">
							<div class="card bg-light">
								<div class="card-header text-muted border-bottom-0">
									<!-- 1번째 글 -->
								</div>
								<form>
								<div class="card-body pt-0">
									<div class="row">
										<div class="col-7">
											<h2 class="lead">
												<b>김태영</b>
											</h2>
											<p class="text-sm">
												<b>ID:</b>&nbsp;
												<input type="hidden">[S001] <br>
												<b>회원등급:</b>&nbsp;
												<input type="hidden">[일반]
											</p>
											<ul class="ml-4 mb-0 fa-ul text-muted">
												<li class="small"><span class="fa-li">
												<i class="fas fa-lg fa-phone"></i></span>
														전화번호:&nbsp;
														<input type="hidden">[010-0000-0001]
												</li>
												<li class="small"><span class="fa-li">
												<i class="fas fa-lg fa-building"></i></span>
														주소:&nbsp;
														<input type="hidden">[대구시 달서구 신당동 1834-2]</li><br>
											</ul>
										</div>
										<div class="col-5 text-center">
											<img src="../../dist/img/user1-128x128.jpg" alt="" class="img-circle img-fluid">
										</div>
										<br><br>
										<p class="text-sm">
											<b>선생님께 한마디:</b>&nbsp;<input type="hidden">[어제부터 배가
											아파요]<br> <b>진료기록물 신청:</b>&nbsp;<input type="hidden">[없음]<br>
											<b>진료신청 일시:</b>&nbsp;<input type="hidden">[2020-02-10]
										</p>
									</div>
								</div>
								</form>
							</div>
						</div>
					</div>
					<br>
					<div class="text-center">
						<a href="../leedy/hospital_inquiry.jsp" class="btn btn-secondary"> 진료기록물 조회 </a>&nbsp;&nbsp;&nbsp;
						<a href="../leedy/hospital_upload.jsp" class="btn btn-secondary"> 진료 기록물 업로드 </a>
					</div>
					<br>
					<div class="text-center">
						<a href="#" class="btn btn-lg btn-info"> 완료 </a>&nbsp; <a
							href="medi_all.jsp" class="btn btn-lg btn-info"> 취소 </a>
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
