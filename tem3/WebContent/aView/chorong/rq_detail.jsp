<%@page import="java.sql.Date"%>
<%@page import="lastdto.mediRqdetailDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ include file="/layout/sick_head.jsp"%>
<script src="<%=request.getContextPath()%>/aView/chorong/js/chorong.js"></script>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/aView/chorong/css/chorong.css">
<%@ include file="/layout/sick_menu.jsp"%>

<form id="frm" name="frm" method="post">
	<!-- 컨텐츠 위치 -->
	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper">
		<!-- Content Header (Page header) -->
		<section class="content-header">
			<div class="container-fluid">
				<div class="row mb-2">
					<div class="col-sm-6">
						<!-- 넘어온 페이지에 따라 다르게 해야 함 -->

						<h1>진료신청현황</h1>
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
									<div class="col-sm-12">


										<c:if test="${dto.rqstTy == 'D001'}">
											<div>진료신청상태 : 접수</div>
										</c:if>
										<c:if test="${dto.rqstTy == 'D002'}">
											<div>진료신청상태 : 예약</div>
										</c:if>
										<c:if test="${dto.rqstTy == 'D003'}">
											<div>진료신청상태 : 병원취소</div>
										</c:if>
										<c:if test="${dto.rqstTy == 'D004'}">
											<div>진료신청상태 : 환자취소</div>
										</c:if>


										<div>병원명 : ${dto.hosName }</div>
										<div>주소 : ${dto.hosAddr }</div>
										<div>병원연락처 : ${dto.hosPhone }</div>
										<div>담당의사 : ${dto.artrName }</div>

										<c:if test="${dto.artrSub == 'CS10'}">
											<div>진료과목 : 내과</div>
										</c:if>
										<c:if test="${dto.artrSub == 'CS20'}">
											<div>진료과목 : 소아과</div>
										</c:if>
										<c:if test="${dto.artrSub == 'CS30'}">
											<div>진료과목 : 외과</div>
										</c:if>
										<c:if test="${dto.artrSub == 'CS40'}">
											<div>진료과목 : 정형외과</div>
										</c:if>
										<c:if test="${dto.artrSub == 'CS50'}">
											<div>진료과목 : 치과</div>
										</c:if>

										<div>의사선생님께 한 마디 : ${dto.msg }</div>

										<!-- 접수일 경우에만 표시  -->
										<c:if test="${dto.rqstTy == 'D001'}">
											<div>도착예상시간 : ${dto.ifTime }</div>
											<div>예상대기인원수 :</div>
											<!-- 크게 표시 -->
										</c:if>

										<!-- 예약일 경우에만 표시 -->
										<c:if test="${dto.rqstTy == 'D002'}">
											<div>
												진료날짜 : ${dto.resDt }
											</div>
											<div>
												진료시간 : ${dto.resTm }
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
										<div>
											<span style="font-weight: bold;"> 1.</span> 병원 내원시 살려죠 서비스를
											통해 예약/접수하였다고 알려주세요.
										</div>
										<div>
											<span style="font-weight: bold;"> 2.</span> 예약/접수를 취소하실 경우
											패널티가 부여됩니다. (3회 취소시 서비스이용이 제한됩니다.)
										</div>
										<div>
											<span style="font-weight: bold;"> 3.</span> 예약/접수는 병원사정으로 인해
											취소될 가능성이 있습니다.
										</div>
									</div>
								</div>
							</div>
							<input type="hidden" id="rqstNo" name="rqstNo" value="${dto.rqstNo}">
							<!-- 선택한 진료신청항목의 진료신청번호를 전송_ 취소할 때 값 넘겨야 함 -->
							<input type="hidden" id="id" name="id" value="${dto.sicId }">
							<!-- 로그인중인 아이디 -->


							<!-- 신청폼푸터 //2. 예약/접수취소 버튼 -->
							<div class="card-footer">
								<button onclick="toBeforeMedList()" class="btn btn-secondary">확인</button>
								<!-- 진료상태가 진료완료가 아닌 경우(진료전인경우)_ list 가져올때 이미 필터링 됨
								+  진료타입이 병원취소이거나 환자취소가 아닌경우-->
								<c:if
									test="${dto.rqstTy != 'D003' ||
								dto.rqstTy != 'D004'}">
									<button onclick="cancelRes()"
										class="btn btn-secondary float-right">진료신청취소</button>
								</c:if>
								<!-- js파일 참고_ 각각 SMedABeforeMedList.do, SCancelRq.do 요청 -->


							</div>
						</div>
					</div>


				</div>
				<!--/.col (left) -->




				<!-- right column -->
				<div class="col-md-12"></div>
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
</body>
</html>




