<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>접수신청 페이지</title>
</head>
<script>
//필수입력사항 체크

//접수가능여부 제어
//병원 스케줄(휴일을 예약가능날짜에서 제외, 영업상태속성확인)
//,의사 스케줄(의사휴일을 예약가능날짜에서 제외)
//,병원기본정보 등이필요. 

//도착예상시간 선택가능값 제어

</script>
<body>
<!-- 
	(선택 불가능 항목은 색으로 구분)
	"1. 의사, 진료과목 정보 출력 
	2. 의사 선택 기능 구현
	3. 선생님께 한마디 입력란 구현
	4. 진료 기록물 업로드 버튼 구현
	-> 기록물 선택 페이지로 이동
	4. 도착예상시간 선택 기능 구현
	5. 완료버튼 구현 -> 클릭시 접수완료 페이지로 이동" 
-->



	<!-- 접수증 생성 페이지S5 와의 데이터 전달도 고려할 것.  -->
	<!-- 관심병원리스트페이지 S30에서 받아올 데이터도 고려할 것. ㅡ -->
	
	
	
	<!-- 오늘날짜 -->
	document.getElementById('tmrDate').valueAsDate = new Date();
	<input type="date" id="tmrDate" name="tmrDate">

</body>
</html>