<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<%@ include file="/layout/sick_head.jsp"%>
<script src="<%=request.getContextPath()%>/aView/chorong/js/chorong.js"></script>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/aView/chorong/css/chorong.css">
<%@ include file="/layout/sick_menu.jsp"%>

<!-- 
STmrRequest.do
		-->

<!-- 컨텐츠 위치 -->
<!-- Content Wrapper. Contains page content -->
<form id="frm" name="frm" method="post">

	<div class="content-wrapper">
		<!-- Content Header (Page header) -->
		<section class="content-header">
			<div class="container-fluid">
				<div class="row mb-2">
					<div class="col-sm-6">
						<h1>당일접수신청</h1>
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

						<!-- 1. 선택한 병원정보 출력   -->
						<div class="card card-secondary">
							<div class="card-header">
								<h3 class="card-title">선택한 정보 확인</h3>
							</div>
							<div class="card-body">

								<div class="row">
									<div class="col-sm-12">
										<div class="form-group">
											<label for="hosId">병원명</label> <input type="text"
												class="form-control" value="hos1" readonly>
												<!-- 임시 파라미터// dto.hosId 병원id값 가져와서 넘기는 것으로 수정하기  -->
												<input type="hidden" id="hosId" name="hosId"  value="hos1">
											<br> <label for="hosAddr">주소</label>
											<textarea id="hosAddr" name="hosAddr" class="form-control"
												disabled>주소주소${dto.hosAddr}</textarea>
											<br>
										</div>
									</div>
								</div>
							</div>
						</div>



						<div class="card card-secondary">
							<!-- 신청폼헤더 -->
							<div class="card-header">
								<h3 class="card-title">접수내용</h3>
							</div>
							<!-- /.card-header 끝 신청폼말머리-->

							<!-- 신청폼바디 // form 태그 시작-->
							<div class="card-body">


								<div class="row">
									<div class="col-sm-12">


										<!-- 2. 의사 선택 기능 구현_선택불가능 항목은 색으로 구분 -->
										<div class="form-group">
											<label for="artrNo">진료받을 의사 선택</label> <select
												class="custom-select" id="artrNo" name="artrNo">
												<option value="3"><!-- ARTR_NO의사 번호로 수정 -->
												성명:초롱김${dto.artrName } / 진료과목: 내과${dto.artrSub }
												</option>
												<option value="4">성명:선아조 / 진료과목:</option>
											</select>
										</div>

										<!-- 3. 선생님께 한마디 입력란  -->
										<div class="form-group">
											<label for="msg">의사선생님에게 한 마디</label>
											<textarea id="msg" name="msg" class="form-control"
												placeholder="증상, 기타사항을 입력해주세요"></textarea>
											<!-- <input type="text" name="email" class="form-control" 
                    	id="toDr" name="toDr" placeholder="증상, 기타사항을 입력해주세요"> -->
										</div>

										<!-- 4. 기록물 업로드 버튼 구현 / 모달창 띄우기?? -->
										<div class="form-group">
											<label for="dcryNo">진료시 의료진이 참고할 기록물 첨부</label> <input
												type="hidden" class="btn btn-default" id="dcryNo"
												name="dcryNo" onclick="toAddDcry()">
											<!-- 임시 -->
										</div>


										<!-- 5. 도착예상시간 선택 기능 구현_ 당일 해당 시간 접수가능한지 체크하는 펑션 필요-->
										<div class="form-group">
											<label for="ifTime">도착예상시간</label><br>
											<select
												class="custom-select" id="ifTime" name="ifTime"
												style="width: 20%;">
												<option value="05분 후">05</option>
												<option value="10분 후">10</option>
												<option value="15분 후">15</option>
												<option value="20분 후">20</option>
											</select>&nbsp;분 후 도착 예정
										</div>



									</div>
								</div>





							</div>
							<!-- /.card-body 끝 신청폼바디-->



							<!-- 신청폼푸터 // 제출 및 기타 버튼 위치 -->
							<!-- 5. 완료버튼 구현 -> 클릭시 접수완료 페이지로 이동 -->
							<div class="card-footer">
								<input type="hidden" id="id" name="id" value="sic1">
								<!-- 로그인중인 아이디(임시로 sic1로 설정) 나중에 수정-->

								<input type="reset" class="btn btn-secondary" value="초기화">
								<input type="submit" class="btn btn-secondary float-right"
									value="접수하기" onclick="tmrFormSubmit()">

							</div>
						</div>



					</div>
					<!--/.col (left) -->




					<!-- right column -->
					<div class="col-md-6"></div>
					<!--/.col (right) -->
				</div>
				<!-- /.row -->
			</div>
			<!-- /.container-fluid -->
		</section>
		<!-- /.content -->
	</div>
	<!-- /.content-wrapper -->
</form>

<%@ include file="/layout/all_footer.jsp"%>



<!-- 유효성 체크 및 값 넘기기 -->
<script>
	//필수입력사항 체크
	//(기록물빼고 전부 다 입력해야 해)

	//접수가능여부 제어
	//병원 스케줄(휴일을 예약가능날짜에서 제외, 영업상태속성확인)
	//,의사 스케줄(의사휴일을 예약가능날짜에서 제외)
	//,병원기본정보 등이필요. //프로시저 이용?


	//도착예상시간 선택가능값 제어 후 전달
	function tmrFormSubmit() {
		alert("접수신청이 완료되었습니다.");
		frm.action = "SInsertTmr.do"; //접수신청처리 후  결과페이지로
		frm.submit();
	}
</script>
</body>
</html>
