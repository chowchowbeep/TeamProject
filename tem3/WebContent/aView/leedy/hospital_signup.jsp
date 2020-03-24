<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/layout/hos_head.jsp"%>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
//주소검색
$(function(){
	$("#addrBtn").on("click",function(){
		new daum.Postcode({
	        oncomplete: function(data) {
	        	var addr = data.address;
	        	document.getElementById("hos_addr").value = addr;
	            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.
	            // 예제를 참고하여 다양한 활용법을 확인해 보세요.
	        }
	    }).open();
		
	})
})

	function checkValue() {
		var form = document.hosFrm;
		
		//회원가입 화면의 입력값들을 검사
		if (!form.hos_id.value) {
			alert("아이디를 입력하세요.");
			return false;
		}

		if (form.idDuplication.value != "idChk") {
			alert("아이디 중복체크 해주세요.");
			return false;
		}

		if (!form.hos_pw.value) {
			alert("비밀번호를 입력하세요.");
			return false;
		}

		if (form.hos_pw.value != form.hos_pw_re.value) {
			alert("비밀번호를 동일하게 입력하세요.");
			return false;
		}

		if (!form.hos_name.value) {
			alert("병원명을 입력하세요.");
			return false;
		}

		if (!form.hos_addr.value) {
			alert("주소를 입력하세요.");
			return false;
		}

		if (!form.hos_bizno.value) {
			alert("사업자번호를 입력하세요.");
			return false;
		}

		if (form.bizNoDuplication.value != "bizChk") {
			alert("사업자번호 중복체크 해주세요.");
			return false;
		}

		if (!form.hos_phone.value) {
			alert("전화번호를 입력하세요.");
			return false;
		}
		// check박스는 여러 개 선택가능하기 때문에 선택된 갯수로 체크해야 한다(입력여부 확인)
		// alert(selectedCheck + '\n개수 : '+selectedCheck.length);
		if ($('[name="code"]:checked').length < 1) {
			alert('최소한 1개 이상 항목을 선택하셔야 합니다');
			return false;
		}
	
		//select 유효성체크
		if ($("#biz_time_1").val == '') {
			alert("오픈 시간을 선택하세요");
			return false;
		}

		if ($("#biz_time_2").val == '') {
			alert("마감 시간을 선택하세요");
			return false;
		} 
		return true;
	}

	function idCheck() {
		var id = hosFrm.hos_id.value;
		if(id ==""){
			alert("아이디값을 입력 후 확인하세요.");
			hosFrm.hos_id.focus();
		}
		else {
			//커맨드 만들기+컨트롤러 만들기 ../컨트롤러.do?hos_id="+id
			window.open("HHospitalMemberIdCheckAction.do?hos_id="+id, "chkForm",
					"width=500, height=300 resizable=no, scrollbars=no");
		}
		return true;
	}
		

	function inputIdChk() {
		document.hosFrm.idDuplication.value = "idChk";
	}
	
	function inputIdUnChk() {
		document.hosFrm.idDuplication.value = "idUnchk";
	}

	function bizNoChk() {
		
		var biz = hosFrm.hos_bizno_1.value+
		hosFrm.hos_bizno_2.value+
		hosFrm.hos_bizno_3.value;
		if(biz == ""){
			alert("사업자 번호를 입력 후 확인하세요.");
			hosFrm.hos_bizno_1.focus();
		} else {
			window.open("HHospitalMemberBizNoCheckAction.do?hos_bizno="+biz, "chkBizForm",
			"width=500, height=300 resizable=no, scrollbars=no");
		}
		return true;
	}

	function inputBizNoChk() {
		document.hosFrm.bizNoDuplication.value = "bizChk";
	}
	
	function inputBizNoUnChk() {
		document.hosFrm.bizNoDuplication.value = "bizNoUnchk";
	}
</script>
<style>
.btn {
	margin: 2%;
}
</style>


</head>
<!-- 새창 안 띄우고 alert로 중복확인 메세지 띄우도록 -->


