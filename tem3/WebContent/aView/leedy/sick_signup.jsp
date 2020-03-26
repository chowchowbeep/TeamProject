<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/layout/sick_head.jsp" %>

<script>
function checkValue() {
	var frm = document.sickFrm;
	var idvalue=document.getElementById("sic_id");
	var pwvalue=document.getElementById("sic_pw");
	var id=idvalue.value;
	var pw=pwvalue.value;
	
	//회원가입 화면의 입력값들을 검사
	if (frm.idDuplication.value != "idChk") {
		alert("아이디 중복체크 해주세요.");
		return false;
	}

	if (!frm.sic_pw.value) {
		alert("비밀번호를 입력하세요.");
		return false;
	}
	
	if (!frm.sic_pw_re.value) {
		alert("확인할 비밀번호를 입력하세요.");
		return false;
	}

	if (frm.sic_pw.value != frm.sic_pw_re.value) {
		alert("비밀번호를 동일하게 입력하세요.");
		return false;
	}

	if (!frm.sic_name.value) {
		alert("이름을 입력하세요.");
		return false;
	}

	if (!frm.sic_phone.value) {
		alert("전화번호를 입력하세요.");
		return false;
	}
	return true;
}

function idCheck(){
	
	 var re = /^[a-zA-Z0-9]{4,12}$/ //아이디가 적합한지에 대한 정규식 영문 대/소문자, 숫자 사용 가능 길이는 최소 4 최대 12
	var id = sickFrm.sic_id.value;
	if(id == ""){
		alert("아이디값을 입력 후 확인하세요.");
		sickFrm.sic_id.focus();
	} else {
		 if(!re.test(id)){
				alert("아이디는 영문 대/소문자, 최소 4자리 최대 12자리로 입력해주세요.");
				idvalue="";
				idvalue.focus();
				return false;
			}
		window.open("SSickMemberIdCheckAction.do?sic_id="+id, "sickChkForm",
		"width=500, height=300 resizable=no, scrollbars=no");
	}
	return true;
}

function inputIdChk() {
	document.sickFrm.idDuplication.value = "idChk";
}

function inputIdUnChk() {
	document.sickFrm.idDuplication.value = "idUnchk";
}
</script>
</head>
<body class="hold-transition register-page">
<iframe width=0 height=0 name="sickChkForm" style="display: none;"></iframe>
<br><br><br>
<div class="register-box">

  <div class="register-logo">
    <a href="#"><b>회원가입</b></a>
  </div>

  <div class="card">
    <div class="card-body register-card-body">
     

      <form name="sickFrm" action="SSickSignup.do" method="post"
      onsubmit="return checkValue()">
        <div class="input-group mb-3">
          <input type="text" class="form-control" name="sic_id" id="sic_id" 
          onkeydown="inputIdUnChk()" placeholder="아이디">
          <input type="button" id="idChk" name="idChk" value="중복확인" 
          onclick="idCheck()">
          <input type="hidden"name="idDuplication" id="idDuplication" value="idUnchk"> 
          <div class="input-group-append">
            <div class="input-group-text">
            </div>
          </div>
        </div>
          <div class="input-group mb-3">
          <input type="password" class="form-control" 
          id="sic_pw" name="sic_pw" placeholder="비밀번호">
          <div class="input-group-append">
            <div class="input-group-text">
            </div>
          </div>
        </div>
         <div class="input-group mb-3">
          <input type="password" class="form-control" 
          id="sic_pw_re" name="sic_pw_re" placeholder="비밀번호 확인">
          <div class="input-group-append">
            <div class="input-group-text">
            </div>
          </div>
        </div>
          <div class="input-group mb-3">
          <input type="text" class="form-control" 
           id="sic_name" name="sic_name" placeholder="이름">
          <div class="input-group-append">
            <div class="input-group-text">
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input type="text" class="form-control" 
          id="sic_phone_1" name="sic_phone_1" placeholder="전화번호">-
          <input type="text" class="form-control" 
          id="sic_phone_2" name="sic_phone_2" placeholder="전화번호">-
          <input type="text" class="form-control" 
          id="sic_phone_3" name="sic_phone_3" placeholder="전화번호">
          <div class="input-group-append">
            <div class="input-group-text">
            </div>
          </div>
        </div>
        <div class="row">
          <div class="">
            <div class="icheck-primary">
              <input type="checkbox" id="agreeTerms" name="agreeTerms" value="agree">
              <label for="agreeTerms">
                <a href="#">이용약관</a> 및  <a href="#">개인정보취급방침</a>에 동의합니다.
              </label>
            </div>
          </div>
         
          <!-- /.col -->
        </div>
         <!-- /.col -->
         <br>
          <div class="">
            <button type="submit" class="btn btn-primary btn-block"
           >회원가입 확인</button>
          </div>
      </form>
<hr>
      <div class="social-auth-links text-center">
        <p>SNS계정으로 간편하게 회원가입</p>
        <a href="#" class="btn btn-block btn-warning"> 카카오톡 </a>
        <a href="#" class="btn btn-block btn-primary"> 페이스북 </a>
      </div>
<hr>
      <a href="ToLoginPage.do" class="text-center">이미 아이디가 있으신가요?</a>
    </div>
    <!-- /.form-box -->
  </div><!-- /.card -->
</div>

<!-- /.register-box -->

<!-- jQuery -->
<script src="../../plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="../../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="../../dist/js/adminlte.min.js"></script>
</body>
</html>
