<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>AdminLTE 3 | Registration Page</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Font Awesome -->
  <link rel="stylesheet" href="../../plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- icheck bootstrap -->
  <link rel="stylesheet" href="../../plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="../../dist/css/adminlte.min.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
  <script>
  
  function checkValue(){
	  
	  //회원가입 화면의 입력값들을 검사
	  var form = document.hosFrm;
	  
	  if(!form.f1.value){
		  alert("아이디를 입력하세요.");
		  return false;
	  }
	  
	  if(form.idDuplication.value != "idCheck"){
		  alert("아이디 중복체크 해주세요.");
		  return false;
	  }
	  
	  if(!form.f2.value){
		  alert("비밀번호를 입력하세요.");
		  return false;
	  }
	  
	  if(form.f2.value != form.f3.value){
		  alert("비밀번호를 동일하게 입력하세요.");
		  return false;
	  }
	  
	  if(!form.f4.value ){
		  alert("병원명을 입력하세요.");
		  return false;
	  }
	  
	  if(!form.f5.value ){
		  alert("주소를 입력하세요.");
		  return false;
	  }
	  
	  if(!form.f6.value ){
		  alert("사업자번호를 입력하세요.");
		  return false;
	  }
	  
	  
	  if(form.bizNoDuplication.value != "bizNoCheck" ){
		  alert("사업자번호 중복체크 해주세요.");
		  return false;
	  }
	  
	  
	  if(!form.f7.value ){
		  alert("전화번호를 입력하세요.");
		  return false;
	  }

  }
  
  function idChk(){
	  
	  window.name="parentForm";
	  window.open("idChkForm.jsp","chkForm","width=500, height=300 resizable=no, scrollbars=no");
  }
  
  
  function inputIdChk(){
	  document.hosFrm.idDuplication.value="idUnchk";
  }
  
  
 function bizNoChk(){
	 window.name="parentForm";
	  window.open("bizNoChkForm.jsp","chkForm","width=500, height=300 resizable=no, scrollbars=no");
	  
  }
  
 function inputBizNoChk(){
	 document.hosFrm.bizNoDuplication.value="bizNoUnchk";
 }
  
  
  </script>
  
  
</head>
<body class="hold-transition register-page">
<br>
<div class="register-box">
  <div class="register-logo">
    <a href="#"><b>회원가입</b></a>
  </div>

  <div class="card">
    <div class="card-body register-card-body">
     

      <form name="hosFrm" action="../../aView/taeyoung/all_login.jsp" method="post">
        <div class="input-group mb-3">
          <input type="text" class="form-control" name="f1" id="f1" onkeydown="inputIdChk()" placeholder="아이디">
          <input type="button" value="중복확인" onclick="idChk()" >
          <input type="hidden" name="idDuplication" id="idDuplication" value="idUnchk">
          <div class="input-group-append">
            <div class="input-group-text">
            </div>
          </div>
        </div>
          <div class="input-group mb-3">
          <input type="password" class="form-control" name="f2" id="f2" placeholder="비밀번호">
          <div class="input-group-append">
            <div class="input-group-text">
            </div>
          </div>
        </div>
         <div class="input-group mb-3">
          <input type="password" class="form-control" name="f3" id="f3" placeholder="비밀번호 확인">
          <div class="input-group-append">
            <div class="input-group-text">
            </div>
          </div>
        </div>
          <div class="input-group mb-3">
          <input type="text" class="form-control" name="f4" id="f4" placeholder="병원명">
          <div class="input-group-append">
            <div class="input-group-text">
            </div>
          </div>
        </div>
          <div class="input-group mb-3">
          <input type="text" class="form-control" name="f5" id="f5"  placeholder="주소">
          <div class="input-group-append">
            <div class="input-group-text">
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input type="text" class="form-control" name="f6" id="f6" onkeydown="inputBizNoChk()" placeholder="사업자번호">
          <input type="button" value="중복확인" onclick="bizNoChk()" >
          <input type="hidden" name="bizNoDuplication" id="bizNoDuplication" value="bizNoUnchk">
          <div class="input-group-append">
            <div class="input-group-text">
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input type="text" class="form-control" name="f7" id="f7" placeholder="전화번호">
          <div class="input-group-append">
            <div class="input-group-text">
            </div>
          </div>
        </div>
       
        <div class="row">
          <div class="">
            <div class="icheck-primary">
              <input type="checkbox" id="agreeTerms" name="terms" value="agree">
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
            <button type="submit" class="btn btn-primary btn-block">회원가입 확인</button>
           
          </div>
      </form>
<br>
<hr>
      <a href="../../aView/taeyoung/all_login.jsp" class="text-center">이미 아이디가 있으신가요?</a>
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
