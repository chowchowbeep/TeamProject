<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 부트스트랩4 -->
<%@ include file="../../layout/sick_head.jsp" %>
<%@ include file="../../layout/sick_menu.jsp" %>
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
<link rel="stylesheet" href="cssList.css">
<script>
	$(function() { //ready == window.load 와 같은 이벤트

		//영업 등록 버튼 클릭 -> (DB) 오픈시간 값 입력&영업상태 값 진료중으로 변경
	
		$("#btnDiv").on("click","button",function(){
			var btnId = $(this).attr("id");
			clickBtnFunc(btnId)
		});
		
		function clickBtnFunc(btnId){
			if(btnId==="startBtn"){
				console.log("if에서 startBtn");
			}else if(btnId==="endBtn"){
				console.log("if에서 endBtn");
			}
			
			//ajax로 update처리하기 
			$.ajax({
				url:"",
				data:{bizStt:btnId},
			})
		}
		//영업 마감 버튼 클릭 -> (DB) 마감시간 값 입력&영업상태 값 마감으로 변경

		//접수신청순으로 전부 출력(진료신청번호, 이름, (접-도착예정시간)(예-예약시간),의사)

		//SYSDATE의 예약시간순으로 당일진료리스트 출력 (타이머가능하면 사용 )
		//예약시간이 지났음에도 도착하지않은경우 취소상태로 변경시킬수있었으면좋겠다.

	})
</script>
<style>
	.mar{
		margin: 10px 0px;
	}
	
</style>
</head>
<body>
	<div class="container">
		<div class="row" id="btnDiv">
			<div class="col-sm mar">
				<button type="button" class="btn btn-primary btn-lg btn-block" id="startBtn">영업등록</button>
			</div>
			<div class="col-sm mar">
				<button type="button" class="btn btn-primary btn-lg btn-block" id="endBtn">영업마감</button>
			</div>
		</div>
<div class="row">
	<div class="col-sm">
			<div class="card text-center" style="margin:0px 0px 10px 0px">
				<div class="card" style="margin: 5px;">
					<div class="card-header text-left">접수현황</div>
					<div class="card-body">
						<table class="table table-hover">
							<thead>
								<tr>
									<th scope="col">#</th>
									<th scope="col">이름(ID)</th>
									<th scope="col">예상도착시간</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th scope="row">1</th>
									<td>Mark</td>
									<td>10분뒤</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
	</div>
	<div class="col-sm">
			<div class="card text-center">
				<div class="card" style="margin: 5px;">
					<div class="card-header text-left">예약현황</div>

					<div class="card-body">
						<table class="table table-hover">
							<thead>
								<tr>
									<th scope="col">#</th>
									<th scope="col">이름(ID)</th>
									<th scope="col">예약시간</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th scope="row">1</th>
									<td>Mark</td>
									<td>10:00</td>
								</tr>
							</tbody>
						</table>
					</div>

				</div>
			</div>
</div>
</div>
		</div>
</body>
</html>