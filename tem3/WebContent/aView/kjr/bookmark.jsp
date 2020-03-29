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
		
		//삭제작업
		$("tbody").on("click","th",function(){
			console.log($(this).attr('name'));
			var thisTr = (this).closest("tr");
			//id값의 글번호를 받아와서 dao에서 delete작업하고 결과 리턴받아서 if문으로 삭제 alert 띄우기
			$.ajax("/tem3/ajax/BookmarkDeleteAjaxCMD.do", {
				type:"POST",
				dataType : "json",
				data : {hosId : $(this).attr("name")
				}
			})
				.done(function(data) {
					if(data){
						thisTr.remove();
						alert("삭제되었습니다.");
					}else{
						alert("다시 삭제해주세요.");
					}
					location.href="SBookmark.do";//내가쓴리뷰페이지로이동
				})
		});
		
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
<div class="content-wrapper">
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
							<c:if test="${empty starList }">
								<tr>
									 <td colspan="2">
									 	<p> 등록된 관심병원이 없습니다.</p>
									</td>
								</tr>
							</c:if>
							<c:forEach var="li" items="${starList }">
								<!-- var:변수명 item:collection객체 end정의가없으면 item크기의-1 -->
								<tr>
									<th scope="row" name="${li.hosId }">★</th>
									<td>${li.name }</td>
								</tr>
							</c:forEach>
							
						</tbody>
					</table>
					
				</div>
			</div>
		</div>
	</div>
</div>
<%@ include file="../../layout/all_footer.jsp"%>

</body>
</html>