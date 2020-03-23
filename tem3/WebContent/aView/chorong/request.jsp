<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ include file="/layout/sick_head.jsp"%>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/aView/chorong/css/chorong.css">

<!-- datepicker css-->
<link href="<%=request.getContextPath()%>/dist/css/datepicker.min.css"
	rel="stylesheet" type="text/css">
<!-- datepicker js-->
<script src="<%=request.getContextPath()%>/dist/js/datepicker.min.js"></script>
<!-- datepicker_ Include korean language -->
<script
	src="<%=request.getContextPath()%>/dist/js/i18n/datepicker.ko.js"></script>


<style>
#hosAddr, #hosName, #hosBizTime {
	background-color: white;
}
/* validate */
input.error, textarea.error, select.error {
	border: 1.5px solid #ff80435c;
}

label.error {
	color: #f53800;
	font-weight: 400;
	font-size: 0.9em;
	margin: 5px;
}

.datepicker {
	margin-top: 10px;
	width: 100%;
}

.form-control {
	font-size: 0.9rem;
}
</style>
<script src="<%=request.getContextPath()%>/aView/chorong/js/chorong.js"></script>
<script>
	// 예약일 경우 
	<c:if test="${rqType == 'Res'}">
	$(document)
			.ready(
					function() {
						console.log("res");

						// 예약날짜선택 달력 기본설정
						var mxdate = new Date();
						mxdate.setDate(mxdate.getDate() + 90); //오늘자로부터 90일 후 까지만 예약가능하도록
						$('#resDt').datepicker({
							language : 'ko',
							inline : true,
							minDate : new Date(),
							maxDate : mxdate,
							disableNavWhenOutOfRange : true
						})
						// 달력 생성
						var datepicker = $('#resDt').data('datepicker');

						// 병원의 의사 모두표시
						getDrList();

						// 의사선택/변경시
						$("#artrNo").on("propertychange input", function() {
							console.log("의사변경");

							// 의사 선택시 날짜입력란(달력포함) 보이게 / 변경시 다시 보이게
							$("#resDtContainer").toggle(500);
							$("#resDtContainer").show(500);

							// 주말예약불가 제어
							ctrlRegularHosHldy();

							// 날짜 선택내용 초기화
							datepicker.clear();
						});

						// 날짜값 변경시 해당일자 예약스케줄 가져옴. 
						// 해당 내용을 달력 아래 노출 + 기 예약된 시간은 선택하지 못하도록 disabled처리
						$("#resDt").change(function() {
						    var currentVal = $(this).val();
						    getSpecialHosHldy();
						    getImpossibleTime();
							alert($(this).val());
						});

						// 예약_  주말예약불가하도록제어
						function ctrlRegularHosHldy() {
							// 토, 일 disabled 처리
							datepicker
									.update({
										onRenderCell : function(date, cellType) {
											// 먼저, 병원 정기 휴일 DB에 입력하게 해야 함. 요일을 숫자로.
											// 값을 받아와서 disabledDays 배열에 삽입할 것. 
											// (요구사항 정의되지 않은 부분.여기서는 토,일요일 정기휴일로 가정함)
											//쉼표연산자 왼->오 순으로 평가하여 마지막 연산자의 값 반환
											if (cellType == 'day') { //현재 셀 타입이 day일 경우
												var disabledDays = [ 0, 6 ];
												var day = date.getDay(), isDisabled = disabledDays
														.indexOf(day) != -1;
												return {
													disabled : isDisabled
												}
											}
										}
									})
						}

						// 예약
						function getSpecialHosHldy() {
							var hosId = $("[name='hosId']").val();
							$
									.ajax({
										url : "ajax/SGetHosHldyList.do",
										dataType : "json",
										data : {
											hosId : hosId
										},
										async : false,
										success : function(result) {
											$
													.each(
															result,
															function(idx, item) {
																console
																		.log("HOS HLDY["
																				+ idx
																				+ "]"
																				+ " : "
																				+ item.hosHldy);
																var yyyyHldy = item.hosHldy.slice(0,4);
																console.log("년"+ yyyyHldy);
																var mmHldy = item.hosHldy.slice(4,6);
																console.log("월"+ mmHldy);
																var ddHldy = item.hosHldy.slice(6,8);
																console.log("일"+ ddHldy);
																
															})
										}
									});
						}

					}); //-- /.document ready res

	// 	// 예약_의사별 휴일목록
	// 	function getDrHldyList() {
	// 		var artrNo = $("[name='artrNo']").val();
	// 		$.ajax({
	// 			url : "ajax/SGetDrHldyList.do",
	// 			dataType : "json",
	// 			data : {
	// 				artrNo : artrNo
	// 			},
	// 			success : function(result) {
	// 				$.each(result,
	// 						function(idx, item) {
	// 							console.log("DR HLDY[" + idx + "]" + " : "
	// 									+ item.artrHldy);
	// 						});
	// 			}
	// 		})
	// 	}

	// 예약_ 선택가능한 예약시간 제어. 
	// 선택한 날짜,의사에 예약되어 있는 시간을 가져옴. 해당 시간은 예약 불가하도록. // 
	// 의사, 날짜, 시간이 모두 선택되어야 함?
	// 제출시 한 번 더 검사 
	function getImpossibleTime() {
		var hosId = $("[name='hosId']").val();
		var selectedDate = $("[name='resDt']").val(); //날짜값 들어오는 방식 확인
		var hosBizTime = '${param.hosBizTime}'; //선택가능한 시간 제어시 사용 
		console.log(hosBizTime); //병원 영업시간은 이전 페이지에서 파라미터로 가져오기.
		var selectedTime = $("[name='hour']").val()
				+ $("[name='minute']").val();
		$.ajax({
			url : "ajax/SGetUnselectableTime.do",
			dataType : "json",
			data : {
				hosId : hosId
			},
			success : function(result) {
				console.log("already : " + result);
			}
		})
	}

	// datepicker 관련 __ 접수, 예약모두 오늘부터 가능. 병원휴일은 선택하지 못하게 disabled
	</c:if>

	// 접수일 경우
	<c:if test="${rqType == 'Tmr'}">
	$(document).ready(function() {
		console.log("tmr");
		// 접수가능시간 체크
		var hosStt = getHosStt();
		controlTmr(hosStt);

		// 휴일인 의사 disabled처리
		ctrlDrNotOnDuty();
	});
	</c:if>

	// 접수_ 1차 접수제한, 제출시 영업상태확인위한 값(영업상태) 가져오기 // 제출시 한번 더 필요.
	function getHosStt() {
		var hosId = $("[name='hosId']").val();
		var dataResult;
		console.log(hosId + "   hosid확인");
		$.ajax({
			url : "ajax/SGetHosStt.do",
			dataType : "json",
			data : {
				hosId : hosId
			},
			async : false, //값 return 위해서  비동기x
			success : function(result) {
				console.log(result);
				dataResult = result;
			}
		})
		return dataResult;
	}
	// 접수_ 현재 영업상태인지 체크하고, 의사목록 가져오기 // 제출시 한번 더 필요.
	function controlTmr(result) {
		console.log(result.TmrOk);
		if (result.TmrOk == 'Ok') {
			getDrList();
		} else {
			cantTmrRq();
		}
	}
	// 접수_접수불가 모달창 띄우기
	function cantTmrRq() {
		var a = "접수불가";
		var b = "현재 진료시간이 아닙니다. 이전 페이지로 이동합니다.";
		$("#modal").modal({
			backdrop : 'static',
			keyboard : false
		});
		$("#modalLabel").text(a);
		$("#modalBody").text(b);
		$("#closeModalBtn").on("click", function() {
			history.go(-1);
		})
	}
	// 공통_병원별 의사목록 옵션노출
	function getDrList() {
		var hosId = $("[name='hosId']").val();
		$.ajax({
			url : "ajax/SGetDrList.do",
			dataType : "json",
			data : {
				hosId : hosId
			},
			success : function(result) {
				console.log("DrList : " + result);
				$.each(result, function(idx, item) {
					console.log("DR[" + idx + "]" + " : " + item.artrName + "("
							+ item.artrSub + ")");
					if (item.artrSub == 'CS10') {
						var artrSub = '내과';
					}
					if (item.artrSub == 'CS20') {
						var artrSub = '소아과';
					}
					if (item.artrSub == 'CS30') {
						var artrSub = '외과';
					}
					if (item.artrSub == 'CS40') {
						var artrSub = '정형외과';
					}
					if (item.artrSub == 'CS50') {
						var artrSub = '치과';
					}
					var x = "<option value=" + item.artrNo + ">"
							+ item.artrName + " ( " + artrSub + " ) ";
					+"</option>";
					$("#artrNo").append(x);
				});
			}
		})
	}
	// 접수_선택한 병원의 의사 중 휴일이 오늘인 의사가 있다면 해당 의사옵션은 disabled처리
	function ctrlDrNotOnDuty() {
		var hosId = $("[name='hosId']").val();
		$.ajax({
			url : "ajax/SGetDrNotOnDutyList.do",
			dataType : "json",
			data : {
				hosId : hosId
			},
			success : function(result) {
				$.each(result, function(idx, item) {
					console.log(item.artrNo + "번 의사 쉬는날 ");
					$("select option[value=" + item.artrNo + "]").prop(
							'disabled', true).append(" - 휴무");
				});
			}
		})
	}
