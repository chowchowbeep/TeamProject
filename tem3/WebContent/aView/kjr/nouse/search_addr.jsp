<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
	integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
	integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
	crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<link rel="stylesheet" href="cssList.css">
<script>
	$(function() {
		$("#tabs").tabs();
	});
</script>
</head>
<body>
	<div class="container">
		<div class="input-group mb-3 topmg">
			<input type="text" class="form-control" placeholder="Search"
				aria-label="Search" aria-describedby="button-Search2">
			<div class="input-group-append">
				<button class="btn btn-outline-secondary" type="button"
					id="button-Search2">검색</button>
			</div>
		</div>
			<!-- 지역|카테고리버튼 -->
		<div class="row">
			<div class="mb-3 col" style="margin: 20px 0px;">
				<button type="button" class="btn btn-primary btn-lg btn-block" 	data-toggle="dropdown" data-activates='dropdown1' id="area">지역</button>
				<div class="dropdown-menu"  id='dropdown1' class='dropdown-content'>
					 <a class="dropdown-item" href="search_addr.jsp">지역명</a>
					 <a class="dropdown-item" href="search_sub.jsp">지하철명</a>
				</div>
			</div>
			<div class="mb-3 col" style="margin: 20px 0px;">
				<button type="button" class="btn btn-primary btn-lg btn-block">카테고리</button>
			</div>
		</div>
		
		
		<!-- 주소별 검색 -->
		<div class="row" id="">
		<div id="list-main" class="col-4">
  			<a class="list-group-item list-group-item-action" id="LS00">서울</a>
  			<a class="list-group-item list-group-item-action" id="LB00">부산</a>
 			<a class="list-group-item list-group-item-action" id="LD00">대구</a>
		</div>
		
		
		<div id="list-addr2" class="col-4">
  			<a class="list-group-item list-group-item-action" id="LDA0">동성로,시청</a>
  			<button type="button" class="btn btn-primary btn-lg btn-block">카테고리 선택</button>
  			<button type="button" class="btn btn-primary btn-lg btn-block">이 조건으로 검색</button>
		</div>
		
		
		</div>
	</div>
</body>
</html>