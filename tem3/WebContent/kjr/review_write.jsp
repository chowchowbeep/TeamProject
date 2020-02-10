<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 마이메뉴 페이지 -->
<!-- 부트스트랩4 -->

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

</script>
<style>
	.mar{
		margin: 10px 0px;
	}
	
</style>
</head>
<body>

	<div class="container">
	<p class="text-center mar"> 병원 리뷰 작성 </p>
	
		<div class="card mb-8">
			<form style="padding:10px">
				<div class="form-group">
					<label for="hospital_name">제목 </label><input type="text"
						class="form-control" id="title" aria-describedby="emailHelp">
				</div>
				<div class="form-group">
					<label for="hospital_name">내용</label>
					<textarea class="form-control" id="contents" rows="10"></textarea>
				</div>

				<div class="form-group">
					<label for="hospital_name">별점</label>
					<div>
						<select class="form-control">
							<option>★☆☆☆☆</option>
							<option>★★☆☆☆</option>
							<option>★★★☆☆</option>
							<option>★★★★☆</option>
							<option>★★★★★</option>
						</select>
					</div>
				</div>

				<button type="submit" class="btn btn-primary btn-lg btn-block">수정완료</button>
			</form>
		</div>

	</div>
</body>
</html>