<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/layout/hos_head.jsp"%>
<style>
.btn {
	margin: 5px;
	font-size:0.9rem;
}
</style>
<%@ include file="/layout/hos_menu.jsp"%>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<div class="container-fluid">
			<div class="row mb-2">
				<div class="col-sm-6">
					<h1>진료신청현황 상세</h1>
				</div>
			</div>
		</div>
	</section>

	<!-- Main content -->
	<section class="content">
		<div class="card-body pt-0" style="width: 360px;">
			<div class="row d-flex align-items-stretch">
				<div class="col-12 col-sm-6 col-md-4 d-flex align-items-stretch">

					<div class="card bg-light">
						<form>
							<div class="card-header text-muted border-bottom-0"></div>

							<div class="card-body pt-0">
								<div class="row">
									<div class="col-sm-12" id="itemsWrapper">
										<div class="item rqDetailInfo">
											<span class="rqDetailLabel">환자이름</span><span id="rqstTy">${param.sicName}</span>
										</div>
										<div class="item rqDetailInfo">
											<span class="rqDetailLabel">전화번호</span><span id="hosName">${param.sicPhone}</span>
										</div>
										<div class="item rqDetailInfo">
											<span class="rqDetailLabel">진료타입</span><span id="hosPhone"></span>
										</div>
										<div class="item rqDetailInfo">
											<span class="rqDetailLabel">진료타입</span><span id="hosPhone"></span>
										</div>
										<div class="item rqDetailInfo">
											<span class="rqDetailLabel">담당의사 및 진료과목</span><span
												id="artrName"></span>
										</div>
										<div class="item rqDetailInfo">
											<span class="rqDetailLabel">의사선생님께 한 마디</span><span id="msg"></span>
										</div>
									</div>
								</div>
							
							
							
							
							
							
								<div class="row">
									<div class="col-7">
										<h2 class="lead">
											<b></b>
										</h2>
										<ul class="ml-4 mb-0 fa-ul text-muted">
											<li class="small"><span class="fa-li"> <i
													class="fas fa-lg fa-phone"></i></span> 전화번호&nbsp; <input
												type="hidden">${param.sicPhone}</li>
											<!--li class="small"><span class="fa-li">
												<i class="fas fa-lg fa-building"></i></span>
														주소:&nbsp;
														<input type="hidden">${list.addr}</li><br>-->
										</ul>
									</div>
									<div class="col-5 text-center">
										<img src="../../dist/img/user1-128x128.jpg" alt=""
											class="img-circle img-fluid">
									</div>
									<br> <br>
									<p class="text-sm">
										<b>:</b>&nbsp;<input type="hidden">${dto.rqstTy}<br>
										<b>:</b>&nbsp;<input type="hidden">${dto.rqstDt}<br>
										<b>선생님께 한마디:</b>&nbsp;<input type="hidden">${dto.msg}<br>
									</p>
								</div>
							</div>

							<div class="card-footer">
								<div class="row text-center">
									<button type="button" onclick="" class="btn btn-secondary col">
										진료완료</button>
									&nbsp;
									<button type="button" onclick="" class="btn btn-secondary col">
										진료취소</button>
								</div>
								<div class="row text-center">
									<button type="button"
										onclick="location.href='HHospitalUpload.do?sic_id=${dto.sicId }&hos_id=${dto.hosId}&artr_no=${dto.artrNo }&rqst_no=${dto.rqstNo}'"
										class="btn btn-secondary col">진료기록물 발급</button>
									&nbsp;
									<button type="button"
										onclick="location.href='HHospitalInquiry.do.do?sic_id=${dto.sicId }&hos_id=${dto.hosId}&artr_no=${dto.artrNo }&rqst_no=${dto.rqstNo}'"
										class="btn btn-secondary col">진료기록물 조회</button>
								</div>
							</div>
						</form>
					</div>
					<!-- /.card -->


				</div>
			</div>

			<br>
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
