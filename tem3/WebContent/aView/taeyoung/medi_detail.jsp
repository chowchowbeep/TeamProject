<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/layout/hos_head.jsp"%>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/aView/chorong/css/chorong.css?ver=6">
<style>
.importantItem {
	font-size: 1.3rem;
}

.btn {
	margin: 5px;
	font-size: 0.9rem;
}
</style>
<script>
	$(document).ready(function() {
		getMedDoneOk();
	})
	
	function getMedDoneOk() {
			var rqstNo = ${dto.rqstNo};
			console.log("rqstNo"+rqstNo);
			var dataResult;
			$.ajax({
				type : "POST",
				url : "ajax/HGetMedDoneOk.do",
				dataType : "json",
				data : {
					rqstNo : rqstNo
				},
				success : function(result) {
					console.log("result"+result);
					if(result.mcttStt == 'Y'){
						$("#mcttStt").html("진료완료");
					} else {
						$("#mcttStt").html("진료 전");
					}
					
				}
			})
		}
</script>
<%@ include file="/layout/hos_menu.jsp"%>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<div class="container-fluid">
			<div class="row mb-2">
				<div class="col-sm-6">
					<h1>진료신청현황 상세</h1>
				</div>
			</div>
		</div>
	</section>

	<!-- Main content -->
	<section class="content">
		<div class="row d-flex align-items-stretch">
			<div class="col-12">

				<div class="card bg-light">
					<form>
						<div class="card-body">
							<div class="row">
								<div class="col-sm-12" id="itemsWrapper">
									<c:if test="${dto.rqstTy =='D001' }">
										<div class="item rqDetailInfo importantItem">
											<span class="rqDetailLabel">진료신청일자</span><span id="rqstDt">${dto.rqstDt}</span>
										</div>
										<div class="item rqDetailInfo importantItem">
											<span class="rqDetailLabel">진료신청시각</span><span id="rqstTm">${dto.rqstTm}</span>
										</div>
										<div class="item rqDetailInfo importantItem">
											<span class="rqDetailLabel">도착예정시간</span><span id="ifTime">${dto.ifTime}분 후 도착예정</span>
										</div>
									</c:if>
									<c:if test="${dto.rqstTy =='D002' }">
										<div class="item rqDetailInfo importantItem">
											<span class="rqDetailLabel">예약진료일자</span><span id="resDt">${dto.resDt}</span>
										</div>
										<div class="item rqDetailInfo importantItem">
											<span class="rqDetailLabel">예약진료시간</span><span id="resTm">${dto.resTm}</span>
										</div>
									</c:if>
									<div class="item rqDetailInfo">
										<span class="rqDetailLabel">진료신청타입</span>
										<c:choose>
											<c:when test="${dto.rqstTy =='D001'}">
												<span id="rqstTy">당일접수</span>
											</c:when>
											<c:when test="${dto.rqstTy =='D002'}">
												<span id="rqstTy">예약</span>
											</c:when>
											<c:when test="${dto.rqstTy =='D003'}">
												<span id="rqstTy">병원취소</span>
											</c:when>
											<c:when test="${dto.rqstTy =='D004'}">
												<span id="rqstTy">일반취소</span>
											</c:when>
										</c:choose>
									</div>
									<div class="item rqDetailInfo">
										<span class="rqDetailLabel">진료완료 여부</span><span id="mcttStt"></span>
									</div>
									<div class="item rqDetailInfo">
										<span class="rqDetailLabel">환자이름</span><span id="rqstTy">${param.sicName}</span>
									</div>
									<div class="item rqDetailInfo">
										<span class="rqDetailLabel">전화번호</span><span id="hosName">${param.sicPhone}</span>
									</div>
									<div class="item rqDetailInfo">
										<span class="rqDetailLabel">담당의사</span><span id="artrName">${dto.artrName }</span>
									</div>
									<div class="item rqDetailInfo">
										<span class="rqDetailLabel">진료과목</span><span id="artrSub"><c:choose>
												<c:when test="${dto.artrSub == 'CS10'}">내과</c:when>
												<c:when test="${dto.artrSub == 'CS20'}">소아과</c:when>
												<c:when test="${dto.artrSub == 'CS30'}">외과</c:when>
												<c:when test="${dto.artrSub == 'CS40'}">정형외과</c:when>
												<c:when test="${dto.artrSub == 'CS50'}">치과</c:when>
											</c:choose></span>
									</div>
									<div class="item rqDetailInfo">
										<span class="rqDetailLabel">의사선생님께 한 마디</span><span id="msg">${dto.msg }</span>
									</div>
									<c:if test="${dto.dcryNo != 0}">
										<div class="item rqDetailInfo">
											<span class="rqDetailLabel">첨부한 진료기록물</span><span id="msg"><a
												href="DcryDetail.do?dcryNo=${dto.dcryNo }">확인하기</a></span>
										</div>
									</c:if>
								</div>
							</div>
						</div>

						<div class="card-footer">
							<div class="row text-center">
								<button type="button" onclick="MakeMedDoneStatus()"
									class="btn btn-secondary col">진료완료</button>
								&nbsp;
								<button type="button" onclick="makeMedCancelStatus()" 
								class="btn btn-secondary col">
									진료취소</button>
							</div>
							<div class="row text-center">
								<button type="button"
									onclick="location.href='HHospitalUpload.do?sic_id=${dto.sicId }&hos_id=${dto.hosId}&artr_no=${dto.artrNo }&rqst_no=${dto.rqstNo}'"
									class="btn btn-secondary col">진료기록물 발급</button>
								<!-- 								<button type="button" -->
								<%-- 									onclick="location.href='HHospitalInquiry.do.do?sic_id=${dto.sicId }&hos_id=${dto.hosId}&artr_no=${dto.artrNo }&rqst_no=${dto.rqstNo}'" --%>
								<!-- 									class="btn btn-secondary col">진료기록물 조회</button> -->
							</div>
						</div>
					</form>
				</div>
				<!-- /.card -->
			</div>
		</div>
	</section>

