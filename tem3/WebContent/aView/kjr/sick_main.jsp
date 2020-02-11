<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../../0_sick_layout_header.jsp" %>
<link rel="stylesheet" href="cssList.css">
</head>
<body>
	<div class="container">

		<div class="card text-center  topmg">
			<div class="card" style="margin: 5px;">
				<div class="card-header text-left">건강정보</div>
				<div class="card-body">
					<h5 class="card-title">Special title treatment</h5>
					<p class="card-text">With supporting text below as a natural
						lead-in to additional content.</p>
					<a href="#" class="btn btn-primary">Go somewhere</a>
				</div>
			</div>
		</div>


		<div class="card text-center" style="margin: 20px 0px;">
			<div class="card-header text-left">병원검색</div>
			<div class="card-body">
				<div class="input-group mb-3">
					<input type="text" class="form-control"
						placeholder="Recipient's username"
						aria-label="Recipient's username" aria-describedby="button-addon2">
					<div class="input-group-append">
						<button class="btn btn-outline-secondary" type="button"
							id="button-addon2">Button</button>
					</div>
				</div>
			</div>
		</div>


		<div class="card text-center">
			<div class="card" style="margin: 5px;">
				<div class="card-header text-left">관심병원</div>
				<div class="card-body">
					
					<table class="table table-hover">
						<thead>
							<tr>
								<th scope="col">★</th>
								<th scope="col">병원명</th>
								<th scope="col">버튼?</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th scope="row">1</th>
								<td>Mark</td>
								<td>접수/예약</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>

		<div class="card mb-3 " style="margin: 20px 0px;">
			<button type="button" class="btn btn-primary btn-lg btn-block">접수증</button>
		</div>

	</div>
</body>
</html>