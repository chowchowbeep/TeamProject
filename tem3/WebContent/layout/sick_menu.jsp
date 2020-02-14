<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="https://unpkg.com/ionicons@5.0.0/dist/ionicons.js"></script>
</head>

<body class="hold-transition sidebar-mini layout-fixed">
	<div class="wrapper">

		<!-- Navbar -->
		<nav
			class="main-header navbar navbar-expand navbar-white navbar-light">
			<!-- 왼쪽 메뉴아이콘 자리 -->
			<!-- Left navbar links -->
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" href="javascript:history.back();"> 
				<ion-icon name="arrow-back-outline"></ion-icon>
				</a></li>
			</ul>


			<form class="form-inline ml-5">
				<div class="input-group input-group-sm" style="font-size: 30px;">
					<!-- 타이틀을 중앙에 어떻게 둘까요? -->
					SALLYEOJYO
				</div>
			</form>



			<!-- Right navbar links -->
			<ul class="navbar-nav ml-auto">
				<!-- Notifications Dropdown Menu -->
				<li class="nav-item dropdown"><a class="nav-link"
					data-toggle="dropdown" href="#"> <i class="far fa-bell"></i> <span
						class="badge badge-warning navbar-badge">15</span>
				</a>
					<div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
						<span class="dropdown-item dropdown-header">15
							Notifications</span>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item"> <i
							class="fas fa-envelope mr-2"></i> 4 new messages <span
							class="float-right text-muted text-sm">3 mins</span>
						</a>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item"> <i
							class="fas fa-users mr-2"></i> 8 friend requests <span
							class="float-right text-muted text-sm">12 hours</span>
						</a>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item"> <i class="fas fa-file mr-2"></i>
							3 new reports <span class="float-right text-muted text-sm">2
								days</span>
						</a>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item dropdown-footer">See All
							Notifications</a>
					</div></li>



				<li class="nav-item"><a class="nav-link" data-widget="pushmenu"
					href="#"> <i class="fas fa-bars"></i>
				</a></li>


			</ul>
		</nav>
		<!-- /.navbar -->








		<!-- 햄버거메뉴 내용 -->
		<!-- Main Sidebar Container -->
		<aside class="main-sidebar sidebar-dark-primary elevation-4">
			<!-- Brand Logo -->
			<a href="/tem3/index3.html" class="brand-link"> <img
				src="/tem3/dist/img/AdminLTELogo.png" alt="AdminLTE Logo"
				class="brand-image img-circle elevation-3" style="opacity: .8">
				<span class="brand-text font-weight-light">SALLYEOJYO</span>
			</a>

			<!-- Sidebar -->
			<div class="sidebar">
				<!-- Sidebar user panel (optional) -->
				<div class="user-panel mt-3 pb-3 mb-3">
					<div class="text-center">
						<a href="#"><img src="/tem3/dist/img/user2-160x160.jpg"
							class="img-circle" alt="User Image"
							style="width: 70%; height: 70%;"></a>
						<div style="padding-top: 15px;">
							<a href="#" class="d-block"><strong>김환자 님!</strong></a>
							<div style="color:#C2C7D0">건강한 하루되세요</div>
						</div>
					</div>
				</div>
				<!-- Sidebar Menu -->
				<nav class="mt-2">
					<ul class="nav nav-pills nav-sidebar flex-column"
						data-widget="treeview" role="menu" data-accordion="false">
						<!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->


						<li class="nav-header"><small><strong>일반회원
									메뉴</strong></small></li>

						<li class="nav-item"><a href="/tem3/aView/chorong/med_beforeMedList.jsp" class="nav-link">
								<p>진료신청현황</p>
						</a></li>
						<li class="nav-item"><a href="/tem3/aView/chorong/med_doneList.jsp" class="nav-link">
								<p>진료이력</p>
						</a></li>
						<li class="nav-item"><a href="/tem3/aView/kjr/search_main.jsp" class="nav-link">
								<p>병원검색</p>
						</a></li>
						<li class="nav-item"><a href="/tem3/aView/kjr/aroundMap.jsp" class="nav-link">
								<p>주변병원/약국 조회</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link">
								<p>약정보조회</p>
						</a></li>
						<li class="nav-item"><a href="/tem3/aView/kjr/review_mylist.jsp" class="nav-link">
								<p>내가 쓴 리뷰</p>
						</a></li>

						<li class="nav-item"><a href="/aView/taeyoung/sick_wjqtnwmd.jsp/" class="nav-link">
								<p>접수증</p>
						</a></li>
						<li class="nav-item"><a href="/aView/" class="nav-link">
								<p>의료 기록물</p>
						</a></li>
					</ul>

					

					<c:if test="로그인상태가 아닌경우">
						<div class="text-center" style="padding:20px;">
							<a href="#로그인페이지" class="d-block"
							><small><strong>로그인</strong></small></a>
						</div>
					</c:if>
					<div class="text-center" style="padding:20px;">
						<a href="로그아웃페이지" class="d-block">
						<small><strong>로그아웃</strong></small></a>
					</div>
					
				</nav>
				<!-- /.sidebar-menu -->

			</div>
			<!-- /.sidebar -->
		</aside>




		<!-- Content Wrapper. Contains page content -->
		<!--  <div class="content-wrapper">-->


		<!-- 개별 컨텐츠 위치 -->