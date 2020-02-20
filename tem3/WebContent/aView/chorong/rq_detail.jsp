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
						<!-- 넘어온 값을 이용하여 접수내역/예약내역으로 구분하여 출력 -->
						<h1>진료신청현황_____${rqstNo}</h1>
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


						<!-- 1. 신청한 병원 상세정보 (병원이름, 의사이름, 주소, 진료예약시간) -->
						<div class="card card-secondary">
							<div class="card-header">
								<h3 class="card-title">상세정보</h3>
							</div>
							<div class="card-body">

								<div class="row">
									<div class="col-sm-6">
										<div>병원명:${dto.hosName }</div>
										<div>주소:${dto.hosAddr }</div>
										<div>연락처:${dto.hosPhone }</div>
										<div>담당의사:${dto.artr_name }</div>
										<div>진료과목:${dto.artr_sub }</div>
										<div>의사선생님께 한 마디:${dto.msg }</div>

										<!-- 접수일 경우에만 표시 -->
										<c:if test="${dto.rqstTy == 'D001'}">
											<div>도착예상시간:${dto.ifTime }</div>
											<div>예상대기인원수:</div>
											<!-- 크게 표시 -->
										</c:if>

										<!-- 예약일 경우에만 표시 -->
										<c:if test="${dto.rqstTy == 'D002'}">

											<%
												mediRqdetailDTO dto = (mediRqdetailDTO) request.getAttribute("dto");
													Date resDate = dto.getResDttm();
													Date resTime = dto.getResDttm();
											%>

											<div>
												진료날짜:<%=resDate%>
											</div>
											<div>
												진료시간:<%=resTime%>
											</div>
										</c:if>


									</div>


								</div>
							</div>
						</div>

						<div class="card card-secondary">
							<div class="card-header">
								<h3 class="card-title">주의사항</h3>
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
							<input type="hidden" id="rqstNo" name="rqstNo"
								value="${rqstNo} }">
							<!-- 선택한 진료신청항목의 진료신청번호를 전송_ 취소할 때 값 넘겨야 함 -->
							<input type="hidden" id="id" name="id" value="${id }">
							<!-- 로그인중인 아이디 -->


							<!-- 신청폼푸터 //2. 예약/접수취소 버튼 -->

							<div class="card-footer">
								<button onclick="toBeforeMedList()" class="btn btn-secondary">확인</button>
								<button onclick="cancelRes()"
									class="btn btn-secondary float-right">진료신청취소</button>
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




