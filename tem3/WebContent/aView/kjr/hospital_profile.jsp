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
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	$(function(){
		$("#addrBtn").on("click",function(){
			new daum.Postcode({
		        oncomplete: function(data) {
		        	var addr = data.address;
		        	document.getElementById("addr").value = addr;
		            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.
		            // 예제를 참고하여 다양한 활용법을 확인해 보세요.
		        }
		    }).open();
			
		})
		
		$("#bizTimeBtn").on("click",function(){
			$("#addrDiv1").addClass('hiden');
			$("#addrDiv2").removeClass('hiden');
		});
		$("#timeCencle").on("click",function(){
			$("#addrDiv2").addClass('hiden');
			$("#addrDiv1").removeClass('hiden');
		});
		
		
	})//펑션닫음 ㅎ 
	    
	</script>

</head>
<style>
.hiden{
	 display: none;
}
  .topMar { margin:10px };
</style>
<body>
<div class="content-wrapper">
	<div class="container topMar">
		<div class="card text-center">
			<div class="card" style="margin: 5px;">
				<div class="card-header text-center"><strong>회원정보 확인 페이지</strong></div>
				<div class="card-body text-left">
					<!-- form시작 -->
					<!-- forms tart -->
					<form name="frm" id="frm" action="HhosModifyCMD.do" method="post" class="form-horizontal">
					<div class="card-body">
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
							<div class="form-group row col-sm-10">
								<label for="callSicId" class="col-sm-2 col-form-label">병원명</label>
									<input type="text" class="form-control" id="hosName" name="hosName"	value="${list.hosName }">
							</div>
							<div class="form-group row">
								<label for="callSicName" class="col-sm-2 col-form-label">병원ID</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="hosId" name="hosId"	value="${list.hosId }" disabled>
								</div>
							</div>
							<div class="form-group row">
								<label for="callSicName" class="col-sm-2 col-form-label">비밀번호</label>
								<div class="col-sm-10">
									<input type="password" class="form-control" id="hosPw" name="hosPw" value="${list.hosPw }">
								</div>
							</div>
							<div class="form-group row">
								<label for="callSicName" class="col-sm-2 col-form-label">주소 </label>
									<div class="input-group col-sm-10">
								  	<input type="text" class="form-control" id="addr" name="addr" value="${list.hosAddr }">
								  <div class="input-group-append">
								    <button class="btn btn-outline-secondary" type="button" id="addrBtn">주소입력</button>
								  </div>
								</div>
							</div>
							
		
							<div class="form-group row">
								<label for="checkSicStt" class="col-sm-2 col-form-label">전화번호</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="hosPhone" name="hosPhone"
										value="${list.hosPhone }">
								</div>
							</div>
							<div class="form-group row">
								<label for="checkSicStt" class="col-sm-2 col-form-label">사업자등록번호</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="hosBizno" name="hosBizno"
										value="${list.hosBizno }">
								</div>
							</div>
						
							<div class="" id="addrDiv1">
								<div class="form-group row">
									<label for="callSicName" class="col-sm-2 col-form-label">영업시간 </label>
										<div class="input-group col-sm-10">
									  	<input type="text" class="form-control" id="hosBizTime" value="${list.hosBizTime }" disabled="disabled">
									  <div class="input-group-append">
									    <button class="btn btn-outline-secondary" type="button" id="bizTimeBtn">시간변경</button>
									  </div>
									</div>
								</div>
							</div>
							
							<div class="hiden" id="addrDiv2">
								<div class="form-group row">
									<div class="col-6">
										<label for="start" class="col-sm-10">영업시작시간</label> 
										<div class="col-sm-10">
											<select	class="form-control" id="start" name="start">
												<option value="00" selected> </option>
												<c:forEach var="i" begin="06" end="18" step="1">
													<c:forEach var="m" begin="00" end="04" step="3">
														<option>${i}:${m}0</option>
													</c:forEach>
												</c:forEach>
											</select>
										</div>
									</div>							
									<div class="col-6">
										<label for="hospital_name" class="col-sm-10">영업마감시간</label> 
										<div class="col-sm-10">
											<select	class="form-control"  id="end" name="end">
												<option value="00" selected> </option>
												<c:forEach var="i" begin="00" end="24" step="1">
													<c:forEach var="m" begin="00" end="04" step="3">
														<option>${i}:${m}0</option>
													</c:forEach>
												</c:forEach>
											</select>
										</div>
									</div>
								</div>
						<div class="text-center">
							<button type="button" class="btn btn-secondary" id="timeCencle">취소</button>
						</div>
						</div>	
							
						</div>
						<!-- /.card-body -->
						<!-- /.card-footer -->
					</form>
					<!-- form종료 -->
				</div>
			</div>
			<div class="card-footer  text-center">
				<button type="submit" class="btn btn-secondary">수정하기</button>
			</div>
		</div>
		<!-- CARD종료 -->
		
	</div>
	<!-- 컨테이너종료 -->
</div>
<%@ include file="../../layout/all_footer.jsp"%>
</body>
</html>