</script>




<%@ include file="/layout/sick_menu.jsp"%>


<!-- 모달 -->
<div class="modal" id="modal" role="dialog" aria-labelledby="modalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 id="modalLabel" class="modal-title"></h5>
			</div>
			<div class="modal-body" id="modalBody"></div>
			<div class="modal-footer">
				<button id="closeModalBtn" type="button" class="btn btn-secondary">확인</button>
			</div>
		</div>
	</div>
</div>


<!-- form시작 -->
<form id="frm" name="frm" method="post" class="cmxform">
	<!-- 컨텐츠 위치 -->
	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper">
		<!-- Content Header (Page header) -->
		<section class="content-header">
			<div class="container-fluid">
				<div class="row mb-2">
					<div class="col-sm-6">
						<c:if test="${rqType== 'Res'}">
							<h1>진료예약신청</h1>
						</c:if>
						<c:if test="${rqType== 'Tmr'}">
							<h1>진료접수신청</h1>
						</c:if>
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

						<!-- 신청 폼 div시작 -->
						<div class="card card-secondary">
							<!-- 신청폼헤더 -->
							<div class="card-header">
								<h3 class="card-title">신청양식</h3>
							</div>
							<!-- /.card-header 끝 신청폼말머리-->

							<div class="card-body">
								<div class="row">
									<div class="col-sm">
										<div class="checkSelected">
											<div class="form-group ">
												<label for="hosId">병원명 </label> <input type="hidden"
													id="hosId" name="hosId" value="${param.hosId}"> <input
													type="text" id="hosName" name="hosName"
													class="form-control" value="${param.hosId}${param.hosName}"
													readonly>
											</div>
											<div class="form-group">
												<label for="hosAddr">주&nbsp;&nbsp;&nbsp;&nbsp;소 </label>
												<textarea id="hosAddr" name="hosAddr" class="form-control"
													readonly>${param.hosAddr}</textarea>
											</div>
											<div class="form-group">
												<label for="hosBizTime">진료시간</label> <input type="text"
													id="hosBizTime" name="hosBizTime" class="form-control"
													value="${param.hosBizTime}" readonly>
											</div>
										</div>
										<div class="form-group" id="artrNoWrapper">
											<label for="artrNo">진료받을 의사</label> <select
												class="custom-select" id="artrNo" name="artrNo">
												<option value="">선택</option>
											</select>
										</div>
									</div>

									<div class="col-sm">
										<c:if test="${rqType=='Res'}">
											<div class="form-group" id="resDtContainer"
												style="display: none;">
												<label for="resDt">예약날짜 선택</label> <br> <input
													type="text" id="resDt" name="resDt" class="form-control">
											</div>
											<div class="form-group" id="resTmContainer"
												style="display: none;">
												<label for="resTm">예약시간 선택</label> <br> <select
													class="custom-select" id="resTm" name="resTm" size="5">
													<c:forEach var="i"
														begin="${fn:substring(param.hosBizTime, 0, 2)}"
														end="${fn:substring(param.hosBizTime, 6, 8)-1}">
														<!-- 진료종료시간 30분전까지 예약가능하도록 -->
														<option value="${i>9?i:'0'}${i>9?'':i}:00">${i>9?i:'0'}${i>9?'':i}:00</option>
														<option value="${i>9?i:'0'}${i>9?'':i}:30">${i>9?i:'0'}${i>9?'':i}:30</option>
													</c:forEach>
												</select>
											</div>
										</c:if>

										<c:if test="${rqType == 'Tmr' }">
											<div class="form-group">
												<label for="ifTime">도착예상시간</label><br> <select
													class="custom-select" id="ifTime" name="ifTime">
													<option value="">선택</option>
													<option value="10분 후">10분 후 도착 예정</option>
													<option value="20분 후">20분 후 도착 예정</option>
													<option value="30분 후">30분 후 도착 예정</option>
													<option value="40분 후">40분 후 도착 예정</option>
													<option value="50분 후">50분 후 도착 예정</option>
													<option value="60분 후">60분 후 도착 예정</option>
												</select>
											</div>
										</c:if>
										<div class="form-group" id="msgWrapper">
											<label for="msg">의사선생님에게 한 마디</label>
											<textarea id="msg" name="msg" class="form-control"
												placeholder="증상, 기타사항을 입력해주세요"></textarea>
										</div>
										<div class="form-group" id="dcryNoWrapper">
											<label for="dcryNo">진료시 의료진이 참고할 기록물 첨부</label><br> <input
												type="button" class="btn btn-default" id="dcryNo"
												name="dcryNo" value="기록물 업로드" onclick="toAddDcry()">
										</div>
									</div>
								</div>
								<!-- /. row -->
							</div>
							<!-- /.card-body 끝 신청폼바디-->

							<div class="card-footer">
								<input type="hidden" id="id" name="id" value="${param.sicId }">
								<!-- 로그인중인 아이디(임시로 sic1로 설정) 나중에 수정-->
								<input type="reset" class="btn btn-secondary" value="초기화">
								<c:if test="${rqType=='Res'}">
									<input type="submit" class="btn btn-secondary float-right"
										value="예약하기">
								</c:if>
								<c:if test="${rqType=='Tmr'}">
									<input type="submit" class="btn btn-secondary float-right"
										value="접수하기">
								</c:if>
							</div>
						</div>
					</div>
					<!--/.col (left) -->

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


