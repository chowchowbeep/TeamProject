<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 마이메뉴 페이지 -->
<!-- 부트스트랩4 -->

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<script src=" https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
	integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
	crossorigin="anonymous"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script>
	$(function()    

	});
</script>

</head>
<body>
	<div class="container" >
		<div class="card mb-8">
			<img src="img/캡처.PNG" style="max-width: 100%; max-height: 30%;"
				class="card-img" alt="프로필사진">


			<form>
				<div class="form-group">
					<label for="hospital_name">병원명 </label><input type="text"
						class="form-control" id="hospital_name"
						aria-describedby="emailHelp">
				</div>
				<div class="form-group">
					<label for="hospital_name">병원ID</label> <input type="text"
						class="form-control" id="phone">
				</div>

				<div class="form-group">
					<label for="hospital_name">병원PW</label> <input type="text"
						class="form-control" id="phone">
				</div>


				<div class="form-group">
					<label for="addr">주소</label>
					<div class="input-group mb-3">
						<input type="text" id="addr" class="form-control" placeholder="주소"
							aria-label="주소" aria-describedby="button-addon2">

						<div class="input-group-append">
							<button class="btn btn-outline-secondary" type="button"
								id="button-addon2">주소입력</button>

						</div>

					</div>

					<div class="form-group">
						<label for="hospital_name">전화번호</label> <input type="text"
							class="form-control" id="phone">
					</div>

					<div class="form-group">
						<label for="hospital_name">사업자등록번호</label>
						<div></div>
						<input type="text" class="form-control" id="phone">
					</div>

					<div class="row">
						<div class="col-sm">
							<div class="form-group">
								<label for="hospital_name">영업시작시간</label>
								<div>
									<select class="form-control">
										<option>06:00
										<option>06:3
										<option>07:0
										<option>07:3
										<option>08:0
										<option>08:3
										<option>09:0
										<option>09:3
										<option>10:0
										<option>10:3
										<option>11:0
										<option>11:3
										<option>12:0
										<option>12:3
										<option>13:0
										<option>13:3
										<option>14:0
										<option>15:0
										<option>16:0
										<option>17:0
										<option>18:0
										<option>19:0
										<option>20:0
										<option>21:0
										<option>22:0
										<option>23:0
										<option>24:0
									</select>
								</div>

							</div>
						</div>
						<div class="col-sm">
							<div class="form-group">
								<label for="hospital_name">영업마감시간</label>
								<div>
									<select class="form-control">
										<option>Default select</option>
										
										
										
									</select>
								</div>
							</div>
						</div>
					</div>
				</div>
				<button type="submit" class="btn btn-primary btn-lg btn-block" >수정완료</button>
			</form>
		</div>

	</div>
</body>
</html>