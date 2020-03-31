<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../../layout/sick_head.jsp" %>
<%@ include file="../../layout/sick_menu.jsp" %>
<script>
	$(function() { //ready == window.load 와 같은 이벤트
		//삭제작업
		$("tbody").on("click","span",function(){
			console.log($(this).attr('name'));
			var thisTr = (this).closest("tr");
			//id값의 글번호를 받아와서 dao에서 delete작업하고 결과 리턴받아서 if문으로 삭제 alert 띄우기
			$.ajax("/tem3/ajax/ReviewDeleteAjaxCMD.do", {
				type:"POST",
				dataType : "json",
				data : {rvNo : $(this).attr("name")
				}
			})
				.done(function(data) {
					if(data){
						thisTr.remove();
						alert("삭제되었습니다.");
						
					}else{
						alert("다시 삭제해주세요.");
					}
					location.href="SReviewMylist.do";//내가쓴리뷰페이지로이동
				})
		});
		
		//클릭시 hosid값을 가진 채 hosInfo페이지로 이동
		$("tbody").on("click","tr",function(){
			var id = $(this).attr("id");
			$("#frm").append("<input type='text' name='hosId' id='hosId' value='"+id+"'>");
			document.frm.action="SHospitalInfo.do"
			document.frm.method="post";
			document.frm.submit();
			submit();
		});
	
	
		
	})
</script>
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
.topMar { margin:10px 5px };
.btnMar { margin:2px };
</style>
</head>

<body>
<div class="content-wrapper">
	<section class="content-header">
			<div class="container-fluid">
				<div class="row mb-2">
					<div class="col-sm-6">
						<h1> 리뷰 리스트</h1>
					</div>
				</div>
			</div>
	<!-- /.container-fzluid -->
		</section>
	<form name="frm" id="frm" class="hiden">
		
	</form>
	<div class="container topMar">
		<div class="card text-center">
			<div class="card" style="margin: 5px;">
				<div class="card-header text-center"><strong>내가 작성한 리뷰 리스트</strong></div>
				<div class="card-body">

					<table class="table table-hover">
						<thead>
							<tr>
								<th scope="col" style="padding:2px;margin:2px;">병원명</th>
								<th scope="col" style="padding:2px;margin:2px;">내용</th>
								<th scope="col" style="padding:2px;margin:2px;">별점</th>
								<th scope="col" style="padding:2px;margin:2px;">Label</th>
							</tr>
						</thead>
						
						<tbody>
							<c:forEach items="${list }" var="list">
			                    <tr id="${list.hosId }" name="${list.rvNo }">
			                      <td>${list.hosName }</td>
			                      <td class="text-left">${list.rvCont }</td>
			                      <td>
			                        <div>
			                          <div>
			                         	<c:choose>
			                         		<c:when test="${list.starPoint eq '1' }">
			                         			<img src="images/star-on-small.png">
			                         			<img src="images/star-off-small.png">
			                         			<img src="images/star-off-small.png">
			                         			<img src="images/star-off-small.png">
			                         			<img src="images/star-off-small.png">
			                         		</c:when>
			                         		<c:when test="${list.starPoint eq '2' }">
												<img src="images/star-on-small.png">
			                         			<img src="images/star-on-small.png">
			                         			<img src="images/star-off-small.png">
			                         			<img src="images/star-off-small.png">
			                         			<img src="images/star-off-small.png">									
											</c:when>
			                         		<c:when test="${list.starPoint eq '3' }">
												<img src="images/star-on-small.png">
												<img src="images/star-on-small.png">
			                         			<img src="images/star-on-small.png">
			                         			<img src="images/star-off-small.png">
			                         			<img src="images/star-off-small.png">
											</c:when>
			                         		<c:when test="${list.starPoint eq '4' }">
			                         			<img src="images/star-on-small.png">
			                         			<img src="images/star-on-small.png">
												<img src="images/star-on-small.png">
			                         			<img src="images/star-on-small.png">
			                         			<img src="images/star-off-small.png">
			                         		</c:when>
			                         		<c:when test="${list.starPoint eq '5' }">
			                         			<img src="images/star-on-small.png">
			                         			<img src="images/star-on-small.png">
			                         			<img src="images/star-on-small.png">
												<img src="images/star-on-small.png">
			                         			<img src="images/star-on-small.png">
											</c:when>
			                         		<c:otherwise>
			                         			<img src="images/star-off-small.png">
			                         			<img src="images/star-off-small.png">
			                         			<img src="images/star-off-small.png">
			                         			<img src="images/star-off-small.png">
			                         			<img src="images/star-off-small.png">
			                         		</c:otherwise>
			                         	</c:choose>
			                          </div>
			                        </div>
			                      </td>
			                      <td>
			                      	<span class="badge bg-danger" name="${list.rvNo }">삭제</span>
			                      </td>
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