<%@page import="java.sql.Date"%>
<%@page import="lastdto.mediRqdetailDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ include file="/layout/sick_head.jsp"%>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/aView/chorong/css/chorong.css?ver=6">
<style>
.importantItem {
	font-size: 1.3rem;
}
</style>
<%@ include file="/layout/sick_menu.jsp"%>

<script>
	$(document).ready(function() {
		<c:choose>
		<c:when test="${isRqDonePage =='yes'}">
		console.log("접수,예약완료페이지에서 왔음");
		getHotRqstInfo();
		</c:when>
		<c:otherwise>
		console.log("진료신청현황상세페이지에서 왔음");
		getRqstDetail();
		</c:otherwise>
		</c:choose>
	});

	// 가장최근 insert한 값 가져오거나,
	function getHotRqstInfo() {
		var sicId = $("[name='id']").val();
		var dataResult;
		$.ajax({
			type : "POST",
			url : "ajax/SGetRqstInfo.do",
			dataType : "json",
			data : {
				sicId : sicId,
				identifier : "getHotRqstInfo"
			},
			success : function(result) {
				console.log(result);
				showRqInfo(result);
			}
		})
	}

	//  목록에서 넘겨받은 rqstNo에 해당하는 건 가져오기
	function getRqstDetail() {
		var rqstNo = $("[name='rqstNo']").val();
		console.log(rqstNo);
		var dataResult;
		$.ajax({
			type : "POST",
			url : "ajax/SGetRqstInfo.do",
			dataType : "json",
			data : {
				rqstNo : rqstNo
			},
			success : function(result) {
				console.log(result);
				showRqInfo(result);
			}
		})
	}

	function showRqInfo(result) {
		//진료신청상태
		if (result.rqstTy == 'D001') {
			var rqstTyVal = '접수';
		}
		if (result.rqstTy == 'D002') {
			var rqstTyVal = '예약';
		}
		if (result.rqstTy == 'D003') {
			var rqstTyVal = '병원취소';
		}
		if (result.rqstTy == 'D004') {
			var rqstTyVal = '환자취소';
		}
		$("#rqstTy").text(rqstTyVal);

		//병원명과 주소
		$("#hosName").text(result.hosName + " ( " + result.hosAddr + " )");

		//병원연락처
		$("#hosPhone").text(result.hosPhone);

		//담당의사 및 진료과목 //추후 코드테이블 이용하여 수정
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
		$("#artrName").text(result.artrName + " ( " + artrSubVal + " ) ");

		// 의사선생님께 한 마디
		$("#msg").text(result.msg);
		
		// 첨부한 진료기록물
		$("#dcryNo").html("<a href='DcryDetail.do?dcryNo=" + result.dcryNo + "'>" + result.dcryNo + "</a>");
		
		// 진료기록물 다건 첨부시(dcry_no 컬럼 데이터타입, dto, dao 모두 수정 필요.)
// 		var dcryNoOrigin = result.dcryNo;
// 		var dcryNoArray = dcryNoOrigin.split(",");
// 		for ( var i in dcryNoArray ) {
// 			if(dcryNoArray[i] != ""{
// 					$("#rqstNo").append("<a href='SdcryDetail.do?dcryNo=" + dcryNoArray[i] + "'>" + dcryNoArray[i] + " / " + "<a>");
// 			}
// 	      }
		

		// 취소신청시 필요한 rqstNo를 input value로
		$("#rqstNo").val(result.rqstNo);

		// 예상대기인원수 프로시저 콜 인자로 필요한 hosId값
		$("#hosId").val(result.hosId);
		var hosId = $("#hosId").val();
		console.log(hosId);

		if (result.rqstTy == 'D001') {
			// 접수일 경우 접수일(진료일)
			var rqstDt = "<div class='item rqDetailInfo'><span class='rqDetailLabel'>진료신청일자</span><span id = 'rqstDt'>"
					+ result.rqstDt + "</span></div>";
			$("#itemsWrapper").prepend(rqstDt);
// 			// 접수일 경우 도착예정시간
// 			var ifTime = "<div class='item rqDetailInfo importantItem'><span class='rqDetailLabel'>도착예정시간</span><span id = 'ifTime'>"
// 					+ result.ifTime + "</span></div>";
// 			$("#itemsWrapper").prepend(ifTime);
			// 접수일 경우 접수시간
			var rqstTm = "<div class='item rqDetailInfo importantItem'><span class='rqDetailLabel'>진료신청시간</span><span id = 'rqstTm'>"
					+ result.rqstTm + "</span></div>";
			$("#itemsWrapper").prepend(rqstTm+ "<span class='item rqDetailInfo importantItem'>" +"( "+result.ifTime+" 도착예정"+" )"+"</span>");
			// 접수일 경우 예상대기 인원수
			getNoOfWaiting();
		}
		if (result.rqstTy == 'D002') {
			//예약일 경우 진료일자
			var resDt = "<div class='item rqDetailInfo importantItem'><span class='rqDetailLabel'>진료일자</span><span id = 'resDt'>"
					+ result.resDt + "</span></div>";
			//예약일 경우 진료시간
			var resTm = "<div class='item rqDetailInfo importantItem'><span class='rqDetailLabel'>진료시간</span><span id = 'resTmS'>"
					+ result.resTm + "</span></div>";
			$("#itemsWrapper").prepend(resTm).prepend(resDt);
		}
		if (result.rqstTy == 'D001' || result.rqstTy == 'D002') {
			//취소가능하도록
			//진료상태가 진료완료가 아닌 경우(진료전인경우)_ list 가져올때 이미 필터링 됨 + 진료타입이 병원취소이거나 환자취소가 아닌경우
			var cancelBtn = "<button onclick='cancelRq()'class='btn btn-secondary float-right'>진료신청취소</button>";
			$("#cardFooter").append(cancelBtn);
		}

	}

	function getNoOfWaiting() {
		var hoshosid = $("#hosId").val();
		var rqstNo = $("#rqstNo").val();
		console.log(hoshosid + "," + rqstNo + "to get NoOfWaiting");
		setInterval(
				function() {
					$
							.ajax({
								type : "POST",
								url : "ajax/SGetWaitingCnt.do",
								dataType : "json",
								data : {
									hosId : hoshosid,
									rqstNo : rqstNo
								},
								success : function(result) {
									console.log("대기인원수" + result.noOfWaiting);
									//대기인원수표시하기.
									if ($("#noOfWaiting").length) { //요소 중복생성되지 않게 기 생성 여부확인
										console.log('갱신')
										$("#noOfWaiting").html(
												result.noOfWaiting + " 명");
									} else {
										console.log('최초로드')
										var noOfWaiting = "<div class='item rqDetailInfo importantItem'>"
												+ "<span class='rqDetailLabel'>대기인원수</span>"
												+ "<span id='noOfWaiting'>"
												+ result.noOfWaiting
												+ " 명</span></div>";
										$("#itemsWrapper").prepend(noOfWaiting);
									}

								}
							})
				}, 1000);
	}
