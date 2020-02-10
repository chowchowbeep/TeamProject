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
<%@ include file="../0_sick_layout_header.jsp" %>
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