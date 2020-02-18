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
  .selectActive {
  	background-color:green;
  }
</style>


<script>
	
	$(function() { //window load이벤트 생략해서 적은것

		$("#areaBtn").bind("click", function() {//지역명 클릭 시 밑에 subDiv출력 
			$("#areaDiv").removeClass("hiden");
			$("#subDiv").addClass("hiden");
			$("#ctDiv").addClass("hiden");
			$(".selectActive").removeClass("selectActive");
			$(this).addClass("selectActive");

		});
		$("#subBtn").bind("click", function() {//지하철명 클릭 시 밑에 ctDiv출력
			$("#areaDiv").addClass("hiden");
			$("#subDiv").removeClass("hiden");
			$("#ctDiv").addClass("hiden");
			$(".selectActive").removeClass("selectActive");
			$(this).addClass("selectActive");

		});
		$("#ctBtn").bind("click", function() {//카테고리 클릭 시 밑에 ctDiv출력
			$("#areaDiv").addClass("hiden");
			$("#subDiv").addClass("hiden");
			$("#ctDiv").removeClass("hiden");
			$(".selectActive").removeClass("selectActive");
			$(this).addClass("selectActive");
		});

		
					

		$("#searched").bind("click", function() {
			searchedGo();
		});
		function searchedGo() {
			document.searchFrm.action = "SSearchList.do"
			document.searchFrm.method = "post";
			document.searchFrm.submit();
		}
		$("#areaDivMain").on("click","a",searchFunc); //지역 대분류 클릭시 중분류 출력
		$("#areaDivAddr2").on("click","a",selectClass); //지역 마지막분류 클릭시 색상변화+값 입력 
		$("#subDivMain").on("click","a",searchFunc); //지하철 대분류 클릭시 중분류 출력
		$("#subDivMain2").on("click","a",searchFunc); //지하철 중분류 클릭시 소분류 출력
		$("#subDivMain3").on("click","a",selectClass); //지하철 마지막분류 클릭시 색상변화+값 입력 
		
		
		
		$("#ctDivMain").on("click","a",searchFunc2); //카테고리 대분류 클릭시 중분류 출력	
		
		function selectClass(){
			var pDiv = $(this).closest("div");
			pDiv.find("a").removeClass("selectActive");
			$(this).addClass("selectActive");
			//값입력추가필요
		};
		
		function searchFunc(){ //대분류 클릭시 중분류 출력
			var pDiv = $(this).closest("div"); //클릭한 a의 부모div 객체를 찾음
			pDiv.find("a").removeClass("selectActive");//자식태그 가져옴
			$(this).addClass("selectActive");
			pDiv = pDiv.next();//부모div에서 그 다음 객체를 찾음
			var pDivId = pDiv.attr("id");//pDiv의 id로 객체확인
			console.log(pDivId);	//pDiv의 id로 객체확인2
			////////////////////////
			pDiv.removeClass("hiden");
			pDiv.html("");
			$.ajax("/tem3/ajax/LocaseachAjaxCMD.do", {
				dataType : "json",
				data : {pCode : $(this).attr("id")}
			})
				.done(function(data) {
					for (i = 0; i < data.length; i++) {
						pDiv.append(
						'<a class="list-group-item list-group-item-action" id="LS00">'
								+ data[i].wd); //(자식)appendTo(부모)
					}
			});
		};
		function searchFunc2(){
			var pDiv = $(this).closest("div"); //클릭한 a의 부모div 객체를 찾음
			pDiv.find("a").removeClass("selectActive");//자식태그 가져옴
			$(this).addClass("selectActive");
			pDiv = pDiv.next();//부모div에서 그 다음 객체를 찾음
			var pDivId = pDiv.attr("id");//pDiv의 id로 객체확인
			console.log(pDivId);	//pDiv의 id로 객체확인2
			////////////////////////
			pDiv.removeClass("hiden");
			pDiv.html("");
			$.ajax("/tem3/ajax/CategoriAjaxCMD.do", {
				dataType : "json",
				data : {wd : $(this).attr("id")}
			})
				.done(function(data) {
					for (i = 0; i < data.length; i++) {
						pDiv.append(
						'<a class="list-group-item list-group-item-action" id="LS00">'
								+ data[i].wd); //(자식)appendTo(부모)
					}
			});
		};
		
		
		
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
						<div id="subDivMain3" class="col-4 hiden">
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
							<a class="list-group-item list-group-item-action" id="apa">진료과목</a>
							<a class="list-group-item list-group-item-action" id="sub">증상</a>
							<a class="list-group-item list-group-item-action" id="tema">테마</a>
						</div>
						<div id="ctDivMain2" class="col-4">
							<a class="list-group-item list-group-item-action" id="LD10">내과</a>
							<a class="list-group-item list-group-item-action" id="LD20">소아과</a>
						</div>
						<div id="" class="col-4">
						</div>
					</div>
				
					<div class="row">
						<div class="col-9">
							<form>
							<input name="cate" id="cate">
							<input name="pCode" id="pCode">
							
						
							</form>
						</div>
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