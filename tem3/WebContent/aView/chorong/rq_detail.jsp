<%@page import="java.sql.Date"%>
<%@page import="lastdto.mediRqdetailDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ include file="/layout/sick_head.jsp"%>
<script src="<%=request.getContextPath()%>/aView/chorong/js/chorong.js"></script>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/aView/chorong/css/chorong.css">
<style>
.label {
	font-weight: bold;
}

.item {
	padding: 5px 0px 5px 5px;
}
</style>
<%@ include file="/layout/sick_menu.jsp"%>
<script>
	$(document).ready(function() {
		console.log("접수,예약완료페이지");
		getRqstInfo();
		getNoOfWaiting();
	});

	// 가장최근 insert한 값 가져오거나,
	function getHotRqstInfo() {
		var sicId = $("[name='id']").val();
		var identifier = "getHotRqstInfo";
		console.log(sicId + ", " + identifier);
		var dataResult;
		$.ajax({
			url : "ajax/SGetRqstInfo.do",
			dataType : "json",
			data : {
				sicId : sicId,
				identifier : identifier
			},
			async : false, //값 return 위해서  비동기x
			success : function(result) {
				console.log(result);
			}
		})
	}

	//  목록에서 넘겨받은 rqstNo에 해당하는 건 가져오기
	function getRqstDetail() {
		var rqstNo = $("[name='rqstNo']").val();
		console.log(rqstNo);
		var dataResult;
		$.ajax({
			url : "ajax/SGetRqstInfo.do",
			dataType : "json",
			data : {
				rqstNo : rqstNo
			},
			success : function(result) {
				console.log(result);
			}
		})
	}

	function showRqInfo() {
		//진료신청상태
		//병원명
		//주소
		//병원연락처
		//담당의사
		//진료과목
		if (result.artrSub == 'CS10') {
			var artrSubVal = '내과';
		}
		if (result.artrSub == 'CS20') {
			var artrSubVal = '소아과';
		}
		if (result.artrSub == 'CS30') {
			var artrSubVal = '외과';
		}
		if (result.artrSub == 'CS40') {
			var artrSubVal = '정형외과';
		}
		if (result.artrSub == 'CS50') {
			var artrSubVal = '치과';
		}

		//의사선생님께 한 마디

		//아래는 공통사항아니므로 개별적으로 붙이기 

		if (result.rqstTy == 'D001') {
			// 접수일 경우 도착예정시간과 예상 대기 인원수 출력
			var ifTime = "<div class='item'>도착예정시간 : <span id = 'ifTime'>"
					+ result.ifTime + "</span></div>";
			var noOfWaiting = "<div class='item'>예상대기 인원수 : <span id = 'noOfWaiting'></span></div>";
			$("#itemsWrapper")
			// 접수일 경우 예상대기 인원수 (태그만 생성하고 값은 함수 호출해서 불러오기)
			.append(ifTime).append();
		}
		if (result.rqstTy == 'D002') {
			//예약일 경우 예약일자
			var resDt = 
			var resTm = 
			
			//예약일 경우 예약시간
			
			
		}
		
		

	}

	// 	function getNoOfWaiting() {
	// 		var sicId = $("[name='id']").val();
	// 		consol.log(sicId);
	// 		var dataResult;
	// 		$.ajax({
	// 			url : "ajax/SGetWaitingCnt.do.do",
	// 			dataType : "json",
	// 			data : {
	// 				hosId : hosId,
	// 				sicId : sicId
	// 			},
	// 			success : function(result) {
	// 				console.log(result.noOfWaiting);
	//				//대기인원수표시하기.
	// 				$("#noOfWaiting").text(reslut.noOfWaiting);
	// 			}
	// 		})
	// 	}
<!-- </script> -->


