<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title></title>

<!-- Tell the browser to be responsive to screen width -->
<meta name="viewport" content="width=device-width, initial-scale=1">


<!-- CSS 링크 -->
<!-- Font Awesome -->
<link rel="stylesheet"
	href="../../plugins/fontawesome-free/css/all.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="../../dist/css/adminlte.min.css">
<!-- Google Font: Source Sans Pro -->
<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700"
	rel="stylesheet">

<!-- js 링크 -->
<!-- jQuery -->
<script src="../../plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="../../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="../../dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="../../dist/js/demo.js"></script>
</head>
<body>
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<div style="text-align: center" class="col-sm-12">
			<h1>보유한 기록물 목록</h1>
		</div>
	</section>



	<!-- //모달창 구성 참고하기
	1. 기록물 리스트 출력_blob I/O도 가능해야 
	2. 항목 선택기능 구현
	3. 선택완료 버튼 구현 -> 해당신청 페이지로 이동
 -->
	<!-- 
 	이전:"당일접수 신청 페이지, 예약신청 페이지"	
 	다음:"당일접수 신청 페이지, 예약신청 페이지"
  -->



	<!-- Main content -->
	<section class="content">

		<div class="card card-info">

			<!-- /.card-header -->
			<!-- form start -->
			<form class="form-horizontal">
				<div class="card-body">

					<div class="row">

						<!-- ./col -->
						<div class="col-lg-6 ">
							<!-- small card -->
							<div class="small-box bg-success">
								<div class="inner">
									<h5>진단서</h5>
									<br>
									<div>
										<p>
											발급병원: 예담내과 <br> 환자명: 이다연 <br> 발급일자: 20200101
										</p>
									</div>
								</div>
								<div class="icon"></div>
								<a href="sick_detailList.jsp" class="small-box-footer"> 첨부하기
									<i class="fas fa-arrow-circle-right"></i>
								</a>
							</div>
						</div>
						<!-- ./col -->
						<div class="col-lg-6 ">
							<!-- small card -->
							<div class="small-box bg-warning">
								<div class="inner">
									<h5>보험서류</h5>
									<br>

									<div>
										<p>
											발급병원: 예담외과 <br> 환자명: 이다연 <br> 발급일자: 20200101
										</p>
									</div>

								</div>
								<div class="icon"></div>
								<a href="sick_detailList.jsp" class="small-box-footer"> 첨부하기
									<i class="fas fa-arrow-circle-right"></i>
								</a>
							</div>
						</div>
						<!-- ./col -->

					</div>
				</div>

			</form>

		</div>
	</section>


</body>
</html>