<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b450fd1e475fcbb9f2bb640be5a6f4a8"></script>
<%@ include file="../../layout/sick_head.jsp" %>
<%@ include file="../../layout/sick_menu.jsp" %>
<script>
	$(function() {
		$("#STmrRequest").on("click", function() {
// 			input hidden 파라미터 한꺼번에 넘기기. __ 초롱 수정
				frm.action = 'STmrRequest.do';
				frm.submit();
					
// 			location.href = 'STmrRequest.do';
		});

		$("#SResRequest").on("click", function() {
				frm.action = 'SResRequest.do';
				frm.submit();
					
// 			location.href = 'SResRequest.do';
		});

		
		$("img").on("click",function(){
			
			//반짝별작업
			var img = $("#img").attr("name");
			
			if(img=='0'){
				console.log($("#hId").attr("name"));
				$.ajax("/tem3/ajax/BookmarkInsertAjaxCMD.do", {
					type:"POST",
					dataType : "json",
					data : {hosId : $("#hId").attr("name")
					}
				})
					.done(function(data) {
						if(data){
							alert("관심병원으로 등록되었습니다.");
						}else{
							alert("다시 클릭해주세요..");
						}
						location.href="SHospitalInfo.do";
					})
			}else{
				console.log("1111");
				//까망별작업
					console.log("으아아아악 1111로넘어감~~~");
					$.ajax("/tem3/ajax/BookmarkDeleteAjaxCMD.do", {
						type:"POST",
						dataType : "json",
						data : {hosId : $("#hId").attr("name")
						}
					})
						.done(function(data) {
							if(data){
								alert("해제되었습니다..");
							}else{
								alert("다시 클릭해주세요..");
							}
							location.href="SHospitalInfo.do";
						})
				
			}
		});
		
		function calcHeight(){
			var the_height=
				 document.getElementById('the_iframe').contentWindow.
				 document.body.scrollHeight;//ifram대상의 스크롤 높이를 가져옴 

				 
				 document.getElementById('the_iframe').height=
				 the_height; //ifram대상의 스크롤높이로 이 페이지 높이를 변경함 

				 //document.getElementById('the_iframe').scrolling = "no";
				 document.getElementById('the_iframe').style.overflow = "hidden";
		}
		
		
		
	});
	
</script>
<style>
  .btnMar{margin:2px;}
  .hiden{display: none;}
</style>
</head>
<body>
	<div class="container">
	
		<div class="card text-center  topmg">
			<div class="card" style="margin: 5px;">
				<div class="card-header ">
				<c:if test="${cnt eq '0' }"><!-- 노관심병원이면 까만별 -->
					<img src="images/star-off-big.png" id="img" name="${cnt}"> &nbsp; &nbsp;
				</c:if>
				<c:if test="${cnt eq '1' }"><!-- 관심병원이면 반짝별 -->
					<img src="images/star-on-big.png" id="img" name="${cnt}"> &nbsp; &nbsp;
				</c:if>
				${list[0].hosName } </div>
				<div class="card-body">
					<div id="map" style="width: auto; height: 400px;"></div>
					<!-- 지도담을 영역만들기 -->
					<script>
						var container = document.getElementById('map');
						var options = {
							center : new kakao.maps.LatLng(33.450701,
									126.570667),
							level : 3
						};

						var map = new kakao.maps.Map(container, options);
					</script>
				</div>
			</div>



			<div class="card" style="margin: 5px;">
				<div class="card-body">
					<div id="hId" name="${list[0].hosId}" class="hiden"></div>
					<p>전화번호 : ${ list[0].hosPhone}</p>
					<p>주소 : ${list[0].hosAddr}</p>
					<p>진료시간 : ${list[0].hosBizTime}</p>
					<p>사업자등록번호 : ${list[0].hosBizno}</p>
					<div id="searchWd" name="searchWd">
						<c:forEach items="${codeList }" var="code">
							<c:if test="${code.value.type eq 'A'}">
								<button type='button' class='btn btn-outline-info btnMar'>${code.value.name}</button>
							</c:if>
							</c:forEach>
							<c:forEach items="${codeList }" var="code">
							<c:if test="${code.value.type eq 'S'}">
								<button type='button' class='btn btn-outline-info btnMar'>${code.value.name}</button>
							</c:if>
							</c:forEach>
							<br>
							<c:forEach items="${codeList }" var="code">
								<c:choose>
									<c:when test="${code.value.type eq 'A'}"></c:when >
									<c:when test="${code.value.type eq 'S'}"></c:when >
									<c:otherwise>
										<button type='button' class='btn btn-outline-info btnMar'>${code.value.name}</button>
									</c:otherwise>
							</c:choose>
							</c:forEach>
						</div>
					
				</div>
			</div>
			<!-- STmrRequest.do와 SResRequest.do로 파라미터 넘기기 위한 부분 // 초롱 수정 -->
			<form id="frm" name="frm" method="post">
				<input type="hidden" name="hosId" value="${list[0].hosId}"></input>
				<input type="hidden" name="hosName" value="${list[0].hosName}"></input>
				<input type="hidden" name="hosAddr" value="${list[0].hosAddr}"></input>
				<input type="hidden" name="hosBizTime" value="${list[0].hosBizTime}"></input>
			</form>

			<button type="button" class="btn btn-primary btn-lg btn-block" id="STmrRequest">당일
				접수</button>
			<button type="button" class="btn btn-primary btn-lg btn-block" id="SResRequest">예약
				신청</button>
		</div>
		<iframe src="SreviewBoardCMD.do?hosId=${list[0].hosId}&currentPage=1"  
		frameborder="0" id="the_iframe" onload="calcHeight()" 
		style="overflow-x:hidden; overflow:auto; width:100%; min-height:500px;">
		</iframe>	
	</div>
	


</body>
</html>