</script>


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
								<h3 class="card-title" id="cardTitile">상세내역</h3>
							</div>
							<div class="card-body">

								<div class="row">
									<div class="col-sm-12" id="itemsWrapper">
										<div class="item rqDetailInfo">
											<span class="rqDetailLabel">진료신청상태</span><span id="rqstTy"></span>
										</div>
										<div class="item rqDetailInfo">
											<span class="rqDetailLabel">병원명</span><span id="hosName"></span>
										</div>
										<div class="item rqDetailInfo">
											<span class="rqDetailLabel">병원연락처</span><span id="hosPhone"></span>
										</div>
										<div class="item rqDetailInfo">
											<span class="rqDetailLabel">담당의사 및 진료과목</span><span
												id="artrName"></span>
										</div>
										<div class="item rqDetailInfo">
											<span class="rqDetailLabel">의사선생님께 한 마디</span><span id="msg"></span>
										</div>
										<div class="item rqDetailInfo">
											<span class="rqDetailLabel">첨부한 진료기록물</span><span id="dcryNo"></span>
										</div>
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
										<div class="item rqDetailInfo">
											<span class="rqDetailLabel"> 1.</span> 병원 내원시 헬로닥터 서비스를 통해
											예약/접수하였다고 알려주세요.
										</div>
										<div class="item rqDetailInfo">
											<span class="rqDetailLabel"> 2.</span> 예약/접수를 취소하실 경우 패널티가
											부여됩니다. (3회 취소시 서비스이용이 제한됩니다.)
										</div>
										<div class="item rqDetailInfo">
											<span class="rqDetailLabel"> 3.</span> 예약/접수는 병원사정으로 인해 취소될
											가능성이 있습니다.
										</div>
									</div>
								</div>
							</div>




							<!-- 예상대기 인원수 인자 가져오고 넘길 때 사용 //result.hosId롤 대체? -->
							<input type="hidden" id="hosId" name="hosId">

							<!-- 선택한 진료신청항목의 진료신청번호를 전송_ 취소할 때 값 넘겨야 함 -->
							<!-- 신청폼푸터 //2. 예약/접수취소 버튼 -->
							<div class="card-footer" id="cardFooter">
								<!-- 진료신청현황상세페이지인 경우_SRqDetail.do거치면서 파라미터로 가져옴 -->
								<input type="hidden" id="rqstNo" name="rqstNo"
									value="${rqstNo }">
								<button type="button" onclick="toBeforeMedList()"
									class="btn btn-secondary">확인</button>
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


	<!-- 모달 -->
	<div class="modal" id="modal" role="dialog"
		aria-labelledby="modalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 id="modalLabel" class="modal-title"></h5>
				</div>
				<div class="modal-body" id="modalBody"></div>
				<div class="modal-footer">
					<button type="button" id="notCancel" type="button"
						class="btn btn-secondary" data-dismiss="modal" aria-label="Close">취소</button>
					<button type="button" id="confirmCancel" class="btn btn-secondary">확인</button>
				</div>
			</div>
		</div>
	</div>
</form>

<%@ include file="/layout/all_footer.jsp"%>
<script>
	//진료신청 완료페이지에서 확인버튼 누를 경우
	//진료신청현황 리스트 페이지로 이동 
	function toBeforeMedList() {
		frm.action = "SMedBeforeMedList.do";
		frm.submit();
	}

	//진료신청 취소할 경우
	function cancelRq() {
		$(".modal").modal({
			keyboard : false,
			backdrop : 'static'
		});
		event.preventDefault();
		$("#modalBody").text("진료신청을 취소하시겠습니까?");
	}
	$("#confirmCancel").on("click", function() {
		$(".modal-footer").empty();
		$(".modal-footer").append('<button id="cancelDone" type="button" class="btn btn-secondary">확인</button>');
		var cancelDone = "진료신청을 취소합니다.";
		$("#modalBody").text(cancelDone);
		
		$("#cancelDone").on("click",function(){
			frm.action = "SCancelRq.do";//취소처리 후 목록페이지로 
			frm.submit();
		});
	});
	
</script>
</body>
</html>




