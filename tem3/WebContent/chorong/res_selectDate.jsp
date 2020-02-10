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
  
  <!-- Daterange picker -->
  <link rel="stylesheet" href="../../plugins/daterangepicker/daterangepicker.css">
  
  <!-- Tempusdominus Bbootstrap 4_ 달력 정렬하게 함 -->
  <link rel="stylesheet" href="../../plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
  
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
//필수값선택 여부 확인

//신청가능여부 제어
//병원 스케줄(휴일을 예약가능날짜에서 제외, 영업상태속성확인)
//의사 스케줄(의사휴일을 예약가능날짜에서 제외)
//병원기본정보 등이필요.


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
      <li class="nav-item d-none d-sm-inline-block">
        <a href="#" class="nav-link">Contact</a>
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
          
          
          <!-- 선택한 정보 확인 -->
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
                    <label for="DrInfo">의사 및 진료과목</label>
						 <input type="text" id="DrInfo" name="DrInfo" class="form-control" 
						 value="의사이름 진료과목" disabled>
					</div>
					</div>
				</div>
				</div>
			</div>
          
          
          
          
          
          <!-- 신청 폼 div시작 -->
          <div class="card card-secondary">
          
          	<!-- 신청폼헤더 -->
              <div class="card-header">
                <h3 class="card-title">진료날짜선택</h3>
              </div>
              <!-- /.card-header 끝 신청폼말머리-->
              
              <!-- 신청폼바디 // form 태그 시작-->
              <div class="card-body">
              	<!-- @질문 : role속성 뭐임 -->
                <form role="form" id ="frm" name="frm" 
                action="예약시간 선택 페이지" method="post"
				return="필수입력사항체크펑션">
                
				
                  <div class="row">
                    <div class="col-sm-6">
                    
                   
                  
                        
                <!-- 1. 캘린터 출력_선택 불가능 항목은 색으로 구분 
				// 아래는 사용불가한 달력. 캘린더는 datepicker 플러그인 이용해야??--> 
				  <!-- 2. 원하는 날짜 선택 기능_(DB) 병원휴일, 의사휴일 값 외의 값만 출력 -->
				  
				  <section class="content">
				      <div class="container-fluid">
				        <!-- Main row -->
				        <div class="row">
				          
				          <!-- right col (We are only adding the ID to make the widgets sortable)-->
				          <section class="col-lg-7 connectedSortable ui-sortable">
				            <!-- Calendar -->
				            <div class="card bg-gradient-success">
				              <div class="card-header border-0 ui-sortable-handle" style="cursor: move;">
				
				                <h3 class="card-title">
				                  <i class="far fa-calendar-alt"></i>
				                  Calendar
				                </h3>
				                
				              </div>
				              <!-- /.card-header -->
				              <div class="card-body pt-0">
				                <!--The calendar -->
				                <div id="calendar" style="width: 100%"><div class="bootstrap-datetimepicker-widget usetwentyfour"><ul class="list-unstyled"><li class="show"><div class="datepicker"><div class="datepicker-days" style=""><table class="table table-sm"><thead><tr><th class="prev" data-action="previous"><span class="fa fa-chevron-left" title="Previous Month"></span></th><th class="picker-switch" data-action="pickerSwitch" colspan="5" title="Select Month">February 2020</th><th class="next" data-action="next"><span class="fa fa-chevron-right" title="Next Month"></span></th></tr><tr><th class="dow">Su</th><th class="dow">Mo</th><th class="dow">Tu</th><th class="dow">We</th><th class="dow">Th</th><th class="dow">Fr</th><th class="dow">Sa</th></tr></thead><tbody><tr><td data-action="selectDay" data-day="01/26/2020" class="day old weekend">26</td><td data-action="selectDay" data-day="01/27/2020" class="day old">27</td><td data-action="selectDay" data-day="01/28/2020" class="day old">28</td><td data-action="selectDay" data-day="01/29/2020" class="day old">29</td><td data-action="selectDay" data-day="01/30/2020" class="day old">30</td><td data-action="selectDay" data-day="01/31/2020" class="day old">31</td><td data-action="selectDay" data-day="02/01/2020" class="day weekend">1</td></tr><tr><td data-action="selectDay" data-day="02/02/2020" class="day weekend">2</td><td data-action="selectDay" data-day="02/03/2020" class="day">3</td><td data-action="selectDay" data-day="02/04/2020" class="day">4</td><td data-action="selectDay" data-day="02/05/2020" class="day">5</td><td data-action="selectDay" data-day="02/06/2020" class="day">6</td><td data-action="selectDay" data-day="02/07/2020" class="day">7</td><td data-action="selectDay" data-day="02/08/2020" class="day weekend">8</td></tr><tr><td data-action="selectDay" data-day="02/09/2020" class="day active today weekend">9</td><td data-action="selectDay" data-day="02/10/2020" class="day">10</td><td data-action="selectDay" data-day="02/11/2020" class="day">11</td><td data-action="selectDay" data-day="02/12/2020" class="day">12</td><td data-action="selectDay" data-day="02/13/2020" class="day">13</td><td data-action="selectDay" data-day="02/14/2020" class="day">14</td><td data-action="selectDay" data-day="02/15/2020" class="day weekend">15</td></tr><tr><td data-action="selectDay" data-day="02/16/2020" class="day weekend">16</td><td data-action="selectDay" data-day="02/17/2020" class="day">17</td><td data-action="selectDay" data-day="02/18/2020" class="day">18</td><td data-action="selectDay" data-day="02/19/2020" class="day">19</td><td data-action="selectDay" data-day="02/20/2020" class="day">20</td><td data-action="selectDay" data-day="02/21/2020" class="day">21</td><td data-action="selectDay" data-day="02/22/2020" class="day weekend">22</td></tr><tr><td data-action="selectDay" data-day="02/23/2020" class="day weekend">23</td><td data-action="selectDay" data-day="02/24/2020" class="day">24</td><td data-action="selectDay" data-day="02/25/2020" class="day">25</td><td data-action="selectDay" data-day="02/26/2020" class="day">26</td><td data-action="selectDay" data-day="02/27/2020" class="day">27</td><td data-action="selectDay" data-day="02/28/2020" class="day">28</td><td data-action="selectDay" data-day="02/29/2020" class="day weekend">29</td></tr><tr><td data-action="selectDay" data-day="03/01/2020" class="day new weekend">1</td><td data-action="selectDay" data-day="03/02/2020" class="day new">2</td><td data-action="selectDay" data-day="03/03/2020" class="day new">3</td><td data-action="selectDay" data-day="03/04/2020" class="day new">4</td><td data-action="selectDay" data-day="03/05/2020" class="day new">5</td><td data-action="selectDay" data-day="03/06/2020" class="day new">6</td><td data-action="selectDay" data-day="03/07/2020" class="day new weekend">7</td></tr></tbody></table></div><div class="datepicker-months" style="display: none;"><table class="table-condensed"><thead><tr><th class="prev" data-action="previous"><span class="fa fa-chevron-left" title="Previous Year"></span></th><th class="picker-switch" data-action="pickerSwitch" colspan="5" title="Select Year">2020</th><th class="next" data-action="next"><span class="fa fa-chevron-right" title="Next Year"></span></th></tr></thead><tbody><tr><td colspan="7"><span data-action="selectMonth" class="month">Jan</span><span data-action="selectMonth" class="month active">Feb</span><span data-action="selectMonth" class="month">Mar</span><span data-action="selectMonth" class="month">Apr</span><span data-action="selectMonth" class="month">May</span><span data-action="selectMonth" class="month">Jun</span><span data-action="selectMonth" class="month">Jul</span><span data-action="selectMonth" class="month">Aug</span><span data-action="selectMonth" class="month">Sep</span><span data-action="selectMonth" class="month">Oct</span><span data-action="selectMonth" class="month">Nov</span><span data-action="selectMonth" class="month">Dec</span></td></tr></tbody></table></div><div class="datepicker-years" style="display: none;"><table class="table-condensed"><thead><tr><th class="prev" data-action="previous"><span class="fa fa-chevron-left" title="Previous Decade"></span></th><th class="picker-switch" data-action="pickerSwitch" colspan="5" title="Select Decade">2020-2029</th><th class="next" data-action="next"><span class="fa fa-chevron-right" title="Next Decade"></span></th></tr></thead><tbody><tr><td colspan="7"><span data-action="selectYear" class="year old">2019</span><span data-action="selectYear" class="year active">2020</span><span data-action="selectYear" class="year">2021</span><span data-action="selectYear" class="year">2022</span><span data-action="selectYear" class="year">2023</span><span data-action="selectYear" class="year">2024</span><span data-action="selectYear" class="year">2025</span><span data-action="selectYear" class="year">2026</span><span data-action="selectYear" class="year">2027</span><span data-action="selectYear" class="year">2028</span><span data-action="selectYear" class="year">2029</span><span data-action="selectYear" class="year old">2030</span></td></tr></tbody></table></div><div class="datepicker-decades" style="display: none;"><table class="table-condensed"><thead><tr><th class="prev" data-action="previous"><span class="fa fa-chevron-left" title="Previous Century"></span></th><th class="picker-switch" data-action="pickerSwitch" colspan="5">2000-2090</th><th class="next" data-action="next"><span class="fa fa-chevron-right" title="Next Century"></span></th></tr></thead><tbody><tr><td colspan="7"><span data-action="selectDecade" class="decade old" data-selection="2006">1990</span><span data-action="selectDecade" class="decade" data-selection="2006">2000</span><span data-action="selectDecade" class="decade active" data-selection="2016">2010</span><span data-action="selectDecade" class="decade" data-selection="2026">2020</span><span data-action="selectDecade" class="decade" data-selection="2036">2030</span><span data-action="selectDecade" class="decade" data-selection="2046">2040</span><span data-action="selectDecade" class="decade" data-selection="2056">2050</span><span data-action="selectDecade" class="decade" data-selection="2066">2060</span><span data-action="selectDecade" class="decade" data-selection="2076">2070</span><span data-action="selectDecade" class="decade" data-selection="2086">2080</span><span data-action="selectDecade" class="decade" data-selection="2096">2090</span><span data-action="selectDecade" class="decade old" data-selection="2106">2100</span></td></tr></tbody></table></div></div></li><li class="picker-switch accordion-toggle"></li></ul></div></div>
				              </div>
				              <!-- /.card-body -->
				            </div>
				            <!-- /.card -->
				          </section>
				          <!-- right col -->
				        </div>
				        <!-- /.row (main row) -->
				      </div><!-- /.container-fluid -->
				    </section>
    
		               
                    </div>
                  </div>
                </form>
              </div>
              <!-- /.card-body 끝 신청폼바디-->
              
              
              
              <!-- 신청폼푸터 // 제출 및 기타 버튼 위치 -->
              	<!-- 
					넘겨받을페이지: 예약신청 페이지
					넘기는페이지:예약신청페이지(이전버튼), 예약시간 선택 페이지(다음버튼)
				 -->
              <div class="card-footer">
              	<input type="submit" class="btn btn-secondary" value="이전">
              	<input type="submit" class="btn btn-secondary float-right" value="다음">
              	
              
                
                  
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



<!-- Bootstrap 4 -->
<script src="../../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- daterangepicker -->
<script src="../../plugins/moment/moment.min.js"></script>
<script src="../../plugins/daterangepicker/daterangepicker.js"></script>
<div class="daterangepicker ltr show-ranges opensright"><div class="ranges"><ul><li data-range-key="Today">Today</li><li data-range-key="Yesterday">Yesterday</li><li data-range-key="Last 7 Days">Last 7 Days</li><li data-range-key="Last 30 Days">Last 30 Days</li><li data-range-key="This Month">This Month</li><li data-range-key="Last Month">Last Month</li><li data-range-key="Custom Range">Custom Range</li></ul></div><div class="drp-calendar left"><div class="calendar-table"></div><div class="calendar-time" style="display: none;"></div></div><div class="drp-calendar right"><div class="calendar-table"></div><div class="calendar-time" style="display: none;"></div></div><div class="drp-buttons"><span class="drp-selected"></span><button class="cancelBtn btn btn-sm btn-default" type="button">Cancel</button><button class="applyBtn btn btn-sm btn-primary" disabled="disabled" type="button">Apply</button> </div></div>
</body>
</html>
