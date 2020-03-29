<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 부트스트랩4 -->
<%@ include file="../../layout/hos_head.jsp" %>
<%@ include file="../../layout/hos_menu.jsp" %>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
	integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
	integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
	crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script>
	$(function() { //ready == window.load 와 같은 이벤트

		//영업 등록 버튼 클릭 -> (DB) 오픈시간 값 입력&영업상태 값 진료중으로 변경
	
		$("#btnDiv").on("click","button",function(){
			var stt = $(this).attr("name");
			clickBtnFunc(stt);
		});
		
		function clickBtnFunc(btnId){
			
			
			//ajax로 update처리하기 
			$.ajax("/tem3/ajax/HosSttAjaxCMD.do",{
				dataType : "json",
				data:{bizStt :btnId}
			}).done(function(data) {
				if(btnId==="startBtn"){
					window.alert("영업 등록 하였습니다.");
				}else if(btnId==="endBtn"){
					window.alert("영업 마감 하였습니다.");
				}
				
			});
			
		}
		
		$("tbody").on("click","span",function(){
			var stt=$(this).attr("name");
			var thisTr = (this).closest("form");
			console.log(thisTr);
			
			$.ajax("/tem3/ajax/sttUpdateAjaxCMD.do", {
				type:"POST",
				dataType : "json",
				data : formData
			})
				.done(function(data) {
					if(data){
						if(stt=='Y'){
							alert("완료되었습니다.");
						}else if(stt=='N'){
							alert("취소되었습니다.");
						}
						
					}else{
						alert("다시 시도해주세요.");
					}
					location.href="HHospitalMainCMD.do";//내가쓴리뷰페이지로이동
				})
			
			
			
			
			
			
		})

	})
</script>
<style>
	.mar{
		margin: 10px 0px;
	}
	.topMar { margin:10px 5px };
	a{ color:#6C757D ;
	}
	a:link  { color:#6C757D;}
	a:hover { color:#007bff}
	a:active { 	color:#6C757D}
	a:visited  { 	color:#6C757D}
	
</style>
</head>
<body>
<div class="content-wrapper">
	<div class="container topMar">
		<div class="col-sm mar">
			<button type="button" class="btn btn-secondary btn-lg btn-block" id="startBtn">영업등록</button>
		</div>
		<div class="col-sm mar">
			<button type="button" class="btn btn-secondary btn-lg btn-block" id="endBtn">영업마감</button>
		</div>
		<div class="row">
			<div class="col-sm ">
					<div class="card text-center" style="margin:0px 0px 10px 0px">
						<div class="card" style="margin: 5px;padding: 0px;">
							<div class="card-header text-center" name="jj"><strong>접수현황</strong></div>
							<div class="card-body" style="padding:5px">
								<table class="table table-hover" >
									<thead>
										<tr>
											<th scope="col" width="5px">#</th>
											<th scope="col" width="100px">이름(ID)</th>
											<th scope="col"width="80px"padding="0px"margin="0px">예상시간</th>
											<th scope="col"width="80px">접수처리</th>
										</tr>
									</thead>
									<tbody>
									
										<c:forEach items="${mediList }" var="list">
												<tr id="${list.no }">
													<th scope="row">${list.num }</th>
													<td id="${list.sicId }" name="sicId" >${list.sicName }<br>(${list.sicId })</td>
													<td>${list.resTime }</td>
													<td> 
														<span class="badge bg-success" name="Y">접수완료</span>
														<span class="badge bg-danger" name="N">예약취소</span>
													</td>
												</tr>
										</c:forEach>
									
									</tbody>
								</table>
							</div>
						</div>
					</div>
			</div>
					
			<div class="col-sm ">
					<div class="card text-center">
						<div class="card" style="margin: 5px;">
							<div class="card-header text-center" name="yy"><strong>예약현황</strong></div>
		
							<div class="card-body" style="padding:5px">
								<table class="table table-hover">
									<thead>
										<tr>
											<th scope="col" width="5px">#</th>
											<th scope="col" width="100px">이름(ID)</th>
											<th scope="col"width="80px" style="margin: 5px;">예상시간</th>
											<th scope="col"width="80px">예약처리</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${yeList }" var="list">
												<tr id="${list.no }">
													<th scope="row">${list.num }</th>
													<td id="${list.sicId }" name="sicId" >${list.sicName }<br>(${list.sicId })</td>
													<td>${list.resTime }</td>
													<td> 
														<span class="badge bg-success" name="Y">진료완료</span>
														<span class="badge bg-danger" name="N">예약취소</span>
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
		<div class="text-right"style="text-align:right">
		<a href="#jj"><strong>접수현황 ㅣ  </strong></a> 
		<a href="#yy"><strong>예약현황 ㅣ  </strong></a> 
		<a href="#startBtn"><strong>top &nbsp;</strong></a>
		</div>
	</div>
</div>
<%@ include file="../../layout/all_footer.jsp"%>
</body>
</html>