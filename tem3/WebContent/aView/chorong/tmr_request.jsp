<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<%@ include file="/layout/sick_head.jsp"%>
<script src="<%=request.getContextPath()%>/aView/chorong/js/chorong.js"></script>
<%@ include file="/layout/sick_menu.jsp"%>

<!-- 관심병원리스트페이지 S30에서 받아올 데이터도 고려할 것.
	/STmrRequest.do
		/STmrDone.do 
		-->

<!-- 컨텐츠 위치 -->
<!-- Content Wrapper. Contains page content -->
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
								<div class="col-sm-6">
									<div class="form-group">
										<label for="hosName">병원명</label> <input type="text"
											id="hosName" name="hosName" class="form-control" value="hos1"
											disabled>
										<!-- 병원id값 가져오기 -->
										<br> <label for="hosAddr">주소</label>
										<textarea id="hosAddr" name="hosAddr" class="form-control"
											disabled>주소주소</textarea>
										<br>
									</div>
								</div>
							</div>
						</div>
					</div>




					<!-- 신청 폼 div시작 -->
					<div class="card card-secondary">
						<!-- 신청폼헤더 -->
						<div class="card-header">
							<h3 class="card-title">접수내용</h3>
						</div>
						<!-- /.card-header 끝 신청폼말머리-->

						<!-- 신청폼바디 // form 태그 시작-->
						<div class="card-body">
							<!-- @질문 : role속성 뭐임 -->
							<form role="form" id="frm" name="frm" method="post">



								<div class="row">
									<div class="col-sm-6">


										<!-- 2. 의사 선택 기능 구현_선택불가능 항목은 색으로 구분 -->
										<div class="form-group">
											<label for="Dr">진료받을 의사 선택</label> 
											<select
												class="custom-select" id="Dr" name="Dr">
												<option value="24"><!-- ARTR_NO의사 아이디 --> 성명: 조선아 /
													진료과목: 예시과목
												</option>
												<option value="">성명: / 진료과목:</option>
											</select>
										</div>

										<!-- 3. 선생님께 한마디 입력란  -->
										<div class="form-group">
											<label for="toDr">의사선생님에게 한 마디</label>
											<textarea id="toDr" name="toDr" class="form-control"
												placeholder="증상, 기타사항을 입력해주세요"></textarea>
											<!-- <input type="text" name="email" class="form-control" 
                    	id="toDr" name="toDr" placeholder="증상, 기타사항을 입력해주세요"> -->
										</div>

										<!-- 4. 기록물 업로드 버튼 구현 / 모달창 띄우기?? -->
										<div class="form-group">
											<label for="dcUpload">진료시 의료진이 참고할 기록물 첨부</label> 
											<input type="hidden" class="btn btn-default" id="dcUpload"
												name="dcUpload" value="1">
											<!-- 임시 -->
										</div>


										<!-- 5. 도착예상시간 선택 기능 구현_ 당일 해당 시간 접수가능한지 체크하는 펑션 필요-->
										<div class="form-group">
											<label>도착예상시간</label> <select class="custom-select" id="hour"
												name="hour" style="width: 20%;">
												<option>09</option>
												<option>10</option>
												<option>11</option>
												<option>12</option>
												<option>13</option>
												<option>14</option>
												<option>15</option>
												<option>16</option>
												<option>17</option>
												<option>18</option>
												<option>19</option>
												<option>20</option>
												<option>21</option>
												<option>22</option>
											</select>&nbsp;시 &nbsp;&nbsp;&nbsp; <select class="custom-select"
												id="minute" name="minute" style="width: 20%;">
												<option>00</option>
												<option>30</option>
											</select>&nbsp;분
										</div>



									</div>
								</div>


								
								<input type="hidden" id="id" name="id" value="sic1">
								<!-- 로그인중인 아이디 -->
							</form>
						</div>
						<!-- /.card-body 끝 신청폼바디-->



						<!-- 신청폼푸터 // 제출 및 기타 버튼 위치 -->
						<!-- 5. 완료버튼 구현 -> 클릭시 접수완료 페이지로 이동 -->
						<div class="card-footer">
							<input type="reset" class="btn btn-secondary" value="초기화">
							<button onclick="formSubmit()"
								class="btn btn-secondary float-right">접수하기</button>
							<!-- 
				 	전: 병원정보 상세조회 페이지(선택한 병원정보를넘겨받아야 함)
				 	후: 예약날짜 선택 페이지, (진료신청시)기록물 선택 페이지
				  -->
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


<%@ include file="/layout/all_footer.jsp"%>



<!-- 유효성 체크 및 값 넘기기 -->
<script>
	//필수입력사항 체크

	//접수가능여부 제어
	//병원 스케줄(휴일을 예약가능날짜에서 제외, 영업상태속성확인)
	//,의사 스케줄(의사휴일을 예약가능날짜에서 제외)
	//,병원기본정보 등이필요. //프로시저 이용?

	//도착예상시간 선택가능값 제어
	function formSubmit() {
		frm.action = "STmrDone.do";
		frm.submit();
	}
</script>
</body>
</html>
