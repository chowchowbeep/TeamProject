<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="/layout/hos_head.jsp"%>
<%@ include file="/layout/hos_menu.jsp"%>


<!-- DB에서 수정할 회원 정보 가져오기 -->
<!-- session. getAttribute -->



<script>
function modifyValue(){
	
	if(!sickMem.sic_pw.value){
		alert("변경할 비밀번호를 입력하세요.");
		sickMem.sic_pw.focus();
		return false;
	}
	
	if(!sickMem.sic_phone.value){
		alert("변경할 전화번호를 입력하세요.");
		sickMem.sic_phone.focus();
		return false;
	}
	
	return true;
}


</script>


</head>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<div class="container-fluid">
			<div class="row mb-2">
				<div class="col-sm-6">
					<h1>sick_memModify</h1>
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
				<h3 class="card-title">회원정보 수정 페이지</h3>
			</div>
			<!-- /.card-header -->
			<!-- form start -->
			<form name="sickMem" action="" method="post" onsubmit="" class="form-horizontal">
				<div class="card-body">

					<div class="form-group row">
						<label for="callSicId" class="col-sm-2 col-form-label">회원ID</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="sic_id" name="sic_id"
								value="${dto.sic_id }" disabled>
						</div>
					</div>
					<div class="form-group row">
						<label for="callSicPw" class="col-sm-2 col-form-label">회원PW</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="sic_pw" name="sic_pw"
								placeholder="회원 pw 수정하기">
						</div>
					</div>
					<div class="form-group row">
						<label for="callSicName" class="col-sm-2 col-form-label">이름</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="sic_name" name="sic_name"
								value="${dto.sic_name}" disabled>
						</div>
					</div>
					<div class="form-group row">
						<label for="callSicPhone" class="col-sm-2 col-form-label">전화번호</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="sic_phone" name="sic_phone"
								placeholder="회원 전화번호 수정 ">
						</div>
					</div>

					<div class="form-group row">
						<label for="checkSicStt" class="col-sm-2 col-form-label">패널티
							상태</label>
						<div class="col-sm-10">
							<input type="email" class="form-control" id="sic_stt" name="sic_stt"
								value="${dto.sic_stt}" disabled>
						</div>
					</div>


				</div>
				<!-- /.card-body -->
				<div class="card-footer  text-center">
					<button type="submit" class="btn btn-info" onclick="location.href='/tem3/aView/taeyoung/logintest.jsp'">수정완료</button>
					<!-- cancel에는 button type reset? -->
					<button type="reset" class="btn btn-default" onclick="location.href='/tem3/aView/taeyoung/logintest.jsp'">수정취소</button>
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
