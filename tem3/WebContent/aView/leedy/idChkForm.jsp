<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<title>아이디 중복 체크</title>
    
    <style type="text/css">
        #wrap {
            width: 490px;
            text-align :center;
            margin: 0 auto 0 auto;
        }
        
        #chk{
            text-align :center;
        }
        
        #cancelBtn{
            visibility:visible;
        }
        
        #useBtn{
             visibility:hidden;
        }
 
   </style>
   
<!-- jQuery -->
<script src="../../plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="../../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="../../dist/js/adminlte.min.js"></script>

    
    <script>
   function openFormClose(n) {
      if (n == 1) {
    	  opener.inputIdChk();
         opener.document.hosFrm.hos_id.value = "${hos_id}"; //받은 아이디를 다시 넘겨줘야 함
         opener.hosFrm.hos_pw.focus();
      } else {
    	  opener.inputIdUnChk();
         opener.hosFrm.hos_id.focus();
      }
      window.close();
   }
</script>
</head>

<body>

  <div align="center">
      <c:choose>
         <c:when test="${idChk == true }">
         <script>
         alert('${hos_id}는 사용할 수 있는 아이디입니다.');
         openFormClose(1);
         
         </script>
         </c:when>
         <c:otherwise>
         <script>
         alert('${hos_id}는 이미 사용중인 아이디입니다.');
        openFormClose(0);
         
         </script>
         </c:otherwise>
      </c:choose>
   </div>





</body>
</html>

