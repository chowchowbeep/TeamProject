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

<style>
 .hiden {
	display: none
}
 .fl{ float:rigth; overflow:auto;
 }
  .selectActive {
  	background-color:green;
  }
  #divall a:hover{
 	 background-color:green;
  }
  .mar{margin:3px;}
</style>

</head>

<body>
	<form name="frm" id="frm" class="hiden"></form>
<script>

	$(function() {//ready == window.load 와 같은 이벤트
		$("tbody").on("click","tr",function(){
			var id = $(this).attr("id");
			$("#frm").append("<input type='text' name='hosId' id='hosId' value='"+id+"'>");
			document.frm.action="SHospitalInfo.do";
			document.frm.method="post";
			document.frm.submit();
			submit();
		});
	});
</script>
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
							</tr>
						</thead>
						<tbody>
							<c:forEach var="li" items="${starList }">
								<!-- var:변수명 item:collection객체 end정의가없으면 item크기의-1 -->
								<tr id="${li.hosId }">
									<th scope="row">★</th>
									<td>${li.hosId }</td>
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