<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../0_hos_layout_header.jsp"%>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<div class="container-fluid">
			<div class="row mb-2">
				<div class="col-sm-6">
					<h1>sick_healModify</h1>
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
				<h3 class="card-title">건강정보 수정 페이지</h3>
			</div>
			<!-- /.card-header -->
			<!-- form start -->
			<form class="form-horizontal" method=post action="../kjr/sick_main.jsp">
				<div class="card-body">

					<div class="form-group row">
						<label for="inputHstcs" class="col-sm-2 col-form-label">병력</label>
						<div class="col-sm-10">
							<select class="form-control select2" style="width: 100%;"
								id="inputHstcs">
								<option selected="selected">당뇨</option>
								<option>저혈압</option>
								<option>고혈압</option>
								<option>빈혈</option>
								<option>위염</option>
								<option>위암</option>
								<option>간암</option>
								<option>폐암</option>
							</select>
						</div>
					</div>
					<div class="form-group row">
						<label for="inputMedi" class="col-sm-2 col-form-label">복용약물</label>
						<div class="col-sm-10">
							<select class="form-control select2" style="width: 100%;"
								id="inputMedi">
								<option selected="selected">당뇨</option>
								<option>저혈압</option>
								<option>고혈압</option>
								<option>빈혈</option>
								<option>위염</option>
								<option>위암</option>
								<option>간암</option>
								<option>폐암</option>
							</select>
						</div>
					</div>
					<div class="form-group row">
						<label for="inputBdp" class="col-sm-2 col-form-label">혈액형</label>
						<div class="col-sm-10">
							<select class="form-control select2" style="width: 100%;"
								id="inputMedi">
								<option selected="selected">Rh-o</option>
								<option>Rh-a</option>
								<option>Rh-ab</option>
								<option>Rh-b</option>
								<option>Rh+o</option>
								<option>Rh+a</option>
								<option>Rh+ab</option>
								<option>Rh+b</option>
							</select>
						</div>
					</div>
					<div class="form-group row">
						<label for="inputAllrgy" class="col-sm-2 col-form-label">알레르기</label>
						<div class="col-sm-10">
							<select class="form-control select2" style="width: 100%;"
								id="inputAllrgy">
								<option selected="selected">갑각류</option>
								<option>계란</option>
								<option>견과류</option>
								<option>먼지</option>
							</select>
						</div>
					</div>
					<div class="form-group row">
						<label for="inputHtEtc" class="col-sm-2 col-form-label">비고</label>
						<div class="col-sm-10">
							<textarea class="form-control" rows="3" placeholder="비고사항을 적어보세요"
								id="inputHtEtc"></textarea>
						</div>
					</div>

				</div>
				<!-- /.card-body -->
				<div class="card-footer  text-center">
					<button type="submit" class="btn btn-info">완료</button>
					<!-- cancel에는 button type reset? -->
					<button type="reset" class="btn btn-default">Cancel</button>
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

<%@ include file="../../0_all_layout_footer.jsp"%>
