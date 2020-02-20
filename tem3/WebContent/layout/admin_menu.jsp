<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
					href="javascript:history.back();"><ion-icon
							name="arrow-back-outline"></ion-icon> </a></li>
			</ul>


			<form class="form-inline ml-5">
				<div class="input-group input-group-sm" style="font-size: 30px;">
					SALLYEOJYO</div>
			</form>



			<!-- Right navbar links -->
			<ul class="navbar-nav ml-auto">
			
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
			<a href="#" class="brand-link"> <img
				src="/tem3/dist/img/AdminLTELogo.png" alt="AdminLTE Logo"
				class="brand-image img-circle elevation-3" style="opacity: .8">
				<span class="brand-text font-weight-light">SALLYEOJYO</span>
			</a>

			<!-- Sidebar -->
			<div class="sidebar">
				<!-- Sidebar user panel (optional) -->
				<div class="user-panel mt-3 pb-3 mb-3 d-flex">
					<div class="image">
						<img src="/tem3/dist/img/user2-160x160.jpg"
							class="img-circle elevation-2" alt="User Image">
					</div>
					<div class="info">
						<a href="#" class="d-block">관리자</a>
					</div>
				</div>

				<!-- Sidebar Menu -->
				<nav class="mt-2">
					<ul class="nav nav-pills nav-sidebar flex-column"
						data-widget="treeview" role="menu" data-accordion="false">
						<!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->


						<li class="nav-header"><small><strong>ADMIN
									MENU</strong></small></li>

						<li class="nav-item"><a href="mMain.do" class="nav-link">
								<p>메인</p>
						</a></li>
						<li class="nav-item"><a href="mSearchNormal.do" class="nav-link">
								<p>병원회원검색</p>
						</a></li>
						<li class="nav-item"><a href="mSearchHos.do" class="nav-link">
								<p>일반회원검색</p>
						</a></li>
						<li class="nav-item"><a href="MChart.do" class="nav-link">
								<p>통계관리</p>
						</a></li>
						<li class="nav-item"><a href="MPolice.do"
							class="nav-link">
								<p>신고리스트</p>
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