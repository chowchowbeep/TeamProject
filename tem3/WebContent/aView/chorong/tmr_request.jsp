<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<%@ include file="/layout/sick_head.jsp"%>
<script src="<%=request.getContextPath()%>/aView/chorong/js/chorong.js"></script>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/aView/chorong/css/chorong.css">
<%@ include file="/layout/sick_menu.jsp"%>






<!-- 모달 -->
<div class="modal" id="CheckNSubmit" role="dialog"
	aria-labelledby="CheckNSubmitLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="CheckNSubmitLabel"></h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body" id="modalBody"></div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
			</div>
		</div>
	</div>
</div>

<!-- 컨텐츠 위치 -->
<!-- Content Wrapper. Contains page content -->
<form id="frm" name="frm" action="SInsertTmr.do" method="post"
	onsubmit="return checkNSubmit()">

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
										<div class="checkSelected">
											<div class="hosId">
												<label for="hosId">병원명 : </label> <span>hos1${dto.hosName}</span><br>
												<!-- 임시 파라미터// dto.hosId 병원id값 가져와서 넘기는 것으로 수정하기  -->
												<input type="hidden" id="hosId" name="hosId" value="hos1">
											</div>
											<div class="hosAddr">
												<label for="hosAddr">주소 : </label> <span>주소주소${dto.hosAddr}</span><br>
											</div>
										</div>

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
										<div class="form-group" id="dcryNoWrapper">
											<label for="dcryNo">진료시 의료진이 참고할 기록물 첨부</label><br> <input
												type="button" class="btn btn-default" id="dcryNo"
												name="dcryNo" value="기록물 업로드" onclick="toAddDcry()">
										</div>


										<!-- 5. 도착예상시간 선택 기능 구현_ 당일 해당 시간 접수가능한지 체크하는 펑션 필요-->
										<div class="form-group">
											<label for="ifTime">도착예상시간</label><br> <select
												class="custom-select" id="ifTime" name="ifTime"
												style="width: 80px;">
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
									value="접수하기">

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
function checkNSubmit(){
	
}
</script>
</body>
</html>
