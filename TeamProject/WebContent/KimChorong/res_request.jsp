<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약신청페이지</title>
<script>
// 필수입력사항체크 후 값 넘기도록

</script>
</head>
<body>
	
	<!--
		1. 선택한 병원, 의사, 진료과목 정보 출력 
		c:if
		c:choose사용
		<c:forEach var="dto" items="${list }">
		다수의 dto필드값 가져올 때 // 의사 여러명인 경우
		</c:forEach>
	 -->
	 
	 <!-- 
	 	전: 병원정보 상세조회 페이지(선택한 병원정보를넘겨받아야 함)
	 	후: 예약날짜 선택 페이지, (진료신청시)기록물 선택 페이지
	  -->
	
	<form id ="frm" name="frm" action="예약날짜 선택 페이지" method="post"
		return="필수입력사항체크펑션">
		
		
		<!-- 2. 의사 선택_ 선택한병원정보에서 -->
		<h1>진료받을 의사를 선택하세요</h1>
		<select id="Dr" name="Dr">
			<option value="${dto.artr_name}">
			성명: 예시성명 | 진료과목: 예시과목
			 </option>
			<option value="${dto.artr_name}">
			성명: ${dto.artr_name} | 진료과목: ${dto.artr_sub} 
			</option>
			
		</select>
		<br>
		
		
		<!-- 3. 선생님께 한마디 입력란  -->
		<!-- <input type="text" id="toDr" name="toDr"> -->
		<textarea rows="" cols="" id="toDr" name="toDr"></textarea>
		<br>
		
		
		<!-- 4. 기록물 업로드 버튼 구현 / 모달창 띄우기?? -->
		<button>기록물 업로드</button>
		<br>
		
		
		<!-- 5. 다음:예약날짜 선택 페이지로 이동 
		// 바로 submit되게??? 입력정보가지고 신청페이지 내에서 이동가능하게 하고,
		최종페이지에서  DAO로 넘기게 하려면 어떻게 해야 ?? -->
		<input type="reset" value="입력값 초기화" />
		<input type="submit" value="다음페이지로" />
		
	</form>
</body>
</html>