<script type="text/javascript"
	src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/additional-methods.min.js"></script>
<c:if test="${rqType == 'Tmr' }">
	<script type="text/javascript">
		// 접수신청폼 유효성체크
		$(function() {
			$("#frm").validate({
				rules : {
					ifTime : {
						required : true
					},
					artrNo : {
						required : true
					},
					msg : {
						required : true
					}
				},
				messages : {
					ifTime : {
						required : "도착예정시간을 선택해 주세요."
					},
					artrNo : {
						required : "담당의사를 선택해 주세요."
					},
					msg : {
						required : "메세지를 입력해 주세요."
					}
				},
				submitHandler : function(frm) {
					// 현재 접수 중인지 제출 전 한 번 더 체크
					var hosStt = getHosStt();
					if (hosStt.TmrOk == "Ok") {
						frm.action = "SInsertTmr.do";
						frm.submit(); //유효성 검사를 통과시 전송
					} else {
						cantTmrRq();
					}
				}
			});
		});
	</script>
</c:if>
<c:if test="${rqType == 'Res' }">
	<script>
		// 예약신청폼 유효성체크
		$(function() {
			$("#frm").validate({
				rules : {
					resDt : {
						required : true
					},
					resTm : {
						required : true
					},
					artrNo : {
						required : true
					},
					msg : {
						required : true
					}
				},
				messages : {
					resDt : {
						required : "달력에서 예약일자를 선택해 주세요."
					},
					resTm : {
						required : "예약시간을 선택해 주세요."
					},
					artrNo : {
						required : "담당의사를 선택해 주세요."
					},
					msg : {
						required : "메세지를 입력해 주세요."
					}
				},
				submitHandler : function(frm) {
					frm.action = "SInsertRes.do";
					frm.submit(); //유효성 검사를 통과시 전송
				}
			});
		});
	</script>
</c:if>

</body>
</html>