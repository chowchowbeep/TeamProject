<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/layout/sick_head.jsp"%>
<script src="<%=request.getContextPath()%>/aView/chorong/js/chorong.js"></script>
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

		<div class="card card-secondary">

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
								<a href="sick_detailList.jsp" id="attach1" class="small-box-footer"> 첨부하기
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
								<a href="STmrSelectDcry.do" id="attach2" class="small-box-footer"> 첨부하기
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
<script>
	$('#')

</script>

</body>
</html>