<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<%@ include file="../../layout/hos_head.jsp"%>
<%@ include file="../../layout/hos_menu.jsp"%>
<!-- 마이메뉴 페이지 -->
<!-- 부트스트랩4 -->
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b450fd1e475fcbb9f2bb640be5a6f4a8"></script>
<script>
	(function() {
		'use strict';
		window.addEventListener('load', function() {
			// Fetch all the forms we want to apply custom Bootstrap validation styles to
			var forms = document.getElementsByClassName('needs-validation');
			// Loop over them and prevent submission
			var validation = Array.prototype.filter.call(forms, function(form) {
				form.addEventListener('submit', function(event) {
					if (form.checkValidity() === false) {
						event.preventDefault();
						event.stopPropagation();
					}
					form.classList.add('was-validated');
				}, false);
			});
		}, false);
	})();
</script>
</head>
<body>
	<div class="container">
		<div class="card mb-8">
			<form class="needs-validation">
			<div id="map" style="width: auto; height: 400px;"></div>
			<!-- 지도담을 영역만들기 -->
			<script>
				var container = document.getElementById('map');
				var options = {
					center : new kakao.maps.LatLng(33.450701, 126.570667),
					level : 3
				};

				var map = new kakao.maps.Map(container, options);
			</script>
	

			<div class="form-group">
				<label for="hospital_name">병원명 </label> 
				<input type="text"	class="form-control" id="hospital_name"	aria-describedby="emailHelp" readonly value="${list.hosName }">
			</div>
			<div class="form-group">
				<label for="hospital_name">병원ID</label> <input type="text"	class="form-control" id="phone" readonly value="${list.hosId }">
			</div>
			
			<div class="form-group">
				<label for="addr">주소</label>
				<div class="input-group mb-3">
					<input type="text" id="addr" class="form-control needs-validation"	placeholder="주소" aria-label="주소" aria-describedby="button-addon2"	value="${list.hosAddr }" required>
					<div class="input-group-append">
						<button class="btn btn-outline-secondary" type="button"	id="button-addon2">주소입력</button>
					</div>
				</div>
			</div>
				
			<div class="form-group">
				<label for="hospital_name">전화번호</label>
				<div class="form-row text-center">
						<div class="col-md-3 mb-3">
							<input type="text" class="form-control needs-validation" id="phone1" value="${list.hosPhone }" required>
						</div>
						<div class="col-md-1 mb-3">-</div>
						<div class="col-md-3 mb-3">
							<input type="text" class="form-control needs-validation" id="phone2" value="${list.hosPhone }" required>
						</div>
						<div class="col-md-1 mb-3">-</div>
						<div class="col-md-3 mb-3">
							<input type="text" class="form-control needs-validation" id="phone3" value="${list.hosPhone }" required>
						</div>
				</div>
			</div>
			<div class="form-group">
				<label for="hospital_name">사업자등록번호</label> 
				<input type="text"	class="form-control " id="phone" value="${list.hosBizno }" required>
			</div>
			
			<div class="row">
				<div class="col-sm">	
					<div class="form-group">
						<label for="hospital_name">영업시작시간</label> 
						<select	class="form-control">
							<c:forEach var="i" begin="06" end="18" step="1">
								<c:forEach var="m" begin="00" end="04" step="3">
									<option>${i}:${m}0</option>
								</c:forEach>
							</c:forEach>
						</select>
					</div>
				</div>
				
				<div class="col-sm">
					<div class="form-group">
						<label for="hospital_name">영업마감시간</label> 
						<select class="form-control">
							<c:forEach var="i" begin="06" end="18" step="1">
								<c:forEach var="m" begin="00" end="04" step="3">
									<option>${i}:${m}0</option>
								</c:forEach>
							</c:forEach>
						</select>
					</div>
				</div>
			</div>
			<button type="submit" class="btn btn-primary btn-lg btn-block">수정완료</button>
			</form>
		</div>
	</div>

</body>
</html>