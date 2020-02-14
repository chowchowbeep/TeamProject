<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ include file="/layout/sick_head.jsp"%>
<script src="<%=request.getContextPath()%>/aView/chorong/js/chorong.js"></script>
<%@ include file="/layout/sick_menu.jsp"%>


<!-- 컨텐츠 위치 -->
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<div class="container-fluid">
			<div class="row mb-2">
				<div class="col-sm-6">
					<h1>진료예약신청</h1>
				</div>
				<div class="col-sm-6">
					<ol class="breadcrumb float-sm-right">
						<li class="breadcrumb-item"><a href="#">홈</a></li>
						<li class="breadcrumb-item active">진료신청</li>
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



					<!--
				1. 선택한 병원, 의사, 진료과목 정보 출력 
				c:if
				c:choose사용
				<c:forEach var="dto" items="${list }">
				다수의 dto필드값 가져올 때 // 의사 여러명인 경우
				</c:forEach>
			 -->



					<!-- 1. 선택한 병원정보 출력  -->
					<div class="card card-secondary">
						<div class="card-header">
							<h3 class="card-title">선택한 정보 확인</h3>
						</div>
						<div class="card-body">

							<div class="row">
								<div class="col-sm-6">
									<div class="form-group">
										<label for="hosName">병원명</label> <input type="text"
											id="hosName" name="hosName" class="form-control"
											value="${dto.artr_name}병원명" disabled>
									</div>
									<div class="form-group">
										<label for="hosAddr">주소</label>
										<textarea id="hosAddr" name="hosAddr" class="form-control"
											disabled>${dto.artr_name}주소주소</textarea>
									</div>
								</div>
							</div>
						</div>
					</div>


					<!-- 신청 폼 div시작 -->
					<div class="card card-secondary">
						<!-- 신청폼헤더 -->
						<div class="card-header">
							<h3 class="card-title">예약신청양식</h3>
						</div>
						<!-- /.card-header 끝 신청폼말머리-->

						<!-- 신청폼바디 // form 태그 시작-->
						<div class="card-body">
							<!-- @질문 : role속성 뭐임 -->
							<form role="form" id="frm" name="frm" action="예약완료 페이지"
								method="post" return="필수입력사항체크펑션">

								<div class="row">
									<div class="col-sm-6">


										<!-- 2. 의사 선택_ 선택한병원정보에서 -->
										<div class="form-group">
											<label for="Dr">진료받을 의사 선택</label> <select
												class="custom-select" id="Dr" name="Dr">
												<option value="${dto.artr_name}">성명: 예시성명 / 진료과목:
													예시과목</option>
												<option value="${dto.artr_name}">성명:
													${dto.artr_name} / 진료과목: ${dto.artr_sub}</option>
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

										<!-- 4. 기록물 업로드 버튼 구현 / 모달창 띄우기?? / 값 어떻게 담을지 체크하기 -->
										<div class="form-group">
											<label for="dcUpload">진료시 의료진이 참고할 기록물 첨부</label> 
											<input type="button" class="btn btn-default"
											 id="dcUpload" name="dcUpload" value="기록물 업로드">
										</div>


										<!--날짜선택 -->
										<section class="content">
											<div class="container-fluid">
												<!-- Main row -->
												<div class="row">
													<label>진료날짜 선택</label> <br>
													<!-- right col (We are only adding the ID to make the widgets sortable)-->
													<section class="col-lg-7 connectedSortable ui-sortable">


														<!-- Calendar -->
														<div class="card bg-gradient-success">
															<div class="card-header border-0 ui-sortable-handle"
																style="cursor: move;">

																<h3 class="card-title">
																	<i class="far fa-calendar-alt"></i> Calendar
																</h3>

															</div>
															<!-- /.card-header -->

															<div class="card-body pt-0">
																<!--The calendar -->
																<div id="calendar" style="width: 100%">
																	<div
																		class="bootstrap-datetimepicker-widget usetwentyfour">
																		<ul class="list-unstyled">
																			<li class="show"><div class="datepicker">
																					<div class="datepicker-days" style="">
																						<table class="table table-sm">
																							<thead>
																								<tr>
																									<th class="prev" data-action="previous"><span
																										class="fa fa-chevron-left"
																										title="Previous Month"></span></th>
																									<th class="picker-switch"
																										data-action="pickerSwitch" colspan="5"
																										title="Select Month">February 2020</th>
																									<th class="next" data-action="next"><span
																										class="fa fa-chevron-right" title="Next Month"></span></th>
																								</tr>
																								<tr>
																									<th class="dow">Su</th>
																									<th class="dow">Mo</th>
																									<th class="dow">Tu</th>
																									<th class="dow">We</th>
																									<th class="dow">Th</th>
																									<th class="dow">Fr</th>
																									<th class="dow">Sa</th>
																								</tr>
																							</thead>
																							<tbody>
																								<tr>
																									<td data-action="selectDay"
																										data-day="01/26/2020" class="day old weekend">26</td>
																									<td data-action="selectDay"
																										data-day="01/27/2020" class="day old">27</td>
																									<td data-action="selectDay"
																										data-day="01/28/2020" class="day old">28</td>
																									<td data-action="selectDay"
																										data-day="01/29/2020" class="day old">29</td>
																									<td data-action="selectDay"
																										data-day="01/30/2020" class="day old">30</td>
																									<td data-action="selectDay"
																										data-day="01/31/2020" class="day old">31</td>
																									<td data-action="selectDay"
																										data-day="02/01/2020" class="day weekend">1</td>
																								</tr>
																								<tr>
																									<td data-action="selectDay"
																										data-day="02/02/2020" class="day weekend">2</td>
																									<td data-action="selectDay"
																										data-day="02/03/2020" class="day">3</td>
																									<td data-action="selectDay"
																										data-day="02/04/2020" class="day">4</td>
																									<td data-action="selectDay"
																										data-day="02/05/2020" class="day">5</td>
																									<td data-action="selectDay"
																										data-day="02/06/2020" class="day">6</td>
																									<td data-action="selectDay"
																										data-day="02/07/2020" class="day">7</td>
																									<td data-action="selectDay"
																										data-day="02/08/2020" class="day weekend">8</td>
																								</tr>
																								<tr>
																									<td data-action="selectDay"
																										data-day="02/09/2020"
																										class="day active today weekend">9</td>
																									<td data-action="selectDay"
																										data-day="02/10/2020" class="day">10</td>
																									<td data-action="selectDay"
																										data-day="02/11/2020" class="day">11</td>
																									<td data-action="selectDay"
																										data-day="02/12/2020" class="day">12</td>
																									<td data-action="selectDay"
																										data-day="02/13/2020" class="day">13</td>
																									<td data-action="selectDay"
																										data-day="02/14/2020" class="day">14</td>
																									<td data-action="selectDay"
																										data-day="02/15/2020" class="day weekend">15</td>
																								</tr>
																								<tr>
																									<td data-action="selectDay"
																										data-day="02/16/2020" class="day weekend">16</td>
																									<td data-action="selectDay"
																										data-day="02/17/2020" class="day">17</td>
																									<td data-action="selectDay"
																										data-day="02/18/2020" class="day">18</td>
																									<td data-action="selectDay"
																										data-day="02/19/2020" class="day">19</td>
																									<td data-action="selectDay"
																										data-day="02/20/2020" class="day">20</td>
																									<td data-action="selectDay"
																										data-day="02/21/2020" class="day">21</td>
																									<td data-action="selectDay"
																										data-day="02/22/2020" class="day weekend">22</td>
																								</tr>
																								<tr>
																									<td data-action="selectDay"
																										data-day="02/23/2020" class="day weekend">23</td>
																									<td data-action="selectDay"
																										data-day="02/24/2020" class="day">24</td>
																									<td data-action="selectDay"
																										data-day="02/25/2020" class="day">25</td>
																									<td data-action="selectDay"
																										data-day="02/26/2020" class="day">26</td>
																									<td data-action="selectDay"
																										data-day="02/27/2020" class="day">27</td>
																									<td data-action="selectDay"
																										data-day="02/28/2020" class="day">28</td>
																									<td data-action="selectDay"
																										data-day="02/29/2020" class="day weekend">29</td>
																								</tr>
																								<tr>
																									<td data-action="selectDay"
																										data-day="03/01/2020" class="day new weekend">1</td>
																									<td data-action="selectDay"
																										data-day="03/02/2020" class="day new">2</td>
																									<td data-action="selectDay"
																										data-day="03/03/2020" class="day new">3</td>
																									<td data-action="selectDay"
																										data-day="03/04/2020" class="day new">4</td>
																									<td data-action="selectDay"
																										data-day="03/05/2020" class="day new">5</td>
																									<td data-action="selectDay"
																										data-day="03/06/2020" class="day new">6</td>
																									<td data-action="selectDay"
																										data-day="03/07/2020" class="day new weekend">7</td>
																								</tr>
																							</tbody>
																						</table>
																					</div>
																					<div class="datepicker-months"
																						style="display: none;">
																						<table class="table-condensed">
																							<thead>
																								<tr>
																									<th class="prev" data-action="previous"><span
																										class="fa fa-chevron-left"
																										title="Previous Year"></span></th>
																									<th class="picker-switch"
																										data-action="pickerSwitch" colspan="5"
																										title="Select Year">2020</th>
																									<th class="next" data-action="next"><span
																										class="fa fa-chevron-right" title="Next Year"></span></th>
																								</tr>
																							</thead>
																							<tbody>
																								<tr>
																									<td colspan="7"><span
																										data-action="selectMonth" class="month">Jan</span><span
																										data-action="selectMonth" class="month active">Feb</span><span
																										data-action="selectMonth" class="month">Mar</span><span
																										data-action="selectMonth" class="month">Apr</span><span
																										data-action="selectMonth" class="month">May</span><span
																										data-action="selectMonth" class="month">Jun</span><span
																										data-action="selectMonth" class="month">Jul</span><span
																										data-action="selectMonth" class="month">Aug</span><span
																										data-action="selectMonth" class="month">Sep</span><span
																										data-action="selectMonth" class="month">Oct</span><span
																										data-action="selectMonth" class="month">Nov</span><span
																										data-action="selectMonth" class="month">Dec</span></td>
																								</tr>
																							</tbody>
																						</table>
																					</div>
																					<div class="datepicker-years"
																						style="display: none;">
																						<table class="table-condensed">
																							<thead>
																								<tr>
																									<th class="prev" data-action="previous"><span
																										class="fa fa-chevron-left"
																										title="Previous Decade"></span></th>
																									<th class="picker-switch"
																										data-action="pickerSwitch" colspan="5"
																										title="Select Decade">2020-2029</th>
																									<th class="next" data-action="next"><span
																										class="fa fa-chevron-right"
																										title="Next Decade"></span></th>
																								</tr>
																							</thead>
																							<tbody>
																								<tr>
																									<td colspan="7"><span
																										data-action="selectYear" class="year old">2019</span><span
																										data-action="selectYear" class="year active">2020</span><span
																										data-action="selectYear" class="year">2021</span><span
																										data-action="selectYear" class="year">2022</span><span
																										data-action="selectYear" class="year">2023</span><span
																										data-action="selectYear" class="year">2024</span><span
																										data-action="selectYear" class="year">2025</span><span
																										data-action="selectYear" class="year">2026</span><span
																										data-action="selectYear" class="year">2027</span><span
																										data-action="selectYear" class="year">2028</span><span
																										data-action="selectYear" class="year">2029</span><span
																										data-action="selectYear" class="year old">2030</span></td>
																								</tr>
																							</tbody>
																						</table>
																					</div>
																					<div class="datepicker-decades"
																						style="display: none;">
																						<table class="table-condensed">
																							<thead>
																								<tr>
																									<th class="prev" data-action="previous"><span
																										class="fa fa-chevron-left"
																										title="Previous Century"></span></th>
																									<th class="picker-switch"
																										data-action="pickerSwitch" colspan="5">2000-2090</th>
																									<th class="next" data-action="next"><span
																										class="fa fa-chevron-right"
																										title="Next Century"></span></th>
																								</tr>
																							</thead>
																							<tbody>
																								<tr>
																									<td colspan="7"><span
																										data-action="selectDecade" class="decade old"
																										data-selection="2006">1990</span><span
																										data-action="selectDecade" class="decade"
																										data-selection="2006">2000</span><span
																										data-action="selectDecade"
																										class="decade active" data-selection="2016">2010</span><span
																										data-action="selectDecade" class="decade"
																										data-selection="2026">2020</span><span
																										data-action="selectDecade" class="decade"
																										data-selection="2036">2030</span><span
																										data-action="selectDecade" class="decade"
																										data-selection="2046">2040</span><span
																										data-action="selectDecade" class="decade"
																										data-selection="2056">2050</span><span
																										data-action="selectDecade" class="decade"
																										data-selection="2066">2060</span><span
																										data-action="selectDecade" class="decade"
																										data-selection="2076">2070</span><span
																										data-action="selectDecade" class="decade"
																										data-selection="2086">2080</span><span
																										data-action="selectDecade" class="decade"
																										data-selection="2096">2090</span><span
																										data-action="selectDecade" class="decade old"
																										data-selection="2106">2100</span></td>
																								</tr>
																							</tbody>
																						</table>
																					</div>
																				</div></li>
																			<li class="picker-switch accordion-toggle"></li>
																		</ul>
																	</div>
																</div>





															</div>
															<!-- /.card-body -->
														</div>
														<!-- /.card -->
													</section>
													<!-- right col -->
												</div>
												<!-- /.row (main row) -->
											</div>
											<!-- /.container-fluid -->
										</section>


									</div>
								</div>




								<!-- 2. 예약시간선택_ 선택가능시간 제어 필요_plsql로 선택가능한 시간만 표시되도록 할 것임 -->
								<div class="form-group">
									<label>예약시간선택</label> <br> <select class="custom-select"
										id="hour" name="hour" style="width: 20%;">
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

							</form>


						</div>
						<!-- /.card-body 끝 신청폼바디-->



						<!-- 신청폼푸터 // 제출 및 기타 버튼 위치 -->
						<!-- 5. 다음:예약날짜 선택 페이지로 이동 -->
						<div class="card-footer">
							<input type="reset" class="btn btn-secondary" value="초기화">
							<input type="submit" class="btn btn-secondary float-right"
								value="예약완료">
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
	//기록물 리스트 불러와서 값 넘기기 
	dcUpload.addEventListener("click", function(){
		//기록물리스트 가져올 수 있는 파라미터값 같이 넘기기 
		//window.open("idcheck.jsp?cid="+id.value,"selDcry","width=350, height=550");
		window.open("tmr_selectDcry.jsp","selDcry","width=350, height=550");
	})
	
	// 필수입력사항체크 후 값 넘기도록
	function idCheck(){
		
	}
	
	//신청가능여부 제어_ plsql
	//병원 스케줄(휴일을 예약가능날짜에서 제외, 영업상태속성확인)
	//의사 스케줄(의사휴일을 예약가능날짜에서 제외)
	//병원기본정보 등이필요.
</script>

</body>
</html>
