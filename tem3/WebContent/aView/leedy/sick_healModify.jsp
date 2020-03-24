<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/layout/hos_head.jsp"%>
<%@ include file="/layout/hos_menu.jsp"%>

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
			<form class="sickHeal" method=post action="SSickHealModifyGo.do">
				<div class="card-body">
					<div class="form-group row">
						<label for="chrdis" class="col-sm-2 col-form-label">과거병력</label>
						<div class="col-sm-3">
							<input type="checkbox" style="width: 100%;" value="HJ01"
								name="chrdis" id="chrdis">당뇨
							<input type="checkbox" style="width: 100%;" value="HJ02" 
								 name="chrdis" id="chrdis">저혈압
							<input type="checkbox" style="width: 100%;" value="HJ03"
								name="chrdis" id="chrdis">고혈압
							<input type="checkbox" style="width: 100%;" value="HJ04" 
								name="chrdis" id="chrdis">빈혈
							<input type="checkbox" style="width: 100%;" value="HJ05"
								name="chrdis" id="chrdis">위염 
							<input type="checkbox" style="width: 100%;" value="HJ06" 
								name="chrdis" id="chrdis">위암
							<input type="checkbox" style="width: 100%;" value="HJ07"
								name="chrdis" id="chrdis">간암
							<input type="checkbox" style="width: 100%;" value="HJ08" 
								name="chrdis" id="chrdis">폐암
						</div>
					</div>
					<div class="form-group row">
						<label for="hstcs" class="col-sm-2 col-form-label">현재지병</label>
						<div class="col-sm-3">
							<input type="checkbox" style="width: 100%;" value="HJ01"
								name="hstcs" id="hstcs">당뇨 
							<input type="checkbox" style="width: 100%;" value="HJ02" 
								name="hstcs" id="hstcs">저혈압
							<input type="checkbox" style="width: 100%;" value="HJ03"
								name="hstcs" id="hstcs">고혈압 
							<input type="checkbox" style="width: 100%;" value="HJ04" 
								name="hstcs" id="hstcs">빈혈
							<input type="checkbox" style="width: 100%;" value="HJ05"
								name="hstcs" id="hstcs">위염
							 <input type="checkbox" style="width: 100%;" value="HJ06" 
							 	name="hstcs" id="hstcs">위암
							<input type="checkbox" style="width: 100%;" value="HJ07"
								name="hstcs" id="hstcs">간암 
							<input type="checkbox" style="width: 100%;" value="HJ08" 
								name="hstcs" id="hstcs">폐암
						</div>
					</div>
					<div class="form-group row">
						<label for="medi" class="col-sm-2 col-form-label">복용약물</label>
						<div class="col-sm-3">
								<input type="checkbox" style="width: 100%;" value="DJ01"
								name="medi" id="medi">수면제
								<input type="checkbox" style="width: 100%;" value="DJ02"
								name="medi" id="medi">혈압약
							    <input type="checkbox" style="width: 100%;" value="DJ03"
								name="medi" id="medi">피임약 
								<input type="checkbox" style="width: 100%;" value="DJ04" 
								name="medi" id="medi">당뇨약
							    <input type="checkbox" style="width: 100%;" value="DJ05"
								name="medi" id="medi">항정신안정제
						</div>
					</div>
					<div class="form-group row">
						<label for="bdp" class="col-sm-2 col-form-label">혈액형</label>
						<div class="col-sm-3">
							<input type="checkbox" style="width: 100%;" value="BM01"
								name="bdp" id="bdp">rh-o
							<input type="checkbox" style="width: 100%;" value="BM02" 
								name="bdp" id="bdp">rh-a
							<input type="checkbox" style="width: 100%;" value="BM03"
								name="bdp" id="bdp">rh-ab 
							<input type="checkbox" style="width: 100%;" value="BM04" 
								name="bdp" id="bdp">rh-b
							<input type="checkbox" style="width: 100%;" value="BP01"
								name="bdp" id="bdp">rh+o
							<input type="checkbox" style="width: 100%;" value="BP02" 
							 	name="bdp" id="bdp">rh+a
							<input type="checkbox" style="width: 100%;" value="BP03"
								name="bdp" id="bdp">rh+b
							<input type="checkbox" style="width: 100%;" value="BP04" 
								name="bdp" id="bdp">rh+ab
						</div>
					</div>
					<div class="form-group row">
						<label for="allrgy" class="col-sm-2 col-form-label">알레르기</label>
						<div class="col-sm-3">
								<input type="checkbox" style="width: 100%;" value="AJ01"
								name="allrgy" id="allrgy">계란 알레르기
								<input type="checkbox" style="width: 100%;" value="AJ02"
								name="allrgy" id="allrgy">견과류 알레르기
							    <input type="checkbox" style="width: 100%;" value="AJ03"
								name="allrgy" id="allrgy">갑각류 알레르기
								<input type="checkbox" style="width: 100%;" value="AJ04" 
								name="allrgy" id="allrgy">먼지 알레르기
							    <input type="checkbox" style="width: 100%;" value="AJ05"
								name="allrgy" id="allrgy">땅콩 알레르기
						</div>
					</div>
					<div class="form-group row">
						<label for="htEtc" class="col-sm-2 col-form-label">비고</label>
						<div class="col-sm-10">
							<textarea class="form-control" rows="3" placeholder="비고사항을 적어보세요"
								id="htEtc"></textarea>
						</div>
					</div>

				</div>
				<!-- /.card-body -->
				<div class="card-footer  text-center">
					<button type="submit" class="btn btn-info">수정완료</button>
					<!-- cancel에는 button type reset? -->
					<button type="button" class="btn btn-default"
						onclick="javascript:history.go(-1)">수정취소</button>
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
