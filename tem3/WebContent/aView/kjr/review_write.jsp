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
<%@ include file="../../layout/sick_head.jsp" %>
<%@ include file="../../layout/sick_menu.jsp" %>
<script>
$(function() { 
	$("#inpBtn").bind("click",insertGo); //병원명으로 상세리스트로 검색
	
	function insertGo(){
		
		if($("#title").val()==''){
			alert("제목을 입력하세요");	
			return false;
		}else if($("#contents").val()==''){
			alert("내용을 입력하세요");
			return false;
		}else{
			document.reviewFrm.action="SReviewMylist.do"
			document.reviewFrm.method="post";
			document.reviewFrm.submit();	
		}
	};
});
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
			<form style="padding:10px" id="reviewFrm" name="reviewFrm" >
				<div class="form-group">
					<label for="hospital_name">제목 </label>
					<input type="text" class="form-control" id="title" name="title"aria-describedby="emailHelp">
				</div>
				<div class="form-group">
					<label for="hospital_name">내용</label>
					<textarea class="form-control" id="contents" name="contents" rows="10"></textarea>
				</div>

				<div class="form-group">
					<label for="hospital_name">별점</label>
					<div>
						<select class="form-control" name="star" id="star">
							<option value="0">☆☆☆☆☆</option>
							<option value="1">★☆☆☆☆</option>
							<option value="2">★★☆☆☆</option>
							<option value="3">★★★☆☆</option>
							<option value="4">★★★★☆</option>
							<option value="5">★★★★★</option>
						</select>
					</div>
				</div>
				<input id="inpBtn" type="button"value="수정완료" class="btn btn-primary btn-lg btn-block">
			</form>
		</div>
	
	<button type="button" class="close" data-dismiss="alert" aria-label="Close">
 		 <span aria-hidden="true">&times;</span>
	</button>
	</div>
</body>
</html>