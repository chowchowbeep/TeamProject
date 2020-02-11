<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 부트스트랩4 -->
<%@ include file="../../0_sick_layout_header.jsp" %>
<script>
	$(function() { //ready == window.load 와 같은 이벤트

		//영업 등록 버튼 클릭 -> (DB) 오픈시간 값 입력&영업상태 값 진료중으로 변경

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
		<h5 class="text-center mar">내가 쓴 리뷰</h5>
		<!-- 리뷰 리스트 생성 -->
		<div class="card text-center" style="margin: 0px 0px 10px 0px">
			<div class="card" style="margin: 5px;">
				<div class="card-header ">병원명</div>
				<div class="card-body text-left">
					<table class="table table-hover" style="border-style: none">
						<tbody>
							<tr>
								<td width="100px">제목</td>
								<td>[제목값]</td>
							</tr>
							<tr>
								<td>내용</td>
								<td>[내용값]</td>
							</tr>
							<tr>
								<td>별점</td>
								<td>[별점]</td>
							</tr>
						</tbody>
					</table>
				</div>

			</div>
		</div>
	</div>
</body>
</html>