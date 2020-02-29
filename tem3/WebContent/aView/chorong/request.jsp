<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ include file="/layout/sick_head.jsp"%>

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/aView/chorong/css/chorong.css">


<style>
#hosAddr, #hosName {
	background-color: white;
}
</style>
<script src="<%=request.getContextPath()%>/aView/chorong/js/chorong.js"></script>
<script>// 추후 request.jsp 접수/예약으로 분리하는 것으로 수정.

/*
	예약일 경우 	 
*/
<c:if test="${rqType== 'Res'}">
// 날짜제어: 날짜+ 병원휴일, 의사휴일 제외한 날짜
// 시간제어: hosmember_biztime 내에 속한 시간에만 // ${param.hosBizTime}사용
//
	$(document).ready(function() {
		console.log("res");

	});
</c:if>//예약

/*
	접수일 경우 	 
*/
<c:if test="${rqType== 'Tmr'}">

$(document).ready(function() {
	console.log("tmr");
	getValToTmrCtrl();
});

//1차 접수제한 위한 값(당일병원휴일여부, 영업상태) 가져오기
function getValToTmrCtrl(){ 
	var hosId = $("[name='hosId']").val();
	console.log(hosId+"    hosid확인");
	$.ajax({
		url : "ajax/SCheckForTmr.do",
		dataType : "json",
		data : {hosId : hosId},
		success : function(result) {
			console.log(result);
			controlTmr(result);
		}
	})
}

// 접수시 현재 영업상태인지 체크
function controlTmr(result){ 
	console.log(result.TmrOk);
	if(result.TmrOk =="Ok" ){
		getDrList();
	}  else { 
 		$("#modal").modal({backdrop: 'static', keyboard: false}); 
        var a = "접수불가";
		var b = "현재 진료시간이 아닙니다. 이전 페이지로 이동합니다.";
		$("#modalLabel").text(a);
		$("#modalBody").text(b);
	}
}
</c:if>//접수

// 병원별 의사목록 가져오기(공통)
function getDrList(){ 
	var hosId = $("[name='hosId']").val();
	$.ajax({
		url : "ajax/SGetDrForRq.do",
		dataType : "json",
		data : {hosId : hosId},
		success : function(result) {
			console.log(result);
			showDrInfoForTmr(result);
		}
	})
}
// 병원별 의사목록 옵션노출(공통)
function showDrInfoForTmr(results){
	//console.log(result[0].artrName);
	for (i in results) {
		 if(results[i].artrSub == 'CS10'){
			 var artrSub = '내과';
		 }
		 if(results[i].artrSub == 'CS20'){
			 var artrSub = '소아과';
		 }
		 if(results[i].artrSub == 'CS30'){
			 var artrSub = '외과';
		 }
		 if(results[i].artrSub == 'CS40'){
			 var artrSub = '정형외과';
		 }
		 if(results[i].artrSub == 'CS50'){
			 var artrSub = '치과';
		 }
		 var x = "<option value=" + results[i].artrNo + ">"
		 + results[i].artrName 
		 + " ( " + artrSub + " ) "; 
		 +"</option>";
		 $("#artrNo").append(x);
		}
}
// 의사휴일_
// 의사 선택시 해당 의사의 휴일이 당일이면 접수불가. 
// 의사선택후날짜선택시 해당의사의 휴일이 선택날짜와 일치시 예약불가하도록 유효성검사
// 이 함수가 호출되기 전에 attrNo의 val이 선택해주세요가 아닌 값으로 input되어 있어야 함.
function getDrList(){ 
	var attrNo = $("[name='attrNo']").val();
	$.ajax({
		url : "ajax/SGetDrForRq.do",
		dataType : "json",
		data : {hosId : hosId},
		success : function(result) {
			console.log(result);
			showDrInfoForTmr(result);
		}
	})
}
// 병원휴일_ 예약 유효성 검사시 필요 

// 병원 영업시간_ 예약 유효성 검사시 필요

// 해당 시간 기존 예약건 여부 확인


// datepicker 관련 __ 접수, 예약모두 오늘부터 가능. 병원휴일은 선택하지 못하게 disabled

</script>




<%@ include file="/layout/sick_menu.jsp"%>


<!-- 접수불가 모달 // 외부파일로 뺄건지 수정할 때 결정 -->
<div class="modal" id="modal" role="dialog" aria-labelledby="modalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 id="modalLabel" class="modal-title"></h5>
			</div>
			<div class="modal-body" id="modalBody"></div>
			<div class="modal-footer">
				<button id="closeModalBtn" type="button" class="btn btn-secondary"
					data-dismiss="modal" onclick="javascript:history.go(-1)">확인</button>
			</div>
		</div>
	</div>
</div>