<form id="frm" name="frm" method="post">
	<!-- 컨텐츠 위치 -->
	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper">
		<!-- Content Header (Page header) -->
		<section class="content-header">
			<div class="container-fluid">
				<div class="row mb-2">
					<div class="col-sm-6">
						<c:choose>
							<c:when test="${isRqDonePage =='yes'}">
								<h1>신청이 완료되었습니다!</h1>
							</c:when>
							<c:otherwise>
								<h1>진료신청현황</h1>
							</c:otherwise>
						</c:choose>
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

						<div class="card card-default">
							<div class="card-header">
								<h3 class="card-title">상세정보</h3>
							</div>
							<div class="card-body">

								<div class="row">
									<div class="col-sm-12" id="itemsWrapper">


										<c:if test="${dto.rqstTy == 'D001'}">
											<div class="item">
												<span class="label">진료신청상태 : </span><span>접수</span>
											</div>
										</c:if>
										<c:if test="${dto.rqstTy == 'D002'}">
											<div class="item">
												<span class="label">진료신청상태 : </span><span>예약</span>
											</div>
										</c:if>
										<c:if test="${dto.rqstTy == 'D003'}">
											<div class="item">
												<span class="label">진료신청상태 : </span><span>병원취소</span>
											</div>
										</c:if>
										<c:if test="${dto.rqstTy == 'D004'}">
											<div class="item">
												<span class="label">진료신청상태 : </span><span>환자취소</span>
											</div>
										</c:if>

										<div class="item">
											<span class="label">병원명 : </span><span></span>
										</div>
										<div class="item">
											<span class="label">주소 : </span><span></span>
										</div>
										<div class="item">
											<span class="label">병원연락처 : </span><span></span>
										</div>
										<div class="item">
											<span class="label">담당의사 : </span><span></span>
										</div>

										<c:if test="${dto.artrSub == 'CS10'}">
											<div class="item">
												<span class="label">진료과목 : </span><span>내과</span>
											</div>
										</c:if>
										<c:if test="${dto.artrSub == 'CS20'}">
											<div class="item">
												<span class="label">진료과목 : </span><span>소아과</span>
											</div>
										</c:if>
										<c:if test="${dto.artrSub == 'CS30'}">
											<div class="item">
												<span class="label">진료과목 : </span><span>외과</span>
											</div>
										</c:if>
										<c:if test="${dto.artrSub == 'CS40'}">
											<div class="item">
												<span class="label">진료과목 : </span><span>정형외과</span>
											</div>
										</c:if>
										<c:if test="${dto.artrSub == 'CS50'}">
											<div class="item">
												<span class="label">진료과목 : </span><span>치과</span>
											</div>
										</c:if>


										<div class="item">
											<span class="label">의사선생님께 한 마디 : </span><span>${dto.msg }</span>
										</div>

										<!-- 접수일 경우에만 표시 -->
										<c:if test="${dto.rqstTy == 'D001'}">
											<div class="item">
												<span class="label">도착예상시간 : </span><span>${dto.ifTime }</span>
											</div>
											<div class="item">
												<span class="label">예상대기인원수 : </span><span id="noOfWaiting"></span>
											</div>
											<!-- 크게 표시 -->
										</c:if>

										<!-- 예약일 경우에만 표시 -->
										<c:if test="${dto.rqstTy == 'D002'}">
											<div class="item">
												<span class="label">진료날짜 : </span><span>${dto.resDt }</span>
											</div>
											<div class="item">
												<span class="label">진료시간 : </span><span>${dto.resTm }</span>
											</div>
										</c:if>


									</div>
								</div>
							</div>
						</div>

						<div class="card card-default">
							<div class="card-header">
								<h3 class="card-title">
									주의사항
									<ion-icon name="alert-circle-outline" style="font-size:1rem;"></ion-icon>
								</h3>
							</div>
							<div class="card-body">
								<div class="row">
									<div class="col-sm-12">
										<div class="item">
											<span class="label"> 1.</span> 병원 내원시 살려죠 서비스를 통해 예약/접수하였다고
											알려주세요.
										</div>
										<div class="item">
											<span class="label"> 2.</span> 예약/접수를 취소하실 경우 패널티가 부여됩니다. (3회
											취소시 서비스이용이 제한됩니다.)
										</div>
										<div class="item">
											<span class="label"> 3.</span> 예약/접수는 병원사정으로 인해 취소될 가능성이
											있습니다.
										</div>
									</div>
								</div>
							</div>

							<!-- 어느페이지에서든 공통으로 넘겨받음. but 세션 작업 후 수정 -->
							<input type="hidden" id="id" name="id" value="${Id}">

							<!-- 선택한 진료신청항목의 진료신청번호를 전송_ 취소할 때 값 넘겨야 함 -->
							<!-- 신청폼푸터 //2. 예약/접수취소 버튼 -->
							<div class="card-footer">
								<c:choose>
									<c:when test="${isRqDonePage =='yes'}">
										<!-- 신청완료페이지인 경우_value값 ajax로 받아와서 설정 -->
										<input type="hidden" id="rqstNo" name="rqstNo">
										<button onclick="toBeforeMedList()" class="btn btn-secondary">확인</button>
									</c:when>
									<c:otherwise>
										<!-- 진료신청현황상세페이지인 경우_SRqDetail.do거치면서 파라미터로 가져옴 -->
										<input type="hidden" id="rqstNo" name="rqstNo"
											value="${rqstNo }">
										<input type="reset" onclick="javascript:history.go(-1)"
											class="btn btn-secondary" value="확인">
									</c:otherwise>
								</c:choose>

								<!-- 진료상태가 진료완료가 아닌 경우(진료전인경우)_ list 가져올때 이미 필터링 됨
								+  진료타입이 병원취소이거나 환자취소가 아닌경우-->
								<c:if
									test="${dto.rqstTy != 'D003' ||
								dto.rqstTy != 'D004'}">
									<!--취소가능 -->
									<button onclick="cancelRes()"
										class="btn btn-secondary float-right">진료신청취소</button>
								</c:if>
								<!-- js파일 참고_ 각각 SMedABeforeMedList.do, SCancelRq.do 요청 -->
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

</body>
</html>




