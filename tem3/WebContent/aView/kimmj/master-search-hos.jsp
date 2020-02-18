<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/layout/admin_head.jsp"%>
<script>
	function search_click() {
		document.searchFrm.action="MSearchHoslist.do";
		document.searchFrm.method="post";
		document.searchFrm.submit();
	}
</script>
<style type="text/css">/* Chart.js */
@
keyframes chartjs-render-animation {
	from {opacity: .99
}

to {
	opacity: 1
}

}
.chartjs-render-monitor {
	animation: chartjs-render-animation 1ms
}

.chartjs-size-monitor, .chartjs-size-monitor-expand,
	.chartjs-size-monitor-shrink {
	position: absolute;
	direction: ltr;
	left: 0;
	top: 0;
	right: 0;
	bottom: 0;
	overflow: hidden;
	pointer-events: none;
	visibility: hidden;
	z-index: -1
}

.chartjs-size-monitor-expand>div {
	position: absolute;
	width: 1000000px;
	height: 1000000px;
	left: 0;
	top: 0
}

.chartjs-size-monitor-shrink>div {
	position: absolute;
	width: 200%;
	height: 200%;
	left: 0;
	top: 0
}

.info-box {
	width: 270px;
	height: 20px;
	text-align: center;
	border: solid 1px;
	font-size: 20px;
	margin-top: 15px;
}

.info-box-small {
	width: 100px;
	height: 30px;
	border: solid 1px;
	text-align: center;
	margin-left: 30px;
	margin-right: 10px;
	padding: 7px;
	border-radius: 5%;
	background-color: #E0F2F7;
}

.info-box-content {
	margin: 13px 0px 0px 0px;
	text-align: center;
}

.type {
	margin-top: 20px;
	width: 350px;
}

.info-box-box {
	height: 30px;
}

.detail {
	margin-top: 50px;
}

.list {
	margin-left: 30px;
	margin-top: 30px;
}

.listof {
	margin: 20px 10px 15px 25px;
	height: 30px;
}

.listof2 {
	margin: 20px 10px 15px 10px;
	height: 30px;
}

.listof3 {
	margin: 20px 10px 15px 5px;
	height: 30px;
}

.btn {
	width: 150px;
	height: 60px;
	font-size: 18px;
	margin: 60px 0px 0px 110px;
}

.input {
	margin-left: 135px;
}

</style>

<%@ include file="/layout/admin_menu.jsp"%>
<form>
<div class = "card">
	<div class = "card-header text-center">
		<div class = "text-center" style = "padding: 10px 0px 0px 0px">
			<h4>
				<b>회원 관리</b>
			</h4>
		</div>
	</div>
	<div class="card-body">
		<div class="type">
		<span class="info-box-small"> 
		<span class="info-box-content"> 회원 유형 </span>
		</span>
		<span class="info-box-box"> 
			&nbsp;&nbsp;&nbsp;
		<input type="radio" name="gener" value="standard" onclick="location.href='master-search-normal.jsp';">&nbsp;일반 &nbsp;&nbsp;&nbsp;
		<input type="radio" name="gener" value="hospital">&nbsp;병원
		</span>
		<br><br>
	</div>
	<div class="type">
		<span class="info-box-small"> 
		<span class="info-box-content"> 회원 등급 </span>
		</span>
		<span class="info-box-box"> 
			&nbsp;&nbsp;&nbsp;
		<input type="radio" name="ckck" value="all" checked>&nbsp;전체 &nbsp;&nbsp;&nbsp;
		<input type="radio" name="ckck" value="standard">&nbsp;우수 &nbsp;&nbsp;&nbsp;
		<br><br>
		<input type="radio" name="ckck" value="hospital" class = "input">&nbsp;일반 &nbsp;&nbsp;&nbsp;
		<input type="radio" name="ckck" value="hospital">&nbsp;제재
		</span>
		<br>
	</div>
	<div class = "detail">
		<span class = "info-box-small">
		<span class = "info-box-content"> 상세 검색 </span>
		</span>
	</div>
	<div class = "list">
		<span class = "listof"> 병원명&nbsp;&nbsp;&nbsp;
		<input type = "text"> </span>
	</div>
	<div class = "list">
		<span class = "listof2"> 전화번호&nbsp;&nbsp;&nbsp;
		<input type = "text"> </span>
	</div>
	<div class = "search">
		<button type = "submit" class = "btn btn-block btn-warning"><b>검색</b></button>
	</div>
</div>
</div>
</form>
<%@ include file="/layout/all_footer.jsp"%>
</body>
</html>