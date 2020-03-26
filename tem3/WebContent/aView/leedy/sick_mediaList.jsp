<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ include file="/layout/sick_head.jsp"%>
<%@ include file="/layout/sick_menu.jsp"%>
</head>

<body>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<div class="container-fluid">
			<div class="row mb-2">
				<div class="col-sm-6">
					<h1>sick_mediaList</h1>
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

		<div class="card">

			<div class="card table-responsive pad card text-center">
				<div class="btn-group btn-group-toggle">
					<label class="btn btn-secondary active">
						기록물
					</label> 
				</div>
			</div>

			<!-- /.card-header -->
			<!-- form start -->

			<form role="form" method="post" enctype="multipart/form-data"
				action="" class="form-horizontal">



				<!-- Modal -->

				<div class="modal fade" id="exampleModal" tabindex="-1"
					role="dialog" aria-labelledby="exampleModalLabel"
					aria-hidden="true">
					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="exampleModalLabel">사람이름+님의 기록물</h5>
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
							<div class="modal-body">
								<img class="mw-100 mh-100"
									src="${pageContext.request.contextPath}/upload/고양.jpg">사진
								파일이 떠용
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary"
									data-dismiss="modal">확인</button>
								<button type="button" class="btn btn-primary"
									onclick="location.href='fileCall.jsp'">다운로드</button>
							</div>
						</div>
					</div>
				</div>


				<div class="card-body">
					<div>
						<div class="card mb-3 abc" style="max-width: 750px; float: left;">
							<div class="row no-gutters">
								<div class="col-md-4">
									<a href="sick_detailList.jsp" data-toggle="modal"
										data-target="#exampleModal"> 
							
										<img src="${pageContext.request.contextPath}/upload/고양.jpg"
										class="card-img" alt="..."></a>
								</div>
								<div class="col-md-8">
									<div class="card-body">
										<h4 class="card-title">이다연</h4>
										<br>
										<p class="card-text">
											기록물분류: CT <br> 발급병원: 예담내과 <br> 발급일자: 20200101
										</p>
										<p class="card-text">
											<small class="text-muted">1시간 전</small>
										</p>
									</div>
								</div>
							</div>
						</div>

						<div class="card mb-3 abc" style="max-width: 750px; float: right;">
							<div class="row no-gutters">
								<div class="col-md-4 ">
									<a href="sick_detailList.jsp" data-toggle="modal"
										data-target="#exampleModal"> <img src="${pageContext.request.contextPath}/upload/고양.jpg"
										class="card-img" alt="..."></a>
								</div>
								<div class="col-md-8">
									<div class="card-body">
										<h4 class="card-title">이다연</h4>
										<br>
										<p class="card-text">
											기록물분류: X-ray <br> 발급병원: 예담외과 <br> 발급일자: 20200101
										</p>
										<p class="card-text">
											<small class="text-muted">어제</small>
										</p>
									</div>
								</div>
							</div>
						</div>

						<div class="card mb-3 abc" style="max-width: 750px; float: right;">
							<div class="row no-gutters">
								<div class="col-md-4 ">
									<a href="sick_detailList.jsp" data-toggle="modal"
										data-target="#exampleModal"> <img src="${pageContext.request.contextPath}/upload/고양.jpg"
										class="card-img" alt="..."></a>
								</div>
								<div class="col-md-8">
									<div class="card-body">
										<h4 class="card-title">이다연</h4>
										<br>
										<p class="card-text">
											기록물분류: X-ray <br> 발급병원: 예담외과 <br> 발급일자: 20200101
										</p>
										<p class="card-text">
											<small class="text-muted">어제</small>
										</p>
									</div>
								</div>
							</div>
						</div>



					</div>

				</div>

			</form>
		</div>
	</section>


	<!-- Control Sidebar -->
	<aside class="control-sidebar control-sidebar-dark">
		<!-- Control sidebar content goes here -->
	</aside>
	<!-- /.control-sidebar -->


	<!-- ./wrapper -->
</div>



<%@ include file="/layout/all_footer.jsp"%>

</body>
</html>
