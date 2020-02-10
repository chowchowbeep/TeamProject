<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

</head>
<body class="hold-transition sidebar-mini">


<%@ include file="../../layout_header.jsp"%>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1>hospital_upload</h1>
						</div>
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a href="#">홈</a></li>
								<li class="breadcrumb-item active">병원회원</li>
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
						<h3 class="card-title">진료 기록물 업로드</h3>
					</div>
					<!-- /.card-header -->
					<div class="card">
						<form role="form" method="post" enctype="multipart/form-data"
							action="" class="form-horizontal">
							<div class="card-body">
								<div class="form-group">
									<label for="exampleInputEmail1">파일 타입</label>

									<div class="col-sm-6">
										<!-- radio -->
										<div class="form-group">
											<div class="form-check">
												<input class="form-check-input" type="radio" name="radio1"
													id="exampleInputEmail1"> <label
													class="form-check-label" for="">사진</label>
											</div>
											<div class="form-check">
												<input class="form-check-input" type="radio" name="radio1"
													id="exampleInputEmail1"> <label
													class="form-check-label" for="">동영상</label>
											</div>
											<div class="form-check">
												<input class="form-check-input" type="radio" name="radio1"
													checked id="exampleInputEmail1"> <label
													class="form-check-label" for="">문서</label>
											</div>
										</div>
									</div>
								</div>
								<label for="exampleInputFile">파일선택</label>
								<!-- 파일 선택시 사용할 form 태그 <form method="post" enctype="multipart/form-data" action="../FileUpload.do"> -->
								<div class="input-group">
									<div class="custom-file">
										<input type="file" class="custom-file-input"
											id="exampleInputFile">
										<!-- data-browse="찾기" 사용하면 버튼 내용값 바꿀 수 있음 -->
										<label class="custom-file-label" for="exampleInputFile"
											data-browse="찾기"></label>
									</div>

								</div>


								<div class="form-group row">
									<label for="callArtrNo" class="col-sm-2 col-form-label">의사</label>
									<div class="col-sm-10">
										<select class="form-control select2" style="width: 100%;"
											id="callArtrNo">
											<option>의사를 선택하세요</option>
											<option>조선아</option>
											<option>김민정</option>
											<option>김주련</option>

										</select>
									</div>
								</div>

								<div class="form-group row">
									<label class="col-sm-2 col-form-label">발급일자</label>
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


							</div>

						</form>


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
<%@ include file="../layout_footer.jsp"%>
</body>
</html>
