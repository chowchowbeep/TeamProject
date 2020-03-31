<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
					<a href="HHospitalMain.do" id="toMain">HELLO DOCTOR</a>
				</div>
				<!-- 병원 메인화면으로 이동 -->
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


						<li class="nav-header"><h5><strong>병원회원
									메뉴</strong></h5></li>
						<li class="nav-item"><a href="HHospitalMymenu.do"
							class="nav-link">
								<p>마이메뉴</p>
						</a></li>
						<li class="nav-item"><a href="HHospitalMain.do"
							class="nav-link">
								<p>메인</p>
						</a></li>
						<li class="nav-item"><a href="HMediAll.do" class="nav-link">
								<p>진료신청현황</p>
						</a></li>
<!-- 						<li class="nav-item"><a href="#" -->
<!-- 							class="nav-link"> -->
<!-- 								<p>회원정보 검색</p> -->
<!-- 						</a></li> -->
						<li class="nav-item"><a href="HDoctorlist.do"
							class="nav-link">
								<p>의사목록 관리</p>
						</a></li>
						<li class="nav-item"><a href="Logout.do"
							class="nav-link">
								<p>로그아웃</p>
						</a></li>
					</ul>


				</nav>
				<!-- /.sidebar-menu -->
			</div>
			<!-- /.sidebar -->
		</aside>




		<!-- Content Wrapper. Contains page content -->
		<!--  <div class="content-wrapper">-->


		<!-- 개별 컨텐츠 위치 -->