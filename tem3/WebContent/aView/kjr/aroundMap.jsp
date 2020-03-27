<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../../layout/sick_head.jsp" %>
<%@ include file="../../layout/sick_menu.jsp" %>

<link rel="stylesheet" href="cssList.css">
<script>
</script>
</head>
<body>
	<div class="container">
		<div class="input-group mb-3 topmg">
			<input type="text" class="form-control" placeholder="Search"aria-label="Search" aria-describedby="button-Search2">
			<div class="input-group-append">
				<button class="btn btn-outline-secondary" type="button"	id="button-Search2">검색</button>
			</div>
		</div>

		<!-- 병원|약국 -->
		<div class="row">
			<div class="mb-3 col" style="margin: 20px 0px;">
				<button type="button" class="btn btn-secondary btn-lg btn-block">병원</button>
			</div>
			<div class="mb-3 col" style="margin: 20px 0px;">
				<button type="button" class="btn btn-secondary btn-lg btn-block">약국</button>
			</div>
		</div>
		
		<!-- 지도api로 자기주변gps기반 위치 표시 -->
		<div class="mb-3">
				<img src="img/캡처.PNG" style="max-width: 100%;" class="card-img"
					alt="지도api">
		</div>
		
	</div>
</body>
</html>