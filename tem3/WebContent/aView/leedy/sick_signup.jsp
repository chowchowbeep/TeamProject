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
</head>
<body class="hold-transition register-page">
<div class="register-box">
  <div class="register-logo">
    <a href="#"><b>회원가입</b></a>
  </div>

  <div class="card">
    <div class="card-body register-card-body">
     

      <form name="frm" action="../../aView/taeyoung/all_login.jsp" method="post">
        <div class="input-group mb-3">
          <input type="text" class="form-control" id="f1" placeholder="아이디">
          <div class="input-group-append">
            <div class="input-group-text">
            </div>
          </div>
        </div>
          <div class="input-group mb-3">
          <input type="password" class="form-control" id="f2" placeholder="비밀번호">
          <div class="input-group-append">
            <div class="input-group-text">
            </div>
          </div>
        </div>
         <div class="input-group mb-3">
          <input type="password" class="form-control" id="f3" placeholder="비밀번호 확인">
          <div class="input-group-append">
            <div class="input-group-text">
            </div>
          </div>
        </div>
          <div class="input-group mb-3">
          <input type="text" class="form-control"  id="f4" placeholder="이름">
          <div class="input-group-append">
            <div class="input-group-text">
            </div>
          </div>
        </div>
          <div class="input-group mb-3">
          <input type="text" class="form-control" id="f5"  placeholder="생년월일">
          <div class="input-group-append">
            <div class="input-group-text">
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input type="text" class="form-control" id="f6" placeholder="연락처">
          <div class="input-group-append">
            <div class="input-group-text">
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input type="text" class="form-control" id="f7" placeholder="전화번호">
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
<hr>
      <div class="social-auth-links text-center">
        <p>SNS계정으로 간편하게 회원가입</p>
            <a href="#" class="btn btn-block btn-warning">
         
         카카오톡
        </a>
        <a href="#" class="btn btn-block btn-primary">
         
         페이스북
        </a>
    
      </div>
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
