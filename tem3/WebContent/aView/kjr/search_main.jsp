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
  #divall a:hover{
 	 background-color:green;
  }
  .mar{margin:2px;}
</style>


<script>
	
	$(function() { //window load이벤트 생략해서 적은것
		
		$("#areaBtn").bind("click", function() {//지역명 클릭 시 밑에 subDiv출력 
			$("#areaDiv").removeClass("hiden");
			$("#subDiv").addClass("hiden");
			$("#ctDiv").addClass("hiden");
			$(".selectActive").removeClass("selectActive");
			$(this).addClass("selectActive");
			cateFrm.cate.value="";
		});
		$("#subBtn").bind("click", function() {//지하철명 클릭 시 밑에 ctDiv출력
			$("#areaDiv").addClass("hiden");
			$("#subDiv").removeClass("hiden");
			$("#ctDiv").addClass("hiden");
			$(".selectActive").removeClass("selectActive");
			$(this).addClass("selectActive");
			cateFrm.cate.value="s";
		});
		$("#ctBtn").bind("click", function() {//카테고리 클릭 시 밑에 ctDiv출력
			$("#areaDiv").addClass("hiden");
			$("#subDiv").addClass("hiden");
			$("#ctDiv").removeClass("hiden");
			$(".selectActive").removeClass("selectActive");
			$(this).addClass("selectActive");
			cateFrm.cate.value="c";
		});
	
		$("#nameSearchBtn").bind("click",searchNameGo); //병원명으로 상세리스트로 검색
		$("#codeSearchedBtn").bind("click",searchkeywdGo); //버튼클릭시 상세리스트로 검색
		
		$("#areaDivMain").on("click","a",searchFunc); //지역 대분류 클릭시 중분류 출력
		$("#areaDivAddr2").on("click","a",arSelectClass); //지역 마지막분류 클릭시 색상변화+값 입력 
		
		$("#subDivMain").on("click","a",searchFunc); //지하철 대분류 클릭시 중분류 출력
		$("#subDivMain2").on("click","a",searchFunc); //지하철 중분류 클릭시 소분류 출력
		$("#subDivMain3").on("click","a",arSelectClass); //지하철 마지막분류 클릭시 색상변화+값 입력 
		
		$("#ctDivMain").on("click","a",searchFunc2); //카테고리 대분류 클릭시 중분류 출력
		$("#ctDivMain2").on("click","a",cateSelectClass); //카테고리 마지막분류 클릭시 색상변화+값 입력 
		
		$("#dataFrm").on("click","input",function(){	//선택한태그버튼(input)을 다시클릭하면 삭제됨
			$(this).remove();
		});
		
		
		function searchNameGo(){
			if($("#hosName").val()==''){
				alert("병원명을 입력하세요.");
			}else{
			document.nameSearchFrm.action="SSearchList.do"
			document.nameSearchFrm.method="post";
			document.nameSearchFrm.submit();
			}
		}
		
		function searchkeywdGo(){
			document.dataInpFrm.action="SSearchList.do"
			document.dataInpFrm.method="post";
			document.dataInpFrm.submit();
		}
	
	
		function cateSelectClass(){
			var pDiv = $(this).closest("div");
			var val = cateFrm.cate.value;
			var thisAttr = $(this).attr("id");
			var thisVal = this.innerHTML;
			
			if($(this).hasClass("selectActive")===true){
				$(this).removeClass("selectActive");
				$("#dataFrm").find('#'+thisAttr)[0].remove();
				$("#dataInpFrm").find('#'+thisAttr)[0].remove();
			}else{
				$(this).addClass("selectActive");
				$("#dataFrm").append("<button type='button' class='btn mar btn-outline-info' id='"+thisAttr+"' name='cateCode' value='"+thisAttr+"'>"+thisVal);
				$("#dataInpFrm").append("<input type='text' class='btn mar btn-outline-info' id='"+thisAttr+"' name='cateCode' value='"+thisAttr+"'>");
			}
			
		};
			
		function arSelectClass(){
				
			var pDiv = $(this).closest("div");
			var val = cateFrm.cate.value;
			var thisAttr = $(this).attr("id");
			var thisVal = this.innerHTML;
			var cur = $(this).hasClass("selectActive");
			pDiv.find("a").removeClass("selectActive");
			$("#dataFrm").find('#areaCode').remove();
			$("#dataInpFrm").find('#areaCode').remove();
			
			if(cur===true){
				$(this).removeClass("selectActive");
			}else{
				$(this).addClass("selectActive");
				$("#dataFrm").append("<button type='button' class='btn mar btn-outline-info' id='areaCode' name='areaCode' value='"+thisAttr+"'>"+thisVal);
				$("#dataInpFrm").append("<input type='text' class='btn mar btn-outline-info' id='areaCode' name='areaCode' value='"+thisAttr+"'>");
			}
			
		};
				
			
		
		function searchFunc(){ //대분류 클릭시 중분류 출력
			var pDiv = $(this).closest("div"); //클릭한 a의 부모div 객체를 찾음
			var pDivId = pDiv.attr("id");//pDiv의 id로 객체확인
			pDiv.find("a").removeClass("selectActive");//자식태그 가져옴
			$(this).addClass("selectActive");
			pDiv = pDiv.next();//부모div에서 그 다음 객체를 찾음
			////////////////////////
			pDiv.removeClass("hiden");
			pDiv.html("");
			pDiv.next().html("");
			$.ajax("/tem3/ajax/LocaseachAjaxCMD.do", {
				dataType : "json",
				data : 
					{pCode : $(this).attr("id"),
					cate : cateFrm.cate.value
					}
			})
				.done(function(data) {
					for (i = 0; i < data.length; i++) {
						console.log(i);
						pDiv.append(
						'<a class="list-group-item list-group-item-action" id='+data[i].locaCode+'>'+ data[i].wd);
						//(자식)appendTo(부모)
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
								'<a class="list-group-item list-group-item-action" id='+data[i].code+'>'+ data[i].wd); //(자식)appendTo(부모)
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
	<form id="nameSearchFrm" name="nameSearchFrm">
		<div class="input-group mb-3 topmg">
				<input type="text" class="form-control"	placeholder="병원명" name="hosName" id="hosName">
				<div class="input-group-append">
					<button class="btn btn-outline-secondary" type="button"
					id="nameSearchBtn">검색</button>
				</div>
		</div>
	</form>

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

	<div id="divall">

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
						<div id="subDivMain2" class="col-4 hiden">
						</div>
						<div id="subDivMain3" class="col-4 hiden">
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
						<div id="ctDivMain2" class="col-4 hiden">
						</div>
						<div id="" class="col-4 hiden">
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
		<div class="row">
			<div id="dataDiv" class="col-9">
				<form id="dataFrm" name="dataFrm">
				
				</form>
			</div>
			<div class="col-3">
				<button type="button" class="btn btn-primary btn-lg fl"	id="codeSearchedBtn" >선택한 조건으로 검색</button>
			</div>
		</div>
		<div class="hiden">
		<form id="dataInpFrm" name="dataInpFrm">
		</form>
		</div>
		<form name="cateFrm" class="hiden"> <!-- 제목에서 지역/지하철 구분 -->
				<input name="cate" id="cate">
				<input name="pCode" id="pCode">
		</form>


	</div>
</body>
</html>