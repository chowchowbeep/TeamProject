<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<html>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>AdminLTE 3 | Buttons</title>
<script src="https://unpkg.com/ionicons@5.0.0/dist/ionicons.js">
<ion-icon name="arrow-back-outline"></ion-icon>
<ion-icon src="/path/to/external/file.svg"></ion-icon>
</script>


<!-- Tell the browser to be responsive to screen width -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="../../plugins/fontawesome-free/css/all.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="../../dist/css/adminlte.min.css">
<!-- Google Font: Source Sans Pro -->
<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700"
	rel="stylesheet">
<meta charset="EUC-KR">
<title>master_main</title>
<style>
.btn-lg {
	background-color: #ffc107;
	width: 230px;
	height: 100px;
	align: center;
	margin: 40px 70px 10px 70px;
	font-size: 25px;
}

.ionicon {
	fill: currentColor;
	stroke: currentColor;
}
</style>
</head>
<body>

	<nav class="main-header navbar navbar-expand navbar-white navbar-light">

		<ul class="navbar-nav ml-auto">
			<li class="nav-item"><a class="nav-link"
				data-widget="control-sidebar" href="#arrow-back-outline"> <i
					class="mouseOver icon-results__cell active"></i>
			</a></li>
		</ul>

		<ul class="navbar-nav ml-auto">

			<li class="nav-item dropdown"><a class="nav-link"
				data-toggle="dropdown" href="#"> <i class="far fa-bell"></i> <span
					class="badge badge-warning navbar-badge">15</span>
			</a>
				<div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
					<span class="dropdown-item dropdown-header">15 Notifications</span>
					<div class="dropdown-divider"></div>
					<a href="#" class="dropdown-item"> <i
						class="fas fa-envelope mr-2"></i> 4 new messages <span
						class="float-right text-muted text-sm">3 mins</span>
					</a>
					<div class="dropdown-divider"></div>
					<a href="#" class="dropdown-item"> <i class="fas fa-users mr-2"></i>
						8 friend requests <span class="float-right text-muted text-sm">12
							hours</span>
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
			<li class="nav-item"><a class="nav-link"
				data-widget="control-sidebar" data-slide="true" href="#"> <i
					class="fas fa-th-large"></i>
			</a></li>
		</ul>
	</nav>


	<!-- Right navbar links -->
	<ul class="navbar-nav ml-auto">
		<!-- Notifications Dropdown Menu -->
		<li class="nav-item dropdown">
			<div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
				<span class="dropdown-item dropdown-header">15 Notifications</span>
				<div class="dropdown-divider"></div>
				<a href="#" class="dropdown-item"> <i
					class="fas fa-envelope mr-2"></i> 4 new messages <span
					class="float-right text-muted text-sm">3 mins</span>
				</a>
				<div class="dropdown-divider"></div>
				<a href="#" class="dropdown-item"> <i class="fas fa-users mr-2"></i>
					8 friend requests <span class="float-right text-muted text-sm">12
						hours</span>
				</a>
				<div class="dropdown-divider"></div>
				<a href="#" class="dropdown-item"> <i class="fas fa-file mr-2"></i>
					3 new reports <span class="float-right text-muted text-sm">2
						days</span>
				</a>
				<div class="dropdown-divider"></div>
				<a href="#" class="dropdown-item dropdown-footer">See All
					Notifications</a>
			</div>
		</li>
		<li class="nav-item"><a class="nav-link"
			data-widget="control-sidebar" data-slide="true" href="#"> </a></li>
	</ul>


	<button type="button" class="btn-lg">雀盔 包府</button>
	<br>
	<br>
	<button type="button" class="btn-lg">烹拌 包府</button>
	<br>
	<br>
	<button type="button" class="btn-lg">脚绊 包府</button>


</body>
</html>