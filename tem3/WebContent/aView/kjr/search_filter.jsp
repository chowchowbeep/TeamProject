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
<script src=" https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
	integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
	crossorigin="anonymous"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script>
	$(function() {
		$("#tabs").tabs();
	});
</script>
<style>
	.mar{margin: 20px 0px;
	}
</style>
</head>
<body>
	<div class="container">
		<div class="mar">
		<div id="tabs" style="margin: 5px;"
			class="ui-tabs ui-corner-all ui-widget ui-widget-content">
			<ul>
				<li><a href="#tabs-medi">진료과목</a></li>
				<li><a href="#tabs-sic">증상</a></li>
				<li><a href="#tabs-theme">테마</a></li>
			</ul>
			
			<div id="tabs-medi"><!-- 진료과목 세부내용 -->
				<div class="custom-control custom-checkbox mr-sm-2">
				<div class="row">
					<div class="col-4 mb-3 col"> <!-- 1분단 카테고리 -->
						<div id="진료과목1">
							<input type="checkbox" class="custom-control-input" id="medi1" value="코드값"> 
							<label class="custom-control-label"for="medi1">진료과목1</label>
						</div>
						<div id="진료과목2">
							<input type="checkbox" class="custom-control-input" id="medi2" value="">
							<label class="custom-control-label" for="medi2">진료과목2</label>
						</div>
					</div>
				
					<div class="col-4 mb-3 col"> <!-- 2분단 카테고리 -->
						<div id="진료과목3">
							<input type="checkbox" class="custom-control-input" id="medi3" value=""> 
							<label class="custom-control-label"for="medi3">진료과목3</label>
						</div>
						<div id="진료과목4">
							<input type="checkbox" class="custom-control-input" id="medi4" value=""> 	
								<label class="custom-control-label"	for="medi4">진료과목4</label>
						</div>
					</div>
					<div class="col-4 mb-3 col"> <!-- 3분단 카테고리 -->
						<div id="진료과목5">
							<input type="checkbox" class="custom-control-input" id="medi5" value=""> 
							<label class="custom-control-label"for="medi5">진료과목3</label>
						</div>
						<div id="진료과목6">
							<input type="checkbox" class="custom-control-input" id="medi6" value=""> 	
								<label class="custom-control-label"	for="medi6">진료과목4</label>
						</div>
					</div>
				</div>
				</div>
			</div>
			
			
			
			<div id="tabs-sic">
				<div class="custom-control custom-checkbox mr-sm-2">
				<div class="row">
					<div class="col-4 mb-3 col"> <!-- 1분단 카테고리 -->
						<div>
							<input type="checkbox" class="custom-control-input" id=sic1 value="코드값"> 
							<label class="custom-control-label"for="sic1">증상1</label>
						</div>
						<div>
							<input type="checkbox" class="custom-control-input" id="sic2" value="">
							<label class="custom-control-label" for="sic2">증상2</label>
						</div>
					</div>
				
					<div class="col-4 mb-3 col"> <!-- 2분단 카테고리 -->
						<div id="증상1">
							<input type="checkbox" class="custom-control-input" id="sic3" value=""> 
							<label class="custom-control-label"for="sic3">증상3</label>
						</div>
						<div>
							<input type="checkbox" class="custom-control-input" id="sic4" value=""> 	
								<label class="custom-control-label"	for="sic4">증상4</label>
						</div>
					</div>
					<div class="col-4 mb-3 col"> <!-- 3분단 카테고리 -->
						<div>
							<input type="checkbox" class="custom-control-input" id="sic5" value=""> 
							<label class="custom-control-label"for="sic5">증상5</label>
						</div>
						<div>
							<input type="checkbox" class="custom-control-input" id="sic6" value=""> 	
								<label class="custom-control-label"	for="sic6">증상6</label>
						</div>
					</div>
				</div>
				</div>

			</div>
			<div id="tabs-theme">
				<div class="custom-control custom-checkbox mr-sm-2">
				<div class="row">
					<div class="col-4 mb-3 col"> <!-- 1분단 카테고리 -->
						<div>
							<input type="checkbox" class="custom-control-input" id=theme1 value="코드값"> 
							<label class="custom-control-label"for="theme1">테마1</label>
						</div>
						<div>
							<input type="checkbox" class="custom-control-input" id="theme2" value="">
							<label class="custom-control-label" for="theme2">테마2</label>
						</div>
					</div>
				
					<div class="col-4 mb-3 col"> <!-- 2분단 카테고리 -->
						<div>
							<input type="checkbox" class="custom-control-input" id="theme3" value=""> 
							<label class="custom-control-label"for="theme3">테마3</label>
						</div>
						<div>
							<input type="checkbox" class="custom-control-input" id="theme4" value=""> 	
								<label class="custom-control-label"	for="theme4">테마4</label>
						</div>
					</div>
					<div class="col-4 mb-3 col"> <!-- 3분단 카테고리 -->
						<div>
							<input type="checkbox" class="custom-control-input" id="theme5" value=""> 
							<label class="custom-control-label"for="theme5">테마5</label>
						</div>
						<div>
							<input type="checkbox" class="custom-control-input" id="theme6" value=""> 	
								<label class="custom-control-label"	for="theme6">테마6</label>
						</div>
					</div>
				</div>
				</div>
			
			</div>
		</div>

		<div>
			<button type="button" class="btn btn-secondary btn-lg btn-block mar">이 조건으로 검색하기</button>
		</div>



		</div>	
	</div>
	
	
	
</body>
</html>