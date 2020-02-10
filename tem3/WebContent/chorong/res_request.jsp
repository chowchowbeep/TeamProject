<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title></title>
  

<!-- 유효성 체크 및 값 넘기기 -->	
<script>
// 필수입력사항체크 후 값 넘기도록

</script>	

</head>



<body class="hold-transition sidebar-mini">

<%@ include page=""%>
	  
<!-- 컨텐츠 위치 -->
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>진료예약신청</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">홈</a></li>
              <li class="breadcrumb-item active">진료신청</li>
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
          
         
         
         	<!--
				1. 선택한 병원, 의사, 진료과목 정보 출력 
				c:if
				c:choose사용
				<c:forEach var="dto" items="${list }">
				다수의 dto필드값 가져올 때 // 의사 여러명인 경우
				</c:forEach>
			 -->
         
         

            <!-- 1. 선택한 병원정보 출력  -->
        	<div class="card card-secondary">
				<div class="card-header">
					<h3 class="card-title">선택한 정보 확인</h3>
				</div>
				<div class="card-body">
				
				<div class="row">
				   <div class="col-sm-6">
					<div class="form-group">
					<label for="hosName">병원명</label>
						 <input type="text" id="hosName" name="hosName" class="form-control" 
						 value="${dto.artr_name}병원명" disabled>
					<br>
					<label for="hosAddr">주소</label>
						<textarea id="hosAddr" name="hosAddr" 
                    	class="form-control" disabled>${dto.artr_name}주소주소</textarea>
					<br>
					</div>
				</div>
				</div>
			</div>
			</div>
         
         
          <!-- 신청 폼 div시작 -->
          <div class="card card-secondary">
          	<!-- 신청폼헤더 -->
              <div class="card-header">
                <h3 class="card-title">의사선택</h3>
              </div>
              <!-- /.card-header 끝 신청폼말머리-->
              
              <!-- 신청폼바디 // form 태그 시작-->
              <div class="card-body">
              	<!-- @질문 : role속성 뭐임 -->
                <form role="form" id ="frm" name="frm" 
                action="예약날짜 선택 페이지" method="post"
				return="필수입력사항체크펑션">
                
	
	  
                  <div class="row">
                    <div class="col-sm-6">
                    
                    
                      <!-- 2. 의사 선택_ 선택한병원정보에서 -->
                      <div class="form-group">
                        <label for="Dr">진료받을 의사 선택</label>
                        <select class="custom-select" id="Dr" name="Dr">
                          	<option value="${dto.artr_name}">
							성명: 예시성명 / 진료과목: 예시과목
							</option>
							<option value="${dto.artr_name}">
							성명: ${dto.artr_name} / 진료과목: ${dto.artr_sub} 
							</option>
                        </select>
                      </div>
                      
                      <!-- 3. 선생님께 한마디 입력란  -->
                      <div class="form-group">
                    	<label for="toDr">의사선생님에게  한 마디</label>
                    	<textarea id="toDr" name="toDr" 
                    	class="form-control" 
                    	placeholder="증상, 기타사항을 입력해주세요"></textarea>
                    	<!-- <input type="text" name="email" class="form-control" 
                    	id="toDr" name="toDr" placeholder="증상, 기타사항을 입력해주세요"> -->
                  	  </div>
                  	  
                  	  <!-- 4. 기록물 업로드 버튼 구현 / 모달창 띄우기?? -->
                  	  <div class="form-group">
                  	  <label for="dcUpload">진료시 의료진이 참고할 기록물 첨부</label>
                  	  	<input type="button" class="btn btn-default" id="dcUpload" name="dcUpload"
                  	  	onclick="location.href='tmr_selectDcry.jsp'"
                  	  	value="기록물 업로드">
                  	  </div>
                  	  
                    </div>
                  </div>
                </form>
              </div>
              <!-- /.card-body 끝 신청폼바디-->
              
              <!-- 신청폼푸터 // 제출 및 기타 버튼 위치 -->
              <!-- 5. 다음:예약날짜 선택 페이지로 이동 
				// 바로 submit되게??? 입력정보가지고 신청페이지 내에서 이동가능하게 하고,
				최종페이지에서  DAO로 넘기게 하려면 어떻게 해야 ?? -->
              <div class="card-footer">
              	<input type="submit" class="btn btn-secondary" value="이전">
              	<input type="submit" class="btn btn-secondary float-right" value="다음">
                 <!-- 
				 	전: 병원정보 상세조회 페이지(선택한 병원정보를넘겨받아야 함)
				 	후: 예약날짜 선택 페이지, (진료신청시)기록물 선택 페이지
				  -->
                  
              </div>
            </div>
          
            
           
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
  
 
  <footer class="main-footer">
    <div class="float-right d-none d-sm-block">
      <b>Version</b> 3.0.3-pre
    </div>
    <strong>Copyright &copy; 2014-2019 <a href="http://adminlte.io">AdminLTE.io</a>.</strong> All rights
    reserved.
  </footer>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->


</body>
</html>
