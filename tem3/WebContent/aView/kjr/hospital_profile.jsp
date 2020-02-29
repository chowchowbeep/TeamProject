<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<%@ include file="../../layout/sick_head.jsp" %>
<%@ include file="../../layout/sick_menu.jsp" %>
<!-- 마이메뉴 페이지 -->
<!-- 부트스트랩4 -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b450fd1e475fcbb9f2bb640be5a6f4a8"></script>
<script>

</script>
</head>
<body>
	<div class="container" >
		<div class="card mb-8">
			<div id="map" style="width: auto; height: 400px;"></div>
					<!-- 지도담을 영역만들기 -->
					<script>
						var container = document.getElementById('map');
						var options = {
							center : new kakao.maps.LatLng(33.450701,
									126.570667),
							level : 3
						};

						var map = new kakao.maps.Map(container, options);
					</script>


			<form>
				<div class="form-group">
					<label for="hospital_name">병원명 </label>
					<input type="text" class="form-control" id="hospital_name"
						aria-describedby="emailHelp" readonly value="${list.hosName }">
				</div>
				<div class="form-group">
					<label for="hospital_name">병원ID</label> 
					<input type="text" class="form-control" id="phone" readonly value="${list.hosId }">
				</div>

				<div class="form-group">
					<label for="addr">주소</label>
					<div class="input-group mb-3">
						<input type="text" id="addr" class="form-control" placeholder="주소" aria-label="주소" aria-describedby="button-addon2" value="${list.hosAddr }">
						<div class="input-group-append">
							<button class="btn btn-outline-secondary" type="button" id="button-addon2">주소입력</button>
						</div>
					</div>

					<div class="form-group">
						<label for="hospital_name">전화번호</label> 
						<input type="text" class="form-control" id="phone" value="${list.hosPhone }">
					</div>

					<div class="form-group">
						<label for="hospital_name">사업자등록번호</label>
						<div></div>
						<input type="text" class="form-control" id="phone" value="${list.hosBizno }">
					</div>

					<div class="row">
						<div class="col-sm">
							<div class="form-group">
								<label for="hospital_name">영업시작시간</label>
								<div>
									<select class="form-control">
									<c:forEach items="a"> 
										
									</c:forEach>
										<option>06:00
										<option>06
										<option>07
										<option>07
										<option>08
										<option>08
										<option>09
										<option>09
										<option>10
										<option>10
										<option>11
										<option>12
										<option>
										<option>
										<option>
										<option>
										<option>
										<option>
										<option>
										<option>
										<option>
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