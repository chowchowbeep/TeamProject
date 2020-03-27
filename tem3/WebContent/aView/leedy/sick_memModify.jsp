<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="/layout/sick_head.jsp"%>
<%@ include file="/layout/sick_menu.jsp"%>


<script>
function modifyValue(){

//정보수정 화면의 입력값 검사	
	if(!sickMem.sic_pw.value){
		alert("변경할 비밀번호를 입력하세요.");
		sickMem.sic_pw.focus();
		return false;
	}
	if(!sickMem.sic_pw_re.value){
		alert("확인할 비밀번호를 입력하세요.");
		sickMem.sic_pw_re.focus();
		return false;
	}
	
	if(sickMem.sic_pw.value != sickMem.sic_pw_re.value){
		alert("비밀번호를 동일하게 입력하세요.");
		sickMem.sic_pw_re.focus();
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
<body>
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
				<h3 class="card-title">회원정보 수정</h3>
			</div>
			<!-- /.card-header -->
			<!-- form start -->
			<form name="sickMem" action="SSickMemModifyGo.do" method="post" onsubmit="return modifyValue()" class="form-horizontal">
				<div class="card-body">

					<div class="form-group row">
						<label for="callSicId" class="col-sm-2 col-form-label">회원ID</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="sic_id" name="sic_id"
								value="${dto.sicId }" readonly>
						</div>
					</div>
					<div class="form-group row">
						<label for="callSicPw" class="col-sm-2 col-form-label">회원PW</label>
						<div class="col-sm-10">
							<input type="password" class="form-control" id="sic_pw" name="sic_pw"
								placeholder="회원 pw 수정하기">
						</div>
					</div>
					<div class="form-group row">
						<label for="callSicPw" class="col-sm-2 col-form-label">수정 PW확인</label>
						<div class="col-sm-10">
							<input type="password" class="form-control" id="sic_pw_re" name="sic_pw_re"
								placeholder="pw 확인하기" >
						</div>
					</div>
					<div class="form-group row">
						<label for="callSicName" class="col-sm-2 col-form-label">이름</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="sic_name" name="sic_name"
								value="${dto.sicName}" disabled>
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
						<label for="checkSicStt" class="col-sm-2 col-form-label">회원상태
							상태</label>
						<div class="col-sm-10">
							<input type="email" class="form-control" id="sic_stt" name="sic_stt"
								value="${dto.sicSttNm}" disabled>
						</div>
					</div>


				</div>
				<!-- /.card-body -->
				<div class="card-footer  text-center">
					<button type="submit" class="btn btn-secondary" >수정완료</button>
					<!-- cancel에는 button type reset? -->
					<button type="button" class="btn btn-default" onclick="javascript:history.go(-1)">수정취소</button>
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
