<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ include file="/layout/sick_head.jsp"%>
<%@ include file="/layout/sick_menu.jsp"%>




</head>

<body>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	 <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0 text-dark">진료기록물 조회</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div><!-- /.content-header -->

	<!-- Main content -->
	<section class="content">

		<div class="card card-secondary">

			<!-- <div class="card table-responsive pad card text-center">
				<div class="btn-group btn-group-toggle">
					<label class="btn btn-secondary active">
						기록물
					</label> 
				</div>
			</div> -->

			<!-- /.card-header -->
			<!-- form start -->
				<!-- Modal -->
				<div class="modal fade" id="exampleModal" tabindex="-1"
					role="dialog" aria-labelledby="exampleModalLabel"
					aria-hidden="true">
					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="exampleModalLabel">사람이름+님의 기록물</h5>
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
							<div class="modal-body">
								<img class="mw-100 mh-100"
									src="${pageContext.request.contextPath}/upload/고양.jpg">사진
								파일이 떠용
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary"
									data-dismiss="modal">확인</button>
								<button type="button" class="btn btn-secondary"
									onclick="location.href='fileCall.jsp'">다운로드</button>
							</div>
						</div>
					</div>
				</div>
				<form>
				<div class="card-body">
						<div class="form-group col-mb-6 abc" style=" width: 100%; float: left;">
										<br>
										<p class="card-text ">
										<c:forEach items="${list }" var="dto">
										파일: <c:if test="${dto.fileType =='F001'}" >
											<div class="col-10"> 
										<img src="${pageContext.request.contextPath}/upload/${dto.fileName}"
										class="card-img" style="width: 80%" alt="..."> 
								</div></c:if>
								<c:if test="${dto.fileType =='F002'}">
											<input type="text" class="form-control" id="file_type" name="file_type"
								value="동영상" readonly></c:if>
								<c:if test="${dto.fileType =='F003'}">
											<input type="text" class="form-control" id="file_type" name="file_type"
								value="문서" readonly></c:if>
								<br>
										발급병원: 	<input type="text" class="form-control" id="hos_name" name="hos_name"
								value="${dto.hosName}" readonly	> <br> 
											담당의사:  <input type="text" class="form-control" id="artr_name" name="artr_name"
								value="${dto.artrName}" readonly ><br> 
											발급일자: <input type="text" class="form-control" id="dcry_dttm" name="dcry_dttm"
								value="${dto.dcryDttm}" readonly><br> 
									파일 이름: <input type="text" class="form-control" id="file_name" name="file_name"
								value="${dto.fileName}" readonly>
						
								
										</c:forEach>
									
										</p>
										<p class="card-text col-md-6">
											<small class="text-muted">1시간 전</small>
										</p>
								
								</div>
				</div>
				</form>
		</div>
	</section>
	<!-- Control Sidebar -->
	<aside class="control-sidebar control-sidebar-dark">
		<!-- Control sidebar content goes here -->
	</aside>
	<!-- /.control-sidebar -->
	<!-- ./wrapper -->
</div>
<%@ include file="/layout/all_footer.jsp"%>
</body>
</html>
