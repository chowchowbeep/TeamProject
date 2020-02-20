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
    
    <script >
    function openFormClose(n) {
        if (n == 1) {
      	  opener.inputIdChk();
           opener.document.sickFrm.sic_id.value = "${sic_id}"; //받은 아이디를 다시 넘겨줘야 함
           opener.sickFrm.sic_pw.focus();
        } else {
      	  opener.inputIdUnChk();
           opener.sickFrm.sic_id.focus();
        }
        window.close();
     }
    
    /*
        var httpRequest = null;
        //jQurery 사용시 한 줄로 가능
        $.ajax();
        // httpRequest 객체 생성
        function getXMLHttpRequest(){
            var httpRequest = null;
                httpRequest = new window.XMLHttpRequest();
            return httpRequest;    
        }
        
        
        // 회원가입창의 아이디 입력란의 값을 가져온다. 부모창에 접근하려면 opener 사용
        function pIdValue(){
            document.getElementById("userId").value =
            	opener.document.hosFrm.hos_id.value;
        }
        */
        // 아이디 중복체크
        /*function idCheck(){
 
            var id = document.getElementById("userId").value;
 
            if (!id) {
                alert("아이디를 입력하지 않았습니다.");
                return false;
            } 
            else if((id < "0" || id > "9") && (id < "A" || id > "Z") && (id < "a" || id > "z")){ 
                alert("한글 및 특수문자는 아이디로 사용하실 수 없습니다.");
                return false;
            }
            else
            {
                var param="id="+id
                //ajax 호출하는 객체 생성
                httpRequest = getXMLHttpRequest();
                //callback 함수 요청
                httpRequest.onreadystatechange = callback;
                //server url 적ㄱㅣ(요청해야 할)
                httpRequest.open("POST", "HHospitalMemberIdCheckActionCMD.do", true);    
                httpRequest.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded'); 
                httpRequest.send(param);
            }
        }
        
        function callback(){
            if(httpRequest.readyState == 4){
                // 결과값을 가져온다.
                var resultText = httpRequest.responseText;
                if(resultText == 0){
                    alert("사용할 수 없는 아이디입니다.");
                    document.getElementById("cancelBtn").style.visibility='visible';
                    document.getElementById("useBtn").style.visibility='hidden';
                    document.getElementById("msg").innerHTML ="";
                } 
                else if(resultText == 1){ 
                    document.getElementById("cancelBtn").style.visibility='hidden';
                    document.getElementById("useBtn").style.visibility='visible';
                    document.getElementById("msg").innerHTML = "사용 가능한 아이디입니다.";
                }
            }
        }
        
        // 사용하기 클릭 시 부모창으로 값 전달 
        // 현재는 필요없음
        function sendCheckValue(){
            // 중복체크 결과인 idCheck 값을 전달한다.
            opener.document.hosFrm.idDuplication.value ="idCheck";
            // 회원가입 화면의 ID입력란에 값을 전달
            opener.document.hosFrm.f1.value = document.getElementById("userId").value;
            
            if (opener != null) {
                opener.chkForm = null;
                self.close();
            }    
        }   */
        
        
   </script>
    
</head>
<body >
<div  id="wrap" align="center">

<c:choose>
         <c:when test="${idChk == true }">
         <script>
         alert('${sic_id}는 사용할 수 있는 아이디입니다.');
         openFormClose(1);
         
         </script>
         </c:when>
         <c:otherwise>
         <script>
         alert('${sic_id}는 이미 사용중인 아이디입니다.');
        openFormClose(0);
         
         </script>
         </c:otherwise>
      </c:choose>


   <!-- <b><font size="4" color="gray">아이디 중복체크</font></b>
    <hr size="1" width="460">
    <br>
    <div id="chk">
        <form id="checkForm">
            <input type="text" name="idinput" id="userId">
            <input type="button" value="중복확인" onclick="idCheck()">
        </form>
        <div id="msg"></div>
        <br>
        <input id="cancelBtn" type="button" value="취소" onclick="window.close()"><br>
        <input id="useBtn" type="button" value="사용하기" onclick="sendCheckValue()">
    </div> -->
    
</div>    



</body>
</html>

