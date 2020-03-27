<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="/layout/sick_head.jsp"%>
<%@ include file="/layout/sick_menu.jsp"%>


<script>
</script>
</head>
<body>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<div class="container-fluid">
			<div class="row mb-2">
				<div class="col-sm-6">
					<h1>sick_memCheck</h1>
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
				<h3 class="card-title">회원정보 확인</h3>
			</div>
			<!-- /.card-header -->
			<!-- form start -->
			<form name="sickChk" action="SSickMemModify.do" method="post" onsubmit="" class="form-horizontal">
				<div class="card-body">

					<div class="form-group row">
						<label for="callSicId" class="col-sm-2 col-form-label">회원ID</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="sic_id" name="sic_id"
								value="${dto.sicId }" readonly	>
						</div>
					</div>
									<div class="form-group row">
						<label for="callSicName" class="col-sm-2 col-form-label">이름</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="sic_name" name="sic_name"
								value="${dto.sicName}" readonly>
						</div>
					</div>
					<div class="form-group row">
						<label for="callSicPhone" class="col-sm-2 col-form-label">전화번호</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="sic_phone" name="sic_phone"
								value="${dto.sicPhone}" readonly>
						</div>
					</div>

					<div class="form-group row">
						<label for="checkSicStt" class="col-sm-2 col-form-label">회원상태</label>
						<div class="col-sm-10">
							<input type="email" class="form-control" id="sic_stt" name="sic_stt"
								value="${dto.sicSttNm}" readonly>
						</div>
					</div>
					<div class="form-group row">
						<label for="checkSicStt" class="col-sm-2 col-form-label">로그인 방법</label>
						<div class="col-sm-10">
							<input type="email" class="form-control" id="sic_login" name="sic_login"
								value="${dto.sicLoginNm}" disabled>
						</div>
					</div>


				</div>
				<!-- /.card-body -->
				<div class="card-footer  text-center">
					<button type="submit" class="btn btn-secondary" >수정하기</button>
					<!-- cancel에는 button type reset? -->
					<button type="reset" class="btn btn-default" onclick="location.href='SSickMain.do'">확인</button>
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
