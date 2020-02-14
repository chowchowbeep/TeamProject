<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="/layout/hos_head.jsp"%>
<%@ include file="/layout/hos_menu.jsp"%>

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
			<form class="form-horizontal">
				<div class="card-body">

					<div class="form-group row">
						<label for="callSicId" class="col-sm-2 col-form-label">회원ID</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="callSicId"
								placeholder="회원ID 불러오기" disabled>
						</div>
					</div>
					<div class="form-group row">
						<label for="callSicPw" class="col-sm-2 col-form-label">회원PW</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="callSicPw"
								placeholder="회원PW 불러오기//PW 수정가능하지 않아?">
						</div>
					</div>
					<div class="form-group row">
						<label for="callSicName" class="col-sm-2 col-form-label">이름</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="callSicName"
								placeholder="회원이름 불러오기" disabled>
						</div>
					</div>
					<div class="form-group row">
						<label for="callSicPhone" class="col-sm-2 col-form-label">전화번호</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="callSicPhone"
								placeholder="전화번호 불러오기/수정 가능">
						</div>
					</div>

					<div class="form-group row">
						<label for="checkSicStt" class="col-sm-2 col-form-label">패널티
							상태</label>
						<div class="col-sm-10">
							<input type="email" class="form-control" id="checkSicStt"
								placeholder="패널티 상태 표시" disabled>
						</div>
					</div>


				</div>
				<!-- /.card-body -->
				<div class="card-footer  text-center">
					<button type="submit" class="btn btn-info">수정완료</button>
					<!-- cancel에는 button type reset? -->
					<button type="reset" class="btn btn-default">취소</button>
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
