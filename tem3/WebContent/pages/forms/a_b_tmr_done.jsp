<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title></title>
  
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  
<!-- CSS 링크 -->
  <!-- Font Awesome -->
  <link rel="stylesheet" href="../../plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="../../dist/css/adminlte.min.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">

 <!-- js 링크 -->
 	<!-- jQuery -->
	<script src="../../plugins/jquery/jquery.min.js"></script>
	<!-- Bootstrap 4 -->
	<script src="../../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- AdminLTE App -->
	<script src="../../dist/js/adminlte.min.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="../../dist/js/demo.js"></script>
	
<!-- 유효성 체크 및 값 넘기기 -->	
<script>
//(이미 입력된 값은 중복 입력 X (db)
//중복값허용 X_같은날짜, 같은 병원, 같은의사 예약 불가)
</script>	

</head>

<body class="hold-transition sidebar-mini">


<div class="wrapper">
  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
  
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#"><i class="fas fa-bars"></i></a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="../../index3.html" class="nav-link">Home</a>
      </li>
    </ul>

    <!-- 어플이름 -->
    <form class="form-inline ml-3">
      <div class="input-group input-group-sm">
		<div>살려죠</div>
      </div>
    </form>

    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
    
      <!-- 알림아이콘 드롭다운 메뉴 Notifications Dropdown Menu -->
      <li class="nav-item dropdown">
        <a class="nav-link" data-toggle="dropdown" href="#">
          <i class="far fa-bell"></i>
          <span class="badge badge-warning navbar-badge">15</span>
        </a>
        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
          <span class="dropdown-item dropdown-header">15 Notifications</span>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <i class="fas fa-envelope mr-2"></i> 4 new messages
            <span class="float-right text-muted text-sm">3 mins</span>
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <i class="fas fa-users mr-2"></i> 8 friend requests
            <span class="float-right text-muted text-sm">12 hours</span>
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <i class="fas fa-file mr-2"></i> 3 new reports
            <span class="float-right text-muted text-sm">2 days</span>
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item dropdown-footer">See All Notifications</a>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link" data-widget="control-sidebar" data-slide="true" href="#">
          <i class="fas fa-th-large"></i>
        </a>
      </li>
    </ul>
  </nav>
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- 어플로고 Brand Logo -->
    <a href="../../index3.html" class="brand-link">
      <img src="../../dist/img/AdminLTELogo.png"
           alt="AdminLTE Logo"
           class="brand-image img-circle elevation-3"
           style="opacity: .8">
      <span class="brand-text font-weight-light">어플이름</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
    
      <!-- Sidebar user (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="../../dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
          <a href="#" class="d-block">로그인된 사용자명</a>
        </div>
      </div>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <li class="nav-item has-treeview">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                	서비스목록
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="../../index.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>진료예약신청</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="../../index2.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>접수신청</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="../../index3.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>진료신청내역</p>
                </a>
              </li>
            </ul>
          </li>
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>
	 


	  
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
