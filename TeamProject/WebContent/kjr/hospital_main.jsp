<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 부트스트랩4 -->
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
<script>
	$(function() { //ready == window.load 와 같은 이벤트

		//영업 등록 버튼 클릭 -> (DB) 오픈시간 값 입력&영업상태 값 진료중으로 변경

		//영업 마감 버튼 클릭 -> (DB) 마감시간 값 입력&영업상태 값 마감으로 변경

		//접수신청순으로 전부 출력(진료신청번호, 이름, (접-도착예정시간)(예-예약시간),의사)

		//SYSDATE의 예약시간순으로 당일진료리스트 출력 (타이머가능하면 사용 )
		//예약시간이 지났음에도 도착하지않은경우 취소상태로 변경시킬수있었으면좋겠다.

	})
</script>
</head>
<body>
	<div class="container" style="width: 45rem;">
		<div class="row" style="margin: auto">
			<div class="col-sm">
				<button class="btn-block">영업등록</button>
			</div>
			<div class="col-sm">
				<button class="btn-block">영업마감</button>
			</div>
		</div>
	</div>
	<div class="container">
		<div style="padding: 10px 0px"></div>
		<div class="row" style="margin: auto">
			<div class="col-sm">
				<!-- 당일접수 신청 리스트 -->
				<table>
					<thead>
						<tr >
							<th>이름(ID)</th>
							<th>예상도착시간</th>
						</tr>
					</thead>
					<tbody>
					</tbody>
					<tfoot>
					</tfoot>
				</table>

			</div>
			<div class="col-sm">
				<!-- 예약 신청한 당일진료 리스트 -->
				<table>
					<thead>
						<tr>
							<th>이름(ID)</th>
							<th>예약시간</th>
						</tr>
					</thead>
					<tbody></tbody>
					<tfoot></tfoot>
				</table>
			</div>
		</div>
	</div>
</body>
</html>