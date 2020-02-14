<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ include file="/layout/sick_head.jsp"%>
<script src="<%=request.getContextPath()%>/aView/chorong/js/chorong.js"></script>
<%@ include file="/layout/sick_menu.jsp"%>

<!-- 
		
		
		2. 대기인원수
		((웹소켓/타이머)이용해 실시간으로 변화값 출력)
		3. 접수취소 버튼
		4. 공지사항 출력
		(병원 내원 시 병원에 알려/ 취소하면 패널티 있음 / 병원사정으로 취소 가능성)
		
		"실시간 업데이트가 가능해야 함. ajax구현
			접수시 예상 대기 인원수를 여기서도 출력?"
	 -->

<!-- 
	 	이전:진료현황 리스트 페이지
	 	다음:"병원정보 상세조회 페이지,진료현황 리스트 페이지,(접수취소버튼 누를 경우)"
	  -->

<!-- 컨텐츠 위치 -->
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<div class="container-fluid">
			<div class="row mb-2">
				<div class="col-sm-6">
					<h1>접수내역</h1>
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
		<div class="container-fluid">
			<div class="row">
				<!-- left column -->
				<div class="col-md-12">



					<!-- 1. 신청한 병원 상세정보
          (병원이름, 의사이름, 주소, 진료가능시간) -->
					<div class="card card-secondary">
						<div class="card-header">
							<h3 class="card-title">접수정보확인</h3>
						</div>
						<div class="card-body">

							<div class="row">
								<div class="col-sm-6">
									<div class="form-group">
										<!--  -->
										<label for="hosName">병원명</label> <input type="text"
											id="hosName" name="hosName" class="form-control"
											value="${dto.artr_name}병원명" disabled> <br> <label
											for="hosAddr">주소</label>
										<textarea id="hosAddr" name="hosAddr" class="form-control"
											disabled>${dto.artr_name}주소주소</textarea>
										<br> <label for="hosTel">연락처</label> <input type="text"
											id="hosTel" name="hosTel" class="form-control"
											value="${dto.artr_name}연락처" disabled> <br> <label
											for="DrInfo">의사 및 진료과목</label> <input type="text" id="DrInfo"
											name="DrInfo" class="form-control"
											value="${dto.artr_name}의사이름 진료과목" disabled> <br>
										<label for="medTime">도착예상시간</label> <input type="text"
											id="medTime" name="medTime" class="form-control"
											value="도착예상시간" disabled> <br> <label for="toDr">의사선생님에게
											한 마디</label>
										<textarea id="toDr" name="toDr" class="form-control" disabled></textarea>
										<!-- <input type="text" name="email" class="form-control" 
                    	id="toDr" name="toDr" placeholder="증상, 기타사항을 입력해주세요"> -->
										<br>
										<!-- 	3. 예상 대기인원수 출력 (프로시저 이용) -->
										<label for="waiting">예상대기인원수</label> <input type="text"
											id="waiting" name="waiting" class="form-control"
											value="예상대기인원수  n명" disabled>
									</div>
								</div>
							</div>
						</div>







						<!-- 신청폼푸터 // 제출 및 기타 버튼 위치 -->
						<!-- 
					3. 확인버튼 구현
					-> 확인버튼 클릭시 접수현황 페이지로 이동
					4. 접수취소 버튼 구현
					-> 접수취소 버튼 클릭 : 취소완료 팝업페이지 출력
					-> 접수내역 페이지로 이동
				-->
						<div class="card-footer">
							<button onclick="toBeforeMedList()" class="btn btn-secondary">확인</button>
							<button onclick="cancelRes()" class="btn btn-secondary float-right">접수취소</button>
						</div>
					</div>
					<!-- 
					 	넘겨받는:당일접수 신청 페이지
					 	넘기는:접수신청현황페이지
					  -->


				</div>
				<!--/.col (left) -->

				<!-- right column -->
				<div class="col-md-12">
				
				<div class="card card-secondary">
						<div class="card-header">
							<h3 class="card-title">주의사항</h3>
						</div>
						<div class="card-body">

							<div class="row">
								<div class="col-sm-12">
									<div>
										<span style="font-weight: bold;"> 1.</span> 병원 내원시 살려죠 서비스를 통해
										예약/접수하였다고 알려주세요.
									</div>
									<div>
										<span style="font-weight: bold;"> 2.</span> 예약/접수를 취소하실 경우 패널티가
										부여됩니다. (3회 취소시 서비스이용이 제한됩니다.)
									</div>
									<div>
										<span style="font-weight: bold;"> 3.</span> 예약/접수는 병원사정으로 인해
										취소될 가능성이 있습니다.
									</div>
								</div>
							</div>
						</div>
					</div>
				
				
				
				</div>
				<!--/.col (right) -->
			</div>
			<!-- /.row -->
		</div>
		<!-- /.container-fluid -->
	</section>
	<!-- /.content -->
</div>
<!-- /.content-wrapper -->


<%@ include file="/layout/all_footer.jsp"%>
<script>
	//취소시 발생 이벤트
	cancel.addEventListener("click", function(){
		var chCancel = confirm("접수를 취소하시겠습니까?");
		if(chCancel == true){
			alert("접수가 취소되었습니다.");
			//접수 처리하는 .do 요청(dao에서 접수내용 row삭제하고, med_beforeMedList.jsp로 redirection? forward?)
			location.href="med_beforeMedList.jsp";
		} 
	})
</script>
</body>
</html>
