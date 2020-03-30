<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<%@ include file="/layout/sick_head.jsp"%>
<style>
.label::after {
	content: "\00a0\00a0\00a0\00a0";
}
.label {
	font-weight: bold;
}


</style>
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
						<h1>의료기록물 조회</h1>
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
							<div class="card-header">
								<h3 class="card-title">기록물 상세내용</h3>
							</div>
							<div class="card-body">

								<div class="row">
									<div class="col-sm-12">
										<div ><img src="${pageContext.request.contextPath}/upload/${dto.fileName}"
										class="card-img" style="width: 80%" alt="..."></div><br>
										<div><span class="label">파일명 </span> ${dto.fileName }</div>
										<div><span class="label">발급 병원 </span> ${dto.hosName }</div>
										<div><span class="label">발급 담당의 </span> ${dto.artrName }</div>
										<div><span class="label">발급 일자 </span> ${dto.dcryDttm }</div>
										<div><span class="label">비고 </span> ${dto.dcryEtc }</div>
									</div>
								</div>
							</div>

							<div class="card-footer">
								<button type="button" onclick="javascript:history.go(-1)"
									class="btn btn-secondary float-right">확인</button>
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

</body>
</html>
