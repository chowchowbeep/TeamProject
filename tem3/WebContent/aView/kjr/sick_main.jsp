<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b450fd1e475fcbb9f2bb640be5a6f4a8"></script>
<%@ include file="../../layout/sick_head.jsp" %>
<%@ include file="../../layout/sick_menu.jsp" %>
<link rel= "stylesheet" type="text/css" href="aView/kjr/cssList.css">
<style>
.btnMar { margin:2px }
</style>

<script>


/* 1. 건강정보 출력
	
	//2.$("#edit")클릭 시 sick_healModify으로 이동
2. 검색기능. 병원명입력받음. 결과값을가지고 search_list.jsp로 이동
 


4. 등록한 관심병원 정보 출력
-> 클릭하면 관심병원리스트 페이지로 이동

5. 접수증 페이지 이동 기능
*/
$(function() { //window load이벤트 생략해서 적은것
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
	
	//건강정보수정 페이지로이동
	$("#edit").on("click", function() {
		location.href='SSickHealModify.do';
	});
	
	$("#WjqtnwmdBtn").on("click", function() {
		location.href='SSickWjqtnwmd.do';
	});

	$("#searchBtn").on("click", function() {
		if($("#hosName").val()==''){
			alert("병원명을 입력하세요");
		}else{
		searchList();
		}
	});
	
	
});

//검색버튼클릭시 리스트페이지로 넘어가게 함
function searchList(){
	document.searchFrm.action="SSearchList.do";
	document.searchFrm.method="post";
	document.searchFrm.submit();
}
</script>
</head>
<body>
	<div class="container">

		<div class="card text-center  topmg">
			<div class="card" style="margin: 5px;">
				<div class="card-header text-center"> ${dto.sicName }님의 건강정보</div>
				<div class="card-body">
				
					<c:forEach items="${hIndto}" var="dto">
						<c:if test="${dto.type eq 'BL'}"><!-- 혈액형 -->
							<button type='button' class='btn btn-outline-info btnMar'>${dto.name }</button>
						</c:if>
					</c:forEach>
					<br>
					<c:forEach items="${hIndto}" var="dto">
						<c:if test="${dto.type eq 'YK'}"><!-- 약 -->
							<button type='button' class='btn btn-outline-info btnMar'>${dto.name }</button>
						</c:if>
					</c:forEach>
					<br>
					<c:forEach items="${hIndto}" var="dto">
						<c:if test="${dto.type eq 'AR'}"><!-- 알레르기 -->
							 <button type='button' class='btn btn-outline-info btnMar'>${dto.name }</button>
						</c:if>
					</c:forEach>
					<br>
					<c:forEach items="${hIndto}" var="dto">
						<c:if test="${dto.type eq 'SI'}"><!-- 지병 -->
							<button type='button' class='btn btn-outline-info btnMar'>${dto.name }</button>	 
						</c:if>
					</c:forEach>
			
					<p class="card-text">
					
					</p>
					<a href="#" class="btn btn-primary" id="edit">건강정보수정</a>
				</div>
			</div>
		</div>


		<div class="card text-center" style="margin: 20px 0px;">
			<div class="card-header text-left">병원검색</div>
			<div class="card-body">
			<form name="searchFrm">
				<div class="input-group mb-3">
					<input type="text" class="form-control"	placeholder="병원명" name="hosName" id="hosName">
					<div class="input-group-append">
						<button class="btn btn-outline-secondary" type="button" id="searchBtn"><i class="fas fa-search"></i></button>
					</div>
				</div>
			</form>
				
			</div>
		</div>


		<form name="frm" id="frm" class="hiden"></form>
		<script>
			$(function() {//ready == window.load 와 같은 이벤트

				//삭제작업
				$("tbody").on("click", "th", function() {
					console.log($(this).attr('name'));
					var thisTr = (this).closest("tr");
					//id값의 글번호를 받아와서 dao에서 delete작업하고 결과 리턴받아서 if문으로 삭제 alert 띄우기
					$.ajax("/tem3/ajax/BookmarkDeleteAjaxCMD.do", {
						type : "POST",
						dataType : "json",
						data : {
							hosId : $(this).attr("name")
						}
					}).done(function(data) {
						if (data) {
							thisTr.remove();
							alert("삭제되었습니다.");
						} else {
							alert("다시 삭제해주세요.");
						}
						location.href = "SBookmark.do";//내가쓴리뷰페이지로이동
					})
				});

				$("tbody")
						.on(
								"click",
								"tr",
								function() {
									var id = $(this).attr("id");
									$("#frm")
											.append(
													"<input type='text' name='hosId' id='hosId' value='"+id+"'>");
									document.frm.action = "SHospitalInfo.do";
									document.frm.method = "post";
									document.frm.submit();
									submit();
								});
			});
		</script>

		<div class="card text-center" style="margin: 20px 0px;">
			<div class="card-header text-left" id="bokkmarkA">관심병원 리스트</div>
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
									<p>등록된 관심병원이 없습니다.</p>
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





		<div class="card mb-3 " style="margin: 20px 0px;">
			<button type="button" class="btn btn-primary btn-lg btn-block" id="WjqtnwmdBtn">접수증 관리</button>
		</div>



	</div>

</body>
</html>