<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Insert title here</title>

<%@ include file="../../layout/sick_head.jsp"%>
<%@ include file="../../layout/sick_menu.jsp"%>


<style>
div .hiden {
	display: none
}
 .fl{ float:rigth; overflow:auto;
 }
</style>


<script>
	$(function() { //window load이벤트 생략해서 적은것

		$("#areaBtn").bind("click", function() {//지역명 클릭 시 밑에 subDiv출력 
			$("#areaDiv").removeClass("hiden");
			$("#subDiv").addClass("hiden");
			$("#ctDiv").addClass("hiden");

		});
		$("#subBtn").bind("click", function() {//지하철명 클릭 시 밑에 ctDiv출력
			$("#areaDiv").addClass("hiden");
			$("#subDiv").removeClass("hiden");
			$("#ctDiv").addClass("hiden");

		});
		$("#ctBtn").bind("click", function() {//카테고리 클릭 시 밑에 ctDiv출력
			$("#areaDiv").addClass("hiden");
			$("#subDiv").addClass("hiden");
			$("#ctDiv").removeClass("hiden");
		});


	$("#areaDivMain").bind("click",function() { //지역 대분류 클릭시 중분류 출력
					$("#areaDivAddr2").removeClass("hiden");
					$("#areaDivAddr2").html("");
					console.log("aa");
					$.ajax("test.jsp", {
						dataType : "json" //json데이터를 받아올때 그 파일엔 json데이터값만 있어야함. 
					}).done(
							function(data) {
								for (i = 0; i < data.length; i++) {
									console.log(i);
									$("#areaDivAddr2").append(
											'<a class="list-group-item list-group-item-action" id="LS00">'
													+ data[i].name); //(자식)appendTo(부모)
								}
								;

							});
				});

		$("#subDivMain").bind("click", function() {
			$("#subDivMain2").removeClass("hiden");
			$("#subDivMain2").html("");
			$.ajax("", {
				dataType : "json"
			}) 
			.done(function(data) {

			});
		});

		$("#searched").bind("click", function() {
			searchedGo();
		});
		function searchedGo() {
			document.searchFrm.action = "SSearchList.do"
			document.searchFrm.method = "post";
			document.searchFrm.submit();
		}
	});
</script>

</head>
<body>
	<form id="searchFrm">
		<input type="hidden" value="" id="areaInp"> <input
			type="hidden" value="" id="subInp"> <input type="hidden"
			value="" id="ct1Inp"> <input type="hidden" value=""
			id="ct2Inp"> <input type="hidden" value="" id="ct3Inp">
	</form>

	<div class="container">
		<div class="input-group mb-3 topmg">
			<input type="text" class="form-control" placeholder="Search"
				aria-label="Search" aria-describedby="button-Search2">
			<div class="input-group-append">
				<button class="btn btn-outline-secondary" type="button"
					id="button-Search2">검색</button>
			</div>
		</div>

		<!-- 지역|카테고리버튼 -->
		<div class="row">
			<div class="mb-4 col" style="margin: 20px 0px;">
				<button type="button" class="btn btn-primary btn-lg btn-block"
					id="areaBtn">지역명</button>
			</div>
			<div class="mb-4 col" style="margin: 20px 0px;">
				<button type="button" class="btn btn-primary btn-lg btn-block"
					id="subBtn">지하철명</button>
			</div>
			<div class="mb-4 col" style="margin: 20px 0px;">
				<button type="button" class="btn btn-primary btn-lg btn-block"
					id="ctBtn">카테고리</button>
			</div>
		</div>



		<div id="areaDiv" class="">
			<!-- 지역 -->
			<div class="card">
				<div class="card-body">
					<div class="row">
						<div id="areaDivMain" class="col-4">
							<a class="list-group-item list-group-item-action" id="LS00">서울 지역명</a>
							<a class="list-group-item list-group-item-action" id="LB00">부산</a>
							<a class="list-group-item list-group-item-action" id="LD00">대구</a>
						</div>
						<div id="areaDivAddr2" class="col-4">
							<a class="list-group-item list-group-item-action" id="LDA0">동성로,시청</a>
							<a class="list-group-item list-group-item-action" id="LDB0">동대구역,신천</a>
						</div>
						<div id="btnDiv" class="col-4 hiden"></div>
					</div>
					<div class="row">
						<div class="col-9">선택한 카테고리 출력</div>
						<div class="col-3">
							<button type="button" class="btn btn-primary btn-lg fl"
								id="searched">선택한 조건으로 검색</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 지역종료 -->




		<div id="subDiv" class="hiden">
			<!-- 지하철 -->
				<div class="card">
				<div class="card-body">
					<div class="row">
						<div id="subDivMain" class="col-4">
							<a class="list-group-item list-group-item-action" id="LS00">서울  지하철</a>
							<a class="list-group-item list-group-item-action" id="LB00">부산</a>
							<a class="list-group-item list-group-item-action" id="LD00">대구</a>
						</div>
						<div id="subDivMain2" class="col-4">
							<a class="list-group-item list-group-item-action" id="LD10">1호선</a>
							<a class="list-group-item list-group-item-action" id="LD20">2호선</a>
						</div>
						<div id="btnDiv" class="col-4">
							<a class="list-group-item list-group-item-action" id="LD10">중앙로역</a>
							<a class="list-group-item list-group-item-action" id="LD20">동대구역</a>
						</div>
					</div>
					<div class="row">
						<div class="col-9">선택한 카테고리 출력</div>
						<div class="col-3">
							<button type="button" class="btn btn-primary btn-lg fl"
								id="searched">선택한 조건으로 검색</button>
						</div>
					</div>
				</div>
			</div>
			
			
			
			
			
		</div>

		<div id="ctDiv" class="hiden">
			<!--카테고리  -->
			<div class="card">
				<div class="card-body">
					<div class="row">
						<div id="ctDivMain" class="col-4">
							<a class="list-group-item list-group-item-action" id="LS00">진료과목</a>
							<a class="list-group-item list-group-item-action" id="LB00">증상</a>
							<a class="list-group-item list-group-item-action" id="LD00">테마</a>
						</div>
						<div id="ctDivMain2" class="col-4">
							<a class="list-group-item list-group-item-action" id="LD10">내과</a>
							<a class="list-group-item list-group-item-action" id="LD20">소아과</a>
						</div>
						<div id="" class="col-4">
						</div>
					</div>
				
					<div class="row">
						<div class="col-9">선택한 카테고리 출력</div>
						<div class="col-3">
							<button type="button" class="btn btn-primary btn-lg fl"
								id="searched">선택한 조건으로 검색</button>
						</div>
					</div>
				</div>
			</div>
		</div>



	</div>
</body>
</html>