<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

</head>
<body class="hold-transition sidebar-mini">
		<%@ include file="../../0_hos_layout_header.jsp"%>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1>sick_docuList</h1>
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

				<div class="card card-info">
				
						<div class="card table-responsive pad  text-center">
							<div class="btn-group btn-group-toggle" data-toggle="buttons">
								<label class="btn btn-secondary "> <input type="radio"
									name="options" id="option1" autocomplete="off"> 기록물
								</label> <label class="btn btn-secondary active"> <input
									type="radio" name="options" id="option2" autocomplete="off"
									checked> 서류
								</label>

							</div>
						</div>

						<!-- /.card-header -->
						<!-- form start -->
						<form class="form-horizontal">
							<div class="card-body">

								<div class="row">

									<!-- ./col -->
									<div class="col-lg-6 ">
										<!-- small card -->
										<div class="small-box bg-success">
											<div class="inner">
												<h5>진단서</h5>
												<br>
												<div>
													<p>
														발급병원: 예담내과 <br> 환자명: 이다연 <br> 발급일자: 20200101
													</p>
												</div>
											</div>
											<div class="icon">
												<i class="ion ion-stats-bars"></i>
											</div>
											<a href="sick_detailList.jsp" class="small-box-footer">
												상세정보 보기 <i class="fas fa-arrow-circle-right"></i>
											</a>
										</div>
									</div>
									<!-- ./col -->
									<div class="col-lg-6 ">
										<!-- small card -->
										<div class="small-box bg-warning">
											<div class="inner">
												<h5>보험서류</h5>
												<br>

												<div>
													<p>
														발급병원: 예담외과 <br> 환자명: 이다연 <br> 발급일자: 20200101
													</p>
												</div>

											</div>
											<div class="icon">
												<i class="fas fa-user-plus"></i>
											</div>
											<a href="sick_detailList.jsp" class="small-box-footer">
												상세정보 보기 <i class="fas fa-arrow-circle-right"></i>
											</a>
										</div>
									</div>
									<!-- ./col -->

								</div>



							</div>

						</form>
				
</div></section>



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