<body class="hold-transition register-page">
<iframe width=0 height=0 name="chkForm" style="display: none;"></iframe>
<iframe width=0 height=0 name="chkBizForm" style="display: none;"></iframe>
	<br>
	<div class="register-box">
		<div class="register-logo">
			<a href="#"><b>회원가입</b></a>
		</div>

		<div class="card">
			<div class="card-body register-card-body">


				<form name="hosFrm" action="HHospitalSignup.do" method="post"
					onsubmit="return checkValue()">
					<div class="input-group mb-3">
						<input type="text" class="form-control" name="hos_id" id="hos_id"onkeydown="inputIdUnChk()" placeholder="아이디"> 
						<input type="button" id="idChk" name="idChk" value="중복확인" onclick="idCheck()"> 
						<input type="hidden"name="idDuplication" id="idDuplication" value="idUnchk"> 
						<div class="input-group-append">
							<div class="input-group-text"></div>
						</div>
					</div>
					<div class="input-group mb-3">
						<input type="password" class="form-control" name="hos_pw"
							id="hos_pw" placeholder="비밀번호">
						<div class="input-group-append">
							<div class="input-group-text"></div>
						</div>
					</div>
					<div class="input-group mb-3">
						<input type="password" class="form-control" name="hos_pw_re"
							id="hos_pw_re" placeholder="비밀번호 확인">
						<div class="input-group-append">
							<div class="input-group-text"></div>
						</div>
					</div>
					<div class="input-group mb-3">
						<input type="text" class="form-control" name="hos_name"
							id="hos_name" placeholder="병원명">
						<div class="input-group-append">
							<div class="input-group-text"></div>
						</div>
					</div>
					
					<div class="input-group mb-3">
						<input type="text" class="form-control" name="hos_addr"	id="hos_addr" placeholder="주소">
						<input type="button" id="addrBtn" name="addrBtn" value="주소입력"> 
						<div class="input-group-append">
							<div class="input-group-text"></div>
						</div>
					</div>
					
					
					<div class="input-group mb-3">
						<input type="text" class="form-control" name="hos_bizno_1"
							id="hos_bizno_1" onkeydown="inputBizNoUnChk()" placeholder="사업자번호">-
								<input type="text" class="form-control" name="hos_bizno_2"
							id="hos_bizno_2" onkeydown="inputBizNoUnChk()" placeholder="사업자번호">-
								<input type="text" class="form-control" name="hos_bizno_3"
							id="hos_bizno_3" onkeydown="inputBizNoUnChk()" placeholder="사업자번호">
						<input type="button" id="bizChk" name="bizChk" value="중복확인"  
						onclick="bizNoChk()"> 
						<input type="hidden" name="bizNoDuplication" id="bizNoDuplication"
							value="bizNoUnchk">
						<div class="input-group-append">
							<div class="input-group-text"></div>
						</div>
					</div>
					<div class="input-group mb-3">
						<input type="text" class="form-control" name="hos_phone_1"
							id="hos_phone_1" placeholder="전화번호">-
							<input type="text" class="form-control" name="hos_phone_2"
							id="hos_phone_2" placeholder="전화번호">-
							<input type="text" class="form-control" name="hos_phone_3"
							id="hos_phone_3" placeholder="전화번호">
						<div class="input-group-append">
							<div class="input-group-text"></div>
						</div>
					</div>
					<div class="container">
						<div class="col sm-3">

							<div class="btn-group-toggle mb-3" data-toggle="buttons">
								<label class="btn btn-primary"> <input type="checkbox"
									class="form-control select2" style="width: 100%;" value="CS10"
									name="code">내과
								</label> <label class="btn btn-primary"> <input type="checkbox"
									class="form-control select2" style="width: 100%;" name="code"
									value="CS20">소아과
								</label> <label class="btn btn-primary"> <input type="checkbox"
									class="form-control select2" style="width: 100%;" name="code"
									value="CS30">외과
								</label> <label class="btn btn-primary"> <input type="checkbox"
									class="form-control select2" style="width: 100%;" name="code"
									value="CS40">정형외과
								</label> <label class="btn btn-primary"> <input type="checkbox"
									class="form-control select2" style="width: 100%;" name="code"
									value="CS50">치과
								</label> <label class="btn btn-primary"> <input type="checkbox"
									class="form-control select2" style="width: 100%;" name="code"
									value="CK10">메스꺼움
								</label> <label class="btn btn-primary"> <input type="checkbox"
									class="form-control select2" style="width: 100%;" name="code"
									value="CK20">두통
								</label> <label class="btn btn-primary"> <input type="checkbox"
									class="form-control select2" style="width: 100%;" name="code"
									value="CK30">항문쓰림
								</label> <label class="btn btn-primary"> <input type="checkbox"
									class="form-control select2" style="width: 100%;" name="code"
									value="CK40">심장두근거림
								</label> <label class="btn btn-primary"> <input type="checkbox"
									class="form-control select2" style="width: 100%;" name="code"
									value="CK50">숨가쁨
								</label> <label class="btn btn-primary"> <input type="checkbox"
									class="form-control select2" style="width: 100%;" name="code"
									value="CT10">여의사진료
								</label> <label class="btn btn-primary"> <input type="checkbox"
									class="form-control select2" style="width: 100%;" name="code"
									value="CT20">응급실
								</label> <label class="btn btn-primary"> <input type="checkbox"
									class="form-control select2" style="width: 100%;" name="code"
									value="CT30">야간진료
								</label> <label class="btn btn-primary"> <input type="checkbox"
									class="form-control select2" style="width: 100%;" name="code"
									value="CT40">건강검진
								</label> <label class="btn btn-primary"> <input type="checkbox"
									class="form-control select2" style="width: 100%;" name="code"
									value="CT50">금연클리닉
								</label>

							</div>
						</div>
					</div>
					<div class="container">
						<div class="form-group row">
							<select class="form-control select2" style="width: 40%;"
								name="biz_time_1" id="biz_time_1">
								<option value="">오픈 시간</option>
								<option value="08:30">08:30</option>
								<option value="09:00">09:00</option>
								<option value="09:30">09:30</option>
							</select> &nbsp;&nbsp;&nbsp; <select class="form-control select2"
								style="width: 40%;" name="biz_time_2" id="biz_time_2">
								<option value="">마감 시간</option>
								<option value="17:30">17:30</option>
								<option value="18:00">18:00</option>
								<option value="18:30">18:30</option>
							</select>
						</div>
					</div>

					<div class="row">
						<div class="">
							<div class="icheck-primary">
								<input type="checkbox" id="agreeTerms" name="agreeTerms"
									value="agree"> <label for="agreeTerms"> <a
									href="#">이용약관</a> 및 <a href="#">개인정보취급방침</a>에 동의합니다.
								</label>
							</div>
						</div>

						<!-- /.col -->
					</div>
					<!-- /.col -->
					<br>
					<div class="">
						<button type="submit" class="btn btn-primary btn-block"
						onclick="location.href='/tem3/aView/taeyoung/logintest.jsp'">회원가입 확인</button>

					</div>
				</form>
				<br>
				<hr>
				<a href="/tem3/aView/taeyoung/logintest.jsp" class="text-center">이미
					아이디가 있으신가요?</a>
			</div>
			<!-- /.form-box -->
		</div>
		<!-- /.card -->
	</div>
	<!-- /.register-box -->


</body>
</html>
