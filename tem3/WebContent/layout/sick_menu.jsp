<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<style>
	#toMain {
		color: black;
		text-decoration:none;
		font-weight:200;
	}
</style>
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
				<li class="nav-item"><a class="nav-link"
					href="javascript:history.back();"> <ion-icon
							name="arrow-back-outline"></ion-icon>
				</a></li>
			</ul>


			<form class="form-inline mx-auto">
				<div class="input-group input-group-sm" style="font-size: 30px;">
				<a href="SSickMain.do" id="toMain">HELLO DOCTOR</a></div>
			</form>



			<!-- Right navbar links -->
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" data-widget="pushmenu"
					href="#"> <i class="fas fa-bars"></i>
				</a></li>


			</ul>
		</nav>
		<!-- /.navbar -->





		<!-- 햄버거메뉴 내용 -->
		<!-- Main Sidebar Container -->
		<aside class="main-sidebar sidebar-dark-secondary elevation-4">
			<!-- Brand Logo -->
			<a href="#" class="brand-link"> <img
				src="/tem3/dist/img/AdminLTELogo.png" alt="AdminLTE Logo"
				class="brand-image img-circle elevation-3" style="opacity: .8">
				<span class="brand-text font-weight-light">HELLO DOCTOR</span>
			</a>

			<!-- Sidebar -->
			<div class="sidebar">
				
				<!-- Sidebar Menu -->
				<nav class="mt-2">
					<ul class="nav nav-pills nav-sidebar flex-column"
						data-widget="treeview" role="menu" data-accordion="false">
						<!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->


						<li class="nav-header"><h5><strong>일반회원
									메뉴</strong></h5></li>
						
						<li class="nav-item"><a href="SSickMain.do"
							class="nav-link">
								<p>메인</p>
						</a></li>
						<li class="nav-item"><a href="SSickMemCheck.do"
							class="nav-link">
								<p>회원정보조회</p>
						</a></li>
						<li class="nav-item"><a href="SMedBeforeMedList.do"
							class="nav-link">
								<p>진료신청현황</p>
						</a></li>
						<li class="nav-item"><a href="SMedDoneList.do"
							class="nav-link">
								<p>진료완료이력</p>
						</a></li>
						<li class="nav-item"><a href="SsearchMain.do"
							class="nav-link">
								<p>병원검색</p>
						</a></li>
<!-- 						<li class="nav-item"><a href="SAroundMap.do" class="nav-link"> -->
<!-- 								<p>주변병원/약국 조회</p> -->
<!-- 						</a></li> -->
<!-- 						<li class="nav-item"><a href="#" class="nav-link"> -->
<!-- 								<p>약정보조회_미정</p> -->
<!-- 						</a></li> -->
						<li class="nav-item"><a href="SReviewMylist.do"
							class="nav-link">
								<p>리뷰</p>
						</a></li>

						<li class="nav-item"><a href="SSickMediaList.do"
							class="nav-link">
								<p>의료 기록물</p>
						</a></li>
						<li class="nav-item"><a href="Logout.do"
							class="nav-link">
								<p>로그아웃</p>
						</a></li>
						
<!-- 						<li class="nav-item"><a href="Logout.do" -->
<!-- 							class="nav-link d-block text-center" style="padding: 20px;"> -->
<!-- 								<p> -->
<!-- 									<small><strong></strong></small> -->
<!-- 								</p> -->
<!-- 						</a></li> -->
					</ul>


				</nav>
				<!-- /.sidebar-menu -->

			</div>
			<!-- /.sidebar -->
		</aside>




		<!-- Content Wrapper. Contains page content -->
		<!--  <div class="content-wrapper">-->


		<!-- 개별 컨텐츠 위치 -->