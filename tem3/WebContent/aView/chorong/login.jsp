<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/layout/admin_head.jsp"%>
</head>
<body>
<body class="hold-transition login-page">
	<div class="login-box">
		<div class="login-logo">
			<p>살려죠</p>
		</div>
		<!-- /.login-logo -->
		<div class="card">
			<div class="card-body login-card-body">
				<p class="login-box-msg">로그인 페이지 입니다.</p>
				<form name="form" method="post" action="LoginOk.do" onsubmit="return loginValidation();">
					<div class="input-group mb-3">
						<input type="text" class="form-control" name="id" id="id"
							placeholder="아이디를 입력해주세요" value="">
						<div class="input-group-append">
							<div class="input-group-text">
								<span class="fas fa-envelope"></span>
							</div>
						</div>
					</div>
					<div class="input-group mb-3">
						<input type="password" class="form-control" name="pw" id="pw"
							placeholder="패스워드를 입력해주세요">
						<div class="input-group-append">
							<div class="input-group-text">
								<span class="fas fa-lock"></span>
							</div>
						</div>
					</div>
					<div class="col-12">
						<div class="form-group">
							<input type="radio" id="sicLogin" name="memberType" value="sickMember"><label
								for="sicLogin">&nbsp;일반회원</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="radio" id="hosLogin" name="memberType" value="hosMember"><label
								for="hosLogin">&nbsp;병원회원</label>
						</div>
					</div>
					<div class="col-12">
						<button type="submit" class="btn btn-default btn-block">로그인</button>
					</div>
				</form>
				<br>

				<div class="row">
					<div class="col-12">
						<p class="mb-1">
							<a href="forgot-password.html">아이디/비밀번호 찾기</a>
						</p>
						<p class="mb-0">
						<a href="SSickSignupAction.do"
							class="text-center">일반회원가입</a>&nbsp;&nbsp; <a
							href="HHospitalSignupAction.do"
							class="text-center">병원회원가입</a>
					</p>
					</div>
				</div>
				<div>
					
				</div>
			</div>
			<!-- /.login-card-body -->
		</div>
	</div>
	<!-- /.login-box -->

<script>
	function loginValidation(event) {
		var id = document.getElementById("id");
		var pw = document.getElementById("pw");
		var memberType = document.getElementById("memberType");
		if (id.value == "") {
			alert("아이디를 입력해주세요.");
			id.focus();
			return false;
		}
		if (pw.value == "") {
			alert("비밀번호를 입력해주세요.");
			pw.focus();
			return false;
		}
		//수정필요
		if($("input[name='memberType']:checked").length == 0){
			alert("회원유형을 선택해주세요.");                    
			memberType.focus();
			event.preventDefault(); 
			return false;
		}
		// 아이디, 비번 체크위한 ajax요청 값 필요. (존재하는 id인지, id 비번 매치 되는지)
	}
	
</script>

</body>
</html>