<form id="frm" name="frm" method="post" onsubmit="return checkNSubmit()">
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
									<div class="col-sm-12">
										<div class="checkSelected">
											<div class="form-group ">
												<label for="hosId">병원명 </label> <input type="hidden"
													id="hosId" name="hosId" value="${param.hosId}"> <input
													type="text" id="hosName" name="hosName"
													class="form-control" value="${param.hosId}${param.hosName}"
													readonly>
											</div>
											<div class="form-group">
												<label for="hosAddr">주&nbsp;&nbsp;&nbsp;&nbsp;소 </label> <input
													type="text" id="hosAddr" name="hosAddr"
													class="form-control"
													value="${param.hosAddr}sdfadsfdsafsdfadfsfadsfsafasfdasfsdafd"
													readonly>
											</div>
										</div>
										<!-- 2. 의사 선택_선택불가능 항목은 색으로 구분 -->
										<div class="form-group" id="artrNoWrapper">
											<label for="artrNo">진료받을 의사</label> <select
												class="custom-select" id="artrNo" name="artrNo">
												<option>선택해주세요</option>
											</select>
										</div>


										<!-- 3. 선생님께 한마디 입력란  -->
										<div class="form-group" id="msgWrapper">
											<label for="msg">의사선생님에게 한 마디</label>
											<textarea id="msg" name="msg" class="form-control"
												placeholder="증상, 기타사항을 입력해주세요"></textarea>
										</div>

										<!-- 4. 기록물 업로드 버튼 구현 / 모달창 띄우기?? / 값 어떻게 담을지 체크하기 -->
										<div class="form-group" id="dcryNoWrapper">
											<label for="dcryNo">진료시 의료진이 참고할 기록물 첨부</label><br> <input
												type="button" class="btn btn-default" id="dcryNo"
												name="dcryNo" value="기록물 업로드" onclick="toAddDcry()">
										</div>

										<c:if test="${rqType=='Res'}">
											<!-- 예약날짜 선택 _ 캘린더 -->
											<!-- 2. 예약시간선택_ 선택가능시간 제어 필요_plsql로 선택가능한 시간만 표시되도록 할 것임 -->
											<div class="form-group" id="TimeWrapper">
												<label>예약시간선택</label> <br> <select
													class="custom-select" id="hour" name="hour"
													style="width: 80px;">
													<option>선택</option>
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
													id="minute" name="minute" style="width: 80px;">
													<option>선택</option>
													<option>00</option>
													<option>30</option>
												</select>&nbsp;분 <br>
											</div>
										</c:if>
										<c:if test="${rqType == 'Tmr' }">
											<!-- 5. 도착예상시간 선택 기능 구현_ 당일 해당 시간 접수가능한지 체크하는 펑션 필요-->
											<div class="form-group">
												<label for="ifTime">도착예상시간</label><br> <select
													class="custom-select" id="ifTime" name="ifTime"
													style="width: 80px;">
													<option>선택</option>
													<option value="10분 후">10</option>
													<option value="20분 후">20</option>
													<option value="30분 후">30</option>
													<option value="40분 후">40</option>
													<option value="50분 후">50</option>
													<option value="60분 후">60</option>
												</select>&nbsp;분 후 도착 예정
											</div>
										</c:if>
									</div>
								</div>
							</div>
							<!-- /.card-body 끝 신청폼바디-->

							<div class="card-footer">
								<input type="hidden" id="id" name="id" value="sic1">
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


<script>


//유효성 검사 필요_ jquery validation plugin 
	var artrNo = $("[name='artrNo']");
    var msg = $("[name='msg']");
    //var date = $("[name='']");
    var hour = $("[name='hour']");
    var minute = $("[name='minute']");
    var ifTime= $("[name='ifTime']");
    
    
    function checkNSubmit(){
    	if (${rqType == "Res"}){
    		var bool1 = checkCommon();
    		var bool2 = checkWhenRes();
    		if(bool1 == true && bool2 == true){
    			frm.action = "SInsertRes.do";
    			return true;
    		}
    		return false;
    	}
    	if (${rqType == "Tmr"}){
    		var bool1 = checkCommon();
    		var bool2 = checkWhenTmr();
    		if(bool1 == true && bool2 == true){
    			frm.action = "SInsertTmr.do";
    			return true;
    		}
    		return false;
    	}
	}

	function checkCommon() {
		if(artrNo.val() == "선택해주세요"){
			alert("담당의사 선택하세요");
			return false;
		}
		if(msg.val() == ""){
			alert("메세지 입력하세요");
			return false;
		}
		return true;
	}
	
	
	function checkWhenRes() {
		if(hour.val() =="선택"|| minute.val() =="선택"){
			alert("예약시간을 정확하게 선택해주세요");
			return false;
		}
		return true;
		
	}
	function checkWhenTmr() {
		console.log("접수");
		if(ifTime.val() == "선택"){
			//접수시 현재 영업중 체크 한 번 더 필요
			alert("도착예정시간을 선택하세요");
			return false;
		}
		return true;
	}


</script>

</body>
</html>
