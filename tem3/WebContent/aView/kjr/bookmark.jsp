<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../../layout/sick_head.jsp" %>
<%@ include file="../../layout/sick_menu.jsp" %>
<script>
	$(function() { //ready == window.load 와 같은 이벤트
		
		
	})
</script>
<style>
	.mar{
		margin: 10px 0px;
	}
</style>
</head>

<body>
	<div class="container">
		<div class="card text-center">
			<div class="card" style="margin: 5px;">
				<div class="card-header text-left">관심병원</div>
				<div class="card-body">

					<table class="table table-hover">
						<thead>
							<tr>
								<th scope="col">★</th>
								<th scope="col">병원명</th>
								<th scope="col">버튼</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="li" items="${starList }">
								<!-- var:변수명 item:collection객체 end정의가없으면 item크기의-1 -->
								<tr>
									<th scope="row">★</th>
									<td>${li.hosId }</td>
									<td><button>상세페이지로이동 </button></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					
				</div>
			</div>
		</div>
	</div>


</body>
</html>