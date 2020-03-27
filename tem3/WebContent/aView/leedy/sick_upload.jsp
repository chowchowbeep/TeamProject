<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
								<li class="breadcrumb-item">홈</li>
								<li class="breadcrumb-item active">일반회원</li>
							</ol>
						</div>
					</div>
				</div>
				<!-- /.container-fluid -->
			</section>

			<!-- Main content -->
			<section class="content">

				<div class="card card-secondary">
					<div class="card-header  card text-center">
						<h3 class="card-title">진료기록물 업로드</h3>
					</div>
					<!-- /.card-header -->
						<!-- /.card-body -->
					
					<!-- /.card -->
					<!-- form start -->
					<form name="sickUp" method="post" enctype="multipart/form-data"
					action="SSickUploadAdd.do" class="form-horizontal">
					
						<div class="card-body">

							<div class="form-group row">
								<label for="file_type" class="col-sm-2 col-form-label">파일 타입</label>
								<div class="col-sm-6">
								
									<!-- radio -->
										<div class="form-group">
									<div class="form-check">
										<input class="form-check-input" type="radio" name="file_type"
											checked id="file_type" > <label
											class="form-check-label" for="">사진</label>
									</div>
									<div class="form-check">
										<input class="form-check-input" type="radio" name="file_type"
											id="file_type" > <label
											class="form-check-label" for="">동영상</label>
									</div>
									<div class="form-check">
										<input class="form-check-input" type="radio" name="file_type"
											 id="file_type"  > <label
											class="form-check-label" for="">문서</label>
									</div>
								</div>

								</div>
							</div>
							
							<label for="file">파일선택</label>
						<!-- 파일 선택시 사용할 form 태그 <form method="post" enctype="multipart/form-data" action="../FileUpload.do"> -->
						<div class="input-group">
							<div class="custom-file">
								<input type="file" class="custom-file-input"
									id="file" name="file">
								<!-- data-browse="찾기" 사용하면 버튼 내용값 바꿀 수 있음 -->
								<label class="custom-file-label" for="file"
									data-browse="찾기"></label>
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
								<label for="drcy_etc" class="col-sm-2 col-form-label">비고</label>
								<div class="col-sm-10">

									<textarea class="form-control" rows="3"
										placeholder="비고사항을 적어보세요" id="drcy_etc"></textarea>

								</div>
							</div>



						</div>
						<!-- /.card-body -->
						<div class="card-footer  text-center">
							<input type="submit" class="btn btn-secondary" value="업로드">
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

	
<!-- bs-custom-file-input -->
<script src="plugins/bs-custom-file-input/bs-custom-file-input.min.js"></script>
<script type="text/javascript">
$(document).ready(function () {
	  bsCustomFileInput.init();
	});</script>	
	
<%@ include file="/layout/all_footer.jsp"%>
</body>
</html>