</div>
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

<script>
	function MakeMedDoneStatus() { 
		var rqstNo = ${dto.rqstNo};
		console.log("rqstNo at MakeMedDoneStatus"+rqstNo);
		getMedDoneOk();
		$.ajax({
			type : "POST",
			url : "ajax/HMakeMedDoneStatus.do",
			dataType : "json",
			data : {
				rqstNo : rqstNo
			},
			success : function(result) {
				console.log("result"+result.ok);
				if(result.ok == 1){
					$("#modalLabel").text("처리완료");
					$("#modalBody").text("진료완료처리되었습니다.");
					$("#modal").modal({
						backdrop : 'static',
						keyboard : false
					});
					$("#modal").modal('show');
					$("#closeModalBtn").on("click", function() {
						$("#modal").modal('hide');
					});
					getMedDoneOk();
				} else {
					$("#modalLabel").text("처리실패");
					$("#modalBody").text("운영자에게 문의해주세요.");
					$("#modal").modal({
						backdrop : 'static',
						keyboard : false
					});
					$("#modal").modal('show');
					$("#closeModalBtn").on("click", function() {
						$("#modal").modal('hide');
					});
				}
			}
			,
			error: function() {
				$("#modalLabel").text("처리실패");
				$("#modalBody").text("운영자에게 문의해주세요.");
				$("#modal").modal({
					backdrop : 'static',
					keyboard : false
				});
				$("#modal").modal('show');
				$("#closeModalBtn").on("click", function() {
					$("#modal").modal('hide');
				});
			}
			
		})
	}

	function makeMedCancelStatus(){
		var rqstNo = ${dto.rqstNo};
		console.log("rqstNo at makeMedCancelStatus"+rqstNo);
		$.ajax({
			type : "POST",
			url : "ajax/makeMedCancelStatus.do",
			dataType : "json",
			data : {
				rqstNo : rqstNo
			},
			success : function(result) {
				console.log("result"+result);
				console.log("result.ok"+result.ok);
				if(result.ok == 2){
					$("#modalLabel").text("처리완료");
					$("#modalBody").text("진료취소처리되었습니다.");;
					$("#modal").modal({
						backdrop : 'static',
						keyboard : false
					});
					$("#modal").modal('show');
					$("#closeModalBtn").on("click", function() {
						$("#modal").modal('hide');
					});
					getMedDoneOk();
					$("#rqstTy").text("병원취소");
				} else {
					$("#modalLabel").text("처리실패");
					$("#modalBody").text("운영자에게 문의해주세요.");
					$("#modal").modal({
						backdrop : 'static',
						keyboard : false
					});
					$("#modal").modal('show');
					$("#closeModalBtn").on("click", function() {
						$("#modal").modal('hide');
					});
				}
			},
			error: function() {
				$("#modalLabel").text("처리실패");
				$("#modalBody").text("운영자에게 문의해주세요.");
				$("#modal").modal({
					backdrop : 'static',
					keyboard : false
				});
				$("#modal").modal('show');
				$("#closeModalBtn").on("click", function() {
					$("#modal").modal('hide');
				});
			}
		})
	}

</script>
<!-- ./wrapper -->
<%@ include file="/layout/all_footer.jsp"%>
