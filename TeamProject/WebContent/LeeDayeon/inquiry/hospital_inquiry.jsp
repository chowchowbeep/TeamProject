<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	
<script>
	window.addEventListener("load", function() {

		//전체조회 이벤트
		btnList.addEventListener("click", function() {
			var url = "../ajaxBoardList.do";
			var data = null;
			var callback = function(boardList) {
				for (i = 0; i < boardList.length; i++) {
					result.inneHTML += boardList[i].poster + "<br>";
				}
			}
			$.getJSON(url, data, callback);
		});

		//번호 조회 이벤트
		btnOne.addEventListener("click", function() {
			var url = "../ajaxBoardOne.do";
			var data = {no : no.value};
			var callback = function(board, status, xhr) {
				console.log(board);
				console.log(status);
				console.log(xhr);
				result.innerHTML += board.poster+board.subject+"<br>";
			}
			$.getJSON(url, data, callback);
		});
	});
</script>
</head>
<body>

</body>
</html>