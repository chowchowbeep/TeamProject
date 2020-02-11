<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    

<%@ include file="../../0_sick_layout_header.jsp"%>


	  
<!-- 컨텐츠 위치 -->
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
          <!-- 1. 접수완료 멘트 출력 -->
            <h1>접수가 완료되었습니다!</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">홈</a></li>
              <li class="breadcrumb-item active">일반회원</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <!-- left column -->
          <div class="col-md-12">

          
          <!-- 선택한 정보 확인 -->
          <!-- 2. 접수된 정보 출력  -->
          <div class="card card-secondary">
				<div class="card-header">
					<h3 class="card-title">예약정보확인</h3>
				</div>
				<div class="card-body">
				
				<div class="row">
				   <div class="col-sm-6">
					<div class="form-group"><!--  -->
					<label for="hosName">병원명</label>
						 <input type="text" id="hosName" name="hosName" class="form-control" 
						 value="${dto.artr_name}병원명" disabled>
					<br>	 
					<label for="hosAddr">주소</label>
						<textarea id="hosAddr" name="hosAddr" 
                    	class="form-control" disabled>${dto.artr_name}주소주소</textarea>
					<br>
					<label for="hosTel">연락처</label>
						<input type="text" id="hosTel" name="hosTel" class="form-control" 
						 value="${dto.artr_name}연락처" disabled>
					<br>
                    <label for="DrInfo">의사 및 진료과목</label>
						 <input type="text" id="DrInfo" name="DrInfo" class="form-control" 
						 value="${dto.artr_name}의사이름 진료과목" disabled>
					<br>
					<label for="medTime">도착예상시간</label>
						 <input type="text" id="medTime" name="medTime" class="form-control" 
						 value="도착예상시간" disabled>
					<br>
					<label for="toDr">의사선생님에게  한 마디</label>
                    	<textarea id="toDr" name="toDr" 
                    	class="form-control" disabled></textarea>
                    	<!-- <input type="text" name="email" class="form-control" 
                    	id="toDr" name="toDr" placeholder="증상, 기타사항을 입력해주세요"> -->
                    <br>
					<!-- 	3. 예상 대기인원수 출력 (프로시저 이용) -->
					<label for="waiting">예상대기인원수</label>
						 <input type="text" id="waiting" name="waiting" class="form-control" 
						 value="예상대기인원수  n명" disabled>	 
					</div>	 	
					</div>
				</div>
				</div>
				
				


				
				
				
				<!-- 신청폼푸터 // 제출 및 기타 버튼 위치 -->
				<!-- 
					3. 확인버튼 구현
					-> 확인버튼 클릭시 접수현황 페이지로 이동
					4. 접수취소 버튼 구현
					-> 접수취소 버튼 클릭 : 취소완료 팝업페이지 출력
					-> 접수내역 페이지로 이동
				-->
				<div class="card-footer">
	              	<button onclick="location.href='접수현황페이지'" class="btn btn-secondary">확인</button>
	              	<button onclick=""  class="btn btn-secondary float-right">접수취소</button>
	            </div>
			</div>
					 <!-- 
					 	넘겨받는:당일접수 신청 페이지
					 	넘기는:접수신청현황페이지
					  --> 	
			
           
            </div>
          <!--/.col (left) -->
          
          <!-- right column -->
          <div class="col-md-6">

          </div>
          <!--/.col (right) -->
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  
 
  <%@ include file="../../0_all_layout_footer.jsp"%>
<script>
//취소시 발생 이벤트

</script>
</body>
</html>
