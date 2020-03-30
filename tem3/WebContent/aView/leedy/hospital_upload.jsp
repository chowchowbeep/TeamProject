<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.File"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/layout/hos_head.jsp"%>
<%@ include file="/layout/hos_menu.jsp"%>
</head>
<!-- 업로드시 저장할 이미지 폴더 물리적 주소 -->
<!-- C:\Users\Da yeon\eclipse-workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp1\wtpwebapps\tem3\upload -->

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<div class="content-header">
		<div class="container-fluid">
			<div class="row mb-2">
				<div class="col-sm-6">
					<h1 class="m-0 text-dark">진료기록물 발급</h1>
				</div>
				<!-- /.col -->
				<div class="col-sm-6"></div>
				<!-- /.col -->
			</div>
			<!-- /.row -->
		</div>
		<!-- /.container-fluid -->
	</div>
	<!-- /.content-header -->


	<!-- Main content -->
	<section class="content">

		<div class="card card-secondary">
			<div class="card-header  card text-center">
				<h3 class="card-title">진료기록물 업로드</h3>
			</div>
			<!-- /.card-header -->

			<form name="hosUp" method="post" enctype="multipart/form-data"
				action="HHospitalUploadAdd.do" class="form-horizontal">
				<div class="card-body">
					<div class="form-group">
						<label for="file_type">파일 타입</label>

						<div class="col-sm-6">
							<!-- radio -->
							<div class="form-group">
								<div class="form-check">
									<input class="form-check-input" type="radio" name="file_type"
										checked id="file_type" value="F001"> <label
										class="form-check-label" for="" 
										>사진</label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="radio" name="file_type"
										id="file_type" value="F002"> <label class="form-check-label"
										for="" >동영상</label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="radio" name="file_type"
										id="file_type" value="F003> <label class="form-check-label"
										for="" ">문서</label>
								</div>
							</div>
						</div>
					</div>

					<div class="form-group">
						<label for="file"  class="col-sm-2 col-form-label">파일선택</label>
						<!-- 파일 선택시 사용할 form 태그 <form method="post" enctype="multipart/form-data" action="../FileUpload.do"> -->
						<div class="input-group">
							<div class="custom-file">
								<input type="file" class="custom-file-input" id="file"
									name="file">
								<!-- data-browse="찾기" 사용하면 버튼 내용값 바꿀 수 있음 -->
								<label class="custom-file-label" for="file" data-browse="찾기"></label>
							</div>

						</div>
					</div>

					<div class="form-group row">
						<label class="col-sm-2 col-form-label">발급일자</label>
						<div class="col-sm-10">

							<div class="row">
								<div class="col-4">
									<input type="text" class="form-control" id="inputYear"
										name="inputYear" placeholder="2020">

								</div>
								<label for="inputYear" class="col-1 col-form-label">년</label>
								<div class="col-2">
									<input type="text" class="form-control" id="inputMonth"
										name="inputMonth" placeholder="04">

								</div>
								<label for="inputMonth" class="col-1 col-form-label">월</label>
								<div class="col-2">
									<input type="text" class="form-control" id="inputDay"
										name="inputDay" placeholder="01">

								</div>
								<label for="inputDay" class="col-1 col-form-label">일</label>
							</div>
						
							<div style="color:red;"><p><small>* 발급일자는 형식을 지켜주세요</small></p></div>

						</div>
						
					</div>
					<div class="form-group row">
						<label for="dcry_etc" class="col-sm-2 col-form-label">비고</label>
						<div class="col-sm-10">

							<textarea class="form-control" rows="3" placeholder="비고사항을 적어보세요"
								name="dcry_etc"></textarea>

						</div>
					</div>
					<input type="hidden" name="sic_id" value="${param.sic_id }">
					<input type="hidden" name="hos_id" value="${param.hos_id }">
					<input type="hidden" name="artr_no" value="${param.artr_no }">
					<input type="hidden" name="rqst_no" value="${param.rqst_no }">

				</div>
				<!-- /.card-body -->
				<div class="card-footer  text-center">
					<input type="submit" class="btn btn-secondary" value="업로드">
				</div>
			</form>


		</div>
	</section>



	<!-- bs-custom-file-input -->
	<script src="plugins/bs-custom-file-input/bs-custom-file-input.min.js"></script>
	<script type="text/javascript">
$(document).ready(function () {
	  bsCustomFileInput.init();
	});</script>

</div>
	<!-- ./wrapper -->
	<%@ include file="/layout/all_footer.jsp"%>
	</body>
	</html>