<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Insert title here</title>

<%@ include file="../../0_sick_layout_header.jsp" %>


<style> 
	div .hiden{display:none}
</style>


<script>
$(function() { //window load이벤트 생략해서 적은것
	
	$("#areaBtn").bind("click",function(){//지역버튼>지역명 클릭 시 밑에 subDiv출력 
		$("#areaDiv").removeClass("hiden");
		$("#subDiv").addClass("hiden");
		$("#ctDiv").addClass("hiden");
	
	});
	$("#subBtn").bind("click",function(){//지역버튼>지역명 클릭 시 밑에 ctDiv출력
		$("#areaDiv").addClass("hiden");
		$("#subDiv").removeClass("hiden");
		$("#ctDiv").addClass("hiden");
	
	});
	$("#ctBtn").bind("click",function(){//지역버튼>지역명 클릭 시 밑에 ctDiv출력
		$("#areaDiv").addClass("hiden");
		$("#subDiv").addClass("hiden");
		$("#ctDiv").removeClass("hiden");
	});
	

	$("#areaDivMain").bind("click", function() { //지역 대분류 클릭시 중분류 출력
			$("#areaDivAddr2").removeClass("hiden");
			$("#areaDivAddr2").html("");
			console.log("aa");
			$.ajax("test.jsp", {
				dataType : "json" //json데이터를 받아올때 그 파일엔 json데이터값만 있어야함. 
			}).done(function(data) {
				for(i=0;i<data.length;i++){
					console.log(i);
				$("#areaDivAddr2").append('<a class="list-group-item list-group-item-action" id="LS00">'+data[i].name); //(자식)appendTo(부모)
				};
				$("#areaDivAddr2").append( $("<button>").addClass("btn btn-primary btn-lg btn-block").html("카테고리 선택") );
				$("#areaDivAddr2").append( $("<button>").addClass("btn btn-primary btn-lg btn-block").html("이 조건으로 검색") );
			});
		});
	
	
	});
</script>
 
</head>
<body>
	
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
			<div class="mb-3 col" style="margin: 20px 0px;">
				<button type="button" class="btn btn-primary btn-lg btn-block" 
				data-toggle="dropdown" data-activates='dropdown1'
				id="area">지역</button>
				
				<div class="dropdown-menu"  id='dropdown1' class='dropdown-content'>
					 <a class="dropdown-item" href="#" id="areaBtn">지역명</a>
					 <a class="dropdown-item" href="#" id="subBtn">지하철명</a>
				</div>
			</div>
			<div class="mb-3 col" style="margin: 20px 0px;">
				<button type="button" class="btn btn-primary btn-lg btn-block" id="ctBtn">카테고리</button>
			</div>
		</div>



		<div id="areaDiv" class="hiden"><!-- 지역 -->
			<div class="row" id="">
				<div id="areaDivMain" class="col-4">
					<a class="list-group-item list-group-item-action" id="LS00">서울</a>
					<a class="list-group-item list-group-item-action" id="LB00">부산</a>
					<a class="list-group-item list-group-item-action" id="LD00">대구</a>
				</div>

				<div id="areaDivAddr2" class="col-4 hiden">
				</div>
				<div id="btnDiv" class="col-4 hiden">	
					<button type="button" class="btn btn-primary btn-lg btn-block">카테고리 선택</button>
					<button type="button" class="btn btn-primary btn-lg btn-block">이 조건으로 검색</button>
				</div>


			</div>














		</div><!-- 지역종료 -->





















		<div id="subDiv" class="hiden" ><!-- 지하철 -->
		asub
		</div>
		
		<div id="ctDiv" class="hiden" ><!--카테고리  -->
		actaaaa
		</div>
		
		
		
		
	</div>
	<%@ include file="../../0_all_layout_footer.jsp" %>
</body>
</html>