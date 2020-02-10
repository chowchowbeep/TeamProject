<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 첨부 파일을 사용하는 경우  enctype="multipart/form-data" 꼭 넣어야 함-->
	<!-- action에서 Controller 탐 -->
	<form method="post" enctype="multipart/form-data"
		action="../SickUpload.do">
		<!-- 하나라도 input type중에 file이 있으면 get 방식은 사용 X post 방식만 사용해야 함 -->
		<input type="file" name="uploadfile"> 
		<input type="text" name="desc">
		<input type="" name=""><!-- 발급일자 -->
		<input type="" name=""><!-- 비고 -->
		<button>업로드</button>
	</form>

</body>
</html>

