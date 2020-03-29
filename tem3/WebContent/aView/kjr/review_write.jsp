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
		
		if($("#contents").val()==''){
			alert("내용을 입력하세요");
			return false;
		}else{
			insertCheck();
			/*
			document.reviewFrm.action="SReviewMylist.do"
			document.reviewFrm.method="post";
			document.reviewFrm.submit();
			*/
		}
	};
	
	
	function insertCheck(){
		var formData = $("#reviewFrm").serialize();
		$.ajax("/tem3/ajax/ReviewInsrtAjaxCMD.do", {
			type:"POST",
			dataType : "json",
			data : formData 
		})
			.done(function(data) {
				if(data){
					alert("등록에 성공하셨습니다.");
					location.href="SReviewMylist.do";//내가쓴리뷰페이지로이동
				}else{
					eleat("등록에 실패하셨습니다.")
					location.href="SReviewWriteCMD.do";//리뷰작성페이지로이동
				}
			})
		};
	
	
});
</script>
<style>
  .topMar { margin:10px };
  .hiden {
	display: none
}
</style>
</head>
<body>
<div class="content-wrapper">
	<section class="content-header">
			<div class="container-fluid">
				<div class="row mb-2">
					<div class="col-sm-6">
						<h1>리뷰작성</h1>
					</div>
				</div>
			</div>
	<!-- /.container-fzluid -->
		</section>
	<div class="container topMar">
		
		<div class="card mb-3">
			<div class="card-header text-center">
				<strong>리뷰 작성</strong> 
			</div>	
			<div class="card-body">
				<form style="padding:10px" id="reviewFrm" name="reviewFrm" >
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
					<input id="inpBtn" type="button"value="등록하기" class="btn btn-secondary btn-lg btn-block">
				</form>
			</div>
		</div>
	
	</div>
</div>
<%@ include file="../../layout/all_footer.jsp"%>
</body>
</html>