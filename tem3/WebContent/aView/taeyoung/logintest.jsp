<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width" />
<title>Login Demo - Kakao JavaScript SDK</title>
<!-- Font Awesome -->
<link rel="stylesheet"
	href="../../plugins/fontawesome-free/css/all.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
<!-- icheck bootstrap -->
<link rel="stylesheet"
	href="../../plugins/icheck-bootstrap/icheck-bootstrap.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="../../dist/css/adminlte.min.css">
<!-- Google Font: Source Sans Pro -->
<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700"
	rel="stylesheet">

<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<script>
	function checkall() {
		var ty1 = document.getElementById("form1");
		var ty2 = document.getElementById("form2");
		if (ty1.value == "") {
			alert("아이디를 입력해주세요.");
			ty1.focus();
			return false;
		}
		if (ty2.value == "") {
			alert("비밀번호를 입력해주세요.");
			ty2.focus();
			return false;
		}
	}
</script>
</head>
<body>
<body class="hold-transition login-page">
	<div class="login-box">
		<div class="login-logo">
			<a href="#"><b>로그인</b></a>
		</div>
		<!-- /.login-logo -->
		<div class="card">
			<div class="card-body login-card-body">
				<p class="login-box-msg">로그인 페이지 입니다.</p>
				<form name="form" method="post"
					action="LoginTest.do"
					onsubmit="return checkall();">
					<div class="input-group mb-3">
						<input type="text" class="form-control" name="id" id="form1"
							placeholder="id" value="sic1">
						<div class="input-group-append">
							<div class="input-group-text">
								<span class="fas fa-envelope"></span>
							</div>
						</div>
					</div>
					<div class="input-group mb-3">
						<input type="password" class="form-control" id="form2"
							placeholder="Password">
						<div class="input-group-append">
							<div class="input-group-text">
								<span class="fas fa-lock"></span>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-8">
							<div class="icheck-primary">
								<input type="checkbox" id="remember"> <label
									for="remember"> check </label>
							</div>
						</div>
						<!-- /.col -->
						<div class="col-4">
							<button type="submit" class="btn btn-primary btn-block">로그인</button>
						</div>
						<!-- /.col -->
					</div>
				</form>
				<p>- OR -</p>

				<a id="kakao-login-btn"></a> <a
					href="http://developers.kakao.com/logout"></a>
				<script type='text/javascript'>
					//<![CDATA[
					// 사용할 앱의 JavaScript 키를 설정해 주세요.
					Kakao.init('627622ec7e9a328983e39a49bc98fc91');
					// 카카오 로그인 버튼을 생성합니다.
					Kakao.Auth.createLoginButton({
						container : '#kakao-login-btn',
						 success: function(authObj) {
						     Kakao.API.request({
						       url: '/v1/user/me',
						       success: function(res) {
						             alert(JSON.stringify(res)); //<---- kakao.api.request 에서 불러온 결과값 json형태로 출력
						             alert(JSON.stringify(authObj)); //<----Kakao.Auth.createLoginButton에서 불러온 결과값 json형태로 출력
						             console.log(res.id);//<---- 콘솔 로그에 id 정보 출력(id는 res안에 있기 때문에  res.id 로 불러온다)
						             console.log(res.kaccount_email);//<---- 콘솔 로그에 email 정보 출력 (어딨는지 알겠죠?)
						             console.log(res.properties['nickname']);//<---- 콘솔 로그에 닉네임 출력(properties에 있는 nickname 접근 
						         // res.properties.nickname으로도 접근 가능 )
						             console.log(authObj.access_token);//<---- 콘솔 로그에 토큰값 출력
						           }
						         })
						       },
						       fail: function(error) {
						         alert(JSON.stringify(error));
						       }
						     });
						//]]>
				</script>
				<p class="mb-1">
					<a href="forgot-password.html">비밀번호 찾기</a>
				</p>
				<div>
					<p class="mb-0">
						<a href="<%=request.getContextPath() %>/SSickSignupAction.do" class="text-center">일반회원가입</a>&nbsp;&nbsp;
						<a href="<%=request.getContextPath() %>/HHospitalSignupAction.do" class="text-center">병원회원가입</a>
					</p>
				</div>
			</div>
			<!-- /.login-card-body -->
		</div>
	</div>
	<!-- /.login-box -->

	<!-- jQuery -->
	<script src="../../plugins/jquery/jquery.min.js"></script>
	<!-- Bootstrap 4 -->
	<script src="../../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- AdminLTE App -->
	<script src="../../dist/js/adminlte.min.js"></script>

</body>
</html>
