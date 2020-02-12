<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../../0_sick_layout_topMenu.jsp" %>
<%@ include file="../../0_sick_layout_header.jsp" %>
<link rel="stylesheet" href="cssList.css">
<script>
/* 1. 건강정보 출력
	
	//2.$("#edit")클릭 시 sick_healModify으로 이동
2. 검색기능. 병원명입력받음. 결과값을가지고 search_list.jsp로 이동

4. 등록한 관심병원 정보 출력
-> 클릭하면 관심병원리스트 페이지로 이동

5. 접수증 페이지 이동 기능
*/




</script>
</head>
<body>
	<div class="container">

		<div class="card text-center  topmg">
			<div class="card" style="margin: 5px;">
				<div class="card-header text-left">건강정보</div>
				<div class="card-body">
					<p class="card-text">
					
					</p>
					<a href="#" class="btn btn-primary" id="edit">건강정보수정</a>
				</div>
			</div>
		</div>


		<div class="card text-center" style="margin: 20px 0px;">
			<div class="card-header text-left">병원검색</div>
			<div class="card-body">
				<div class="input-group mb-3">
					<input type="text" class="form-control"
						placeholder="Recipient's username"
						aria-label="Recipient's username" aria-describedby="button-addon2">
					<div class="input-group-append">
						<button class="btn btn-outline-secondary" type="button"
							id="button-addon2">Button</button>
					</div>
				</div>
			</div>
		</div>

		<div class="card mb-3 " style="margin: 20px 0px;">
			<button type="button" class="btn btn-primary btn-lg btn-block">접수증</button>
		</div>

	</div>
</body>
</html>