<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%@ include file="/layout/hos_head.jsp"%>
<%@ include file="/layout/hos_menu.jsp"%>
</head>
<body>
	<div class="content-wrapper">
		<!-- Content Header (Page header) -->
		<section class="content-header">
			<div class="container-fluid">
				<div class="row mb-2">
					<div class="col-sm-6">
						<h1>hospital_inquiry</h1>
					</div>
					<div class="col-sm-6">
						<ol class="breadcrumb float-sm-right">
							<li class="breadcrumb-item">홈</li>
							<li class="breadcrumb-item active">병원회원</li>
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
					<div class="col-md-6">
						<!-- general form elements -->
						<div class="card card-primary ">
							<div class="card-header card text-center">
								<h1 class="card-title">진료 기록물 조회</h1>
							</div>
							<!-- /.card-header -->
							<!-- form start -->
							<form role="form" method="post" enctype="multipart/form-data"
								action="">
								<div class="card-body">
									<div>

										<div class="card mb-3">
											<img src="nyang.jpg" class="card-img-top" alt="...">
											<div class="card-body">
												<h5 class="card-title">진료 기록물 조회</h5>
												<p class="card-text">This is a wider card with
													supporting text below as a natural lead-in to additional
													content. This content is a little bit longer.</p>
												<p class="card-text">
													<small class="text-muted">3분 전</small>
												</p>
											</div>
										</div>
									</div>


									<div class="form-group">
										<label class=" col-form-label" for="exampleInputPassword1">발급일자</label>

										<div class="row">
											<div class="col-4">
												<input type="text" class="form-control" id="inputYear"
													placeholder="발급일자">

											</div>
											<label for="inputYear" class="col-1 col-form-label">년</label>
											<div class="col-2">
												<input type="text" class="form-control" id="inputMonth"
													placeholder="불러">

											</div>
											<label for="inputMonth" class="col-1 col-form-label">월</label>
											<div class="col-2">
												<input type="text" class="form-control" id="inputDay"
													placeholder="와요">

											</div>
											<label for="inputDay" class="col-1 col-form-label">일</label>
										</div>
									</div>


									<div class="form-group">
										<label for="exampleInputFile">비고</label>

										<textarea class="form-control" rows="3"
											placeholder="비고사항을 불러옵니다"></textarea>

									</div>

								</div>
								<!-- /.card-body -->

							</form>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- /.card -->

		<!-- Control Sidebar -->
		<aside class="control-sidebar control-sidebar-dark">
			<!-- Control sidebar content goes here -->
		</aside>
		<!-- /.control-sidebar -->
	</div>
	<!-- ./wrapper -->

<%@ include file="/layout/all_footer.jsp"%>

</body>
</html>