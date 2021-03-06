<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/layout/hos_head.jsp"%>
<%@ include file="/layout/hos_menu.jsp"%>

</head>
<body>
<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<section class="content-header">
	  <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0 text-dark">키워드 관리</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div><!-- /.content-header -->

	</section>



	<!-- Main content -->
	<section class="content">

		<div class="card card-secondary">
			<div class="card-header  card text-center">
				<h3 class="card-title">건강정보 수정 페이지</h3>
			</div>
			<!-- /.card-header -->
			<!-- form start -->
			
				
			
				
		<form class="sickHeal" method=post action="hosCodeUpdate.do">
			<div class="card-body">
						<div class="row">							
							<div class="col-4 ">진료과목</div> <!-- 왼쪽 -->
							<div class="col-8">	<!-- 오른쪽 -->
								<c:forEach items="${list }" var="li">
									<c:if test="${li.type eq 'SUB'}">
									<div>
										<input type="checkbox" value="${li.code}"
											name="SUB" class="chrdis">${li.name}
									</div>
									</c:if>
								</c:forEach>
							</div>							
						</div>
						<br>
						<div class="row">							
							<div class="col-4 ">증상</div> <!-- 왼쪽 -->
							<div class="col-8">	<!-- 오른쪽 -->
								<c:forEach items="${list }" var="li">
									<c:if test="${li.type eq 'APA' }">
									<div>
										<input type="checkbox" value="${li.code}"
											name="APA" class="chrdis">${li.name}
									</div>
									</c:if>
								</c:forEach>
							</div>							
						</div>
						<br>
						<div class="row">							
							<div class="col-4 ">테마</div> <!-- 왼쪽 -->
							<div class="col-8">	<!-- 오른쪽 -->
								<c:forEach items="${list }" var="li">
									<c:if test="${li.type eq 'TEMA'}">
									<div>
										<input type="checkbox" value="${li.code}"
											name="TEMA" class="chrdis">${li.name} 
									</div>
									</c:if>
								</c:forEach>
								<script>   
									$('.chrdis').val(${hosCode});	
								</script>
							</div>							
						</div>
					
			</div>
			
			<!-- 반복문종료 -->
					<!-- /.card-body -->
					<div class="card-footer  text-center">
						<button type="submit" class="btn btn-secondary">수정완료</button>
						<!-- cancel에는 button type reset? -->
						<button type="button" class="btn btn-default"
							onclick="javascript:history.go(-1)">수정취소</button>
					</div>
					<!-- /.card-footer -->
				</form>
		
		</div>
	</section>

	<!-- Control Sidebar -->
	<aside class="control-sidebar control-sidebar-dark">
		<!-- Control sidebar content goes here -->
	</aside>
	<!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<%@ include file="/layout/all_footer.jsp"%>

</body>
</html>
