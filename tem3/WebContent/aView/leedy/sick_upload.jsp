<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="/layout/sick_head.jsp"%>
<%@ include file="/layout/sick_menu.jsp"%>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1>sick_upload</h1>
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
					<div class="card-header  card text-center">
						<h3 class="card-title">진료기록물 업로드</h3>
					</div>
					<!-- /.card-header -->
					

						<div class="card-body text-center " style="border: none;">
							<p>촬영 또는 업로드를 해주세요</p>
						
							<a class="btn btn-app"> <i class="fas fa-camera"></i> 촬영</a> 
							<a class="btn btn-app col-2"> <i class="fas fa-edit "><div class="custom-file" style="font-size:0.88em">업로드
									<input type="file" class="custom-file-input"
										id="exampleInputFile">
									<!-- data-browse="찾기" 사용하면 버튼 내용값 바꿀 수 있음 -->
									
								</div></i></a>

							<!-- 파일 선택시 사용할 form 태그 <form method="post" enctype="multipart/form-data" action="../FileUpload.do"> -->

							<!-- 촬영 누르면 카메라/지원하지 않을 때는 지원하지 않는 모드입니다 -->
							<!-- 업로드 누르면 기록물 리스트 페이지로 이동(sick_mediList) -->


						</div>
						<!-- /.card-body -->
					
					<!-- /.card -->
					<!-- form start -->
					<form class="form-horizontal">
						<div class="card-body">

							<div class="form-group row">
								<label for="customRadio1" class="col-sm-2 col-form-label">기록물
									분류</label>
								<div class="col-sm-6">
									<div class="custom-control custom-radio">
										<input class="custom-control-input" type="radio"
											id="customRadio1" name="customRadio"> <label
											for="customRadio1" class="custom-control-label">기록물</label>

									</div>
									<div class="custom-control custom-radio">
										<input class="custom-control-input" type="radio"
											id="customRadio2" name="customRadio"> <label
											for="customRadio2" class="custom-control-label">서류</label>

									</div>
								</div>
							</div>
						
						
							<div class="form-group row">
								<label  class="col-sm-2 col-form-label">발급일자</label>
								<div class="col-sm-10">
	
										<div class="row">
													<div class="col-4">
														<input type="text" class="form-control" id="inputYear">

													</div>
													<label for="inputYear" class="col-1 col-form-label">년</label>
													<div class="col-2">
														<input type="text" class="form-control" id="inputMonth">

													</div>
													<label for="inputMonth" class="col-1 col-form-label">월</label>
													<div class="col-2">
														<input type="text" class="form-control" id="inputDay">

													</div>
													<label for="inputDay" class="col-1 col-form-label">일</label>
												</div>
	
								</div>
							</div>
							<div class="form-group row">
								<label for="inputDrcyEtc" class="col-sm-2 col-form-label">비고</label>
								<div class="col-sm-10">

									<textarea class="form-control" rows="3"
										placeholder="비고사항을 적어보세요" id="inputDrcyEtc"></textarea>

								</div>
							</div>



						</div>
						<!-- /.card-body -->
						<div class="card-footer  text-center">
							<button type="submit" class="btn btn-info">업로드 완료</button>
							<!-- cancel에는 button type reset? -->

						</div>
						<!-- /.card-footer -->
					</form>
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



</body>
</html>