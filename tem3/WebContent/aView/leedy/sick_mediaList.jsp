<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>


<style>
.abc {
	display: inline-block;
}
</style>
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
						<h1>sick_mediaList</h1>
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
			
					<div class="card table-responsive pad card text-center">
						<div class="btn-group btn-group-toggle" data-toggle="buttons">
							<label class="btn btn-secondary active"> <input
								type="radio" name="options" id="option1" autocomplete="off"
								checked> 기록물
							</label> <label class="btn btn-secondary"> <input type="radio"
								name="options" id="option2" autocomplete="off"> 서류
							</label>

						</div>
					</div>

					<!-- /.card-header -->
					<!-- form start -->

					<form role="form" method="post" enctype="multipart/form-data"
						action="" class="form-horizontal">
						<div class="card-body">
							<div>
								<div class="card mb-3 abc"
									style="max-width: 750px; float: left;">
									<div class="row no-gutters">
										<div class="col-md-4">
											<a href="sick_detailList.jsp"><img src="nyang.jpg"
												class="card-img" alt="..."></a>
										</div>
										<div class="col-md-8">
											<div class="card-body">
												<h4 class="card-title">이다연</h4>
												<br>
												<p class="card-text">
													기록물분류: CT <br> 발급병원: 예담내과 <br> 발급일자: 20200101
												</p>
												<p class="card-text">
													<small class="text-muted">1시간 전</small>
												</p>
											</div>
										</div>
									</div>
								</div>

								<div class="card mb-3 abc"
									style="max-width: 750px; float: right;">
									<div class="row no-gutters">
										<div class="col-md-4 ">
											<a href="sick_detailList.jsp"> <img src="nyang.jpg"
												class="card-img" alt="..."></a>
										</div>
										<div class="col-md-8">
											<div class="card-body">
												<h4 class="card-title">이다연</h4>
												<br>
												<p class="card-text">
													기록물분류: X-ray <br> 발급병원: 예담외과 <br> 발급일자: 20200101
												</p>
												<p class="card-text">
													<small class="text-muted">어제</small>
												</p>
											</div>
										</div>
									</div>
								</div>



							</div>

						</div>

					</form></section>


					<!-- Control Sidebar -->
					<aside class="control-sidebar control-sidebar-dark">
						<!-- Control sidebar content goes here -->
					</aside>
					<!-- /.control-sidebar -->
				

				<!-- ./wrapper -->
			</div>
		
	</div>
	
	<%@ include file="../../0_all_layout_footer.jsp"%>
</body>
</html>
