<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/0_admin_layout_header.jsp"%>
<script src="https://unpkg.com/ionicons@5.0.0/dist/ionicons.js"></script>
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
	padding: 5px;
}

.info-box-content {
	margin: 13px 0px 0px 0px;
	text-align: center;
}

.listbox {
	width: 270px;
	height: 200px;
	border: solid 1px;
	align: center;
	margin-left: 50px;
	padding: 10px;
}

.name {
	font-size: 20px;
	margin-left: 30px;
}

.info {
	padding: 10px;
}

</style>

<%@ include file="/0_admin_layout_topMenu.jsp"%>

<div class="col-md-4" align="center">
	<div class="info-box mb-3">
		<div class="info-box-content">
			<span class="info-box-text"> <b>회원 관리</b></span>
		</div>
	</div>
</div>

<table cellpadding = "5px" class = "listbox">
	<tr>
		<td>
			<ion-icon name="person-circle-outline" size = "large" 
			style = "width: 100px; height: 100px; margin: 0px 0px 10px 10px;"></ion-icon>
			<div class = "name"><b> 조선아 </b></div>
		</td>
		<td class = "info">
			<p><b> 회원 ID: </b>sunamanse </p>
			<p><b> 회원 등급: </b>일반 </p>
			<p><b> 연락처: </b>010-8401-0523 </p>
			<p><b> 주소: </b>대구광역시 중구 상서로 예담직업전문학교 </p>
		</td>
	</tr>
	<tr>
		<td colspan = "2"> <b>&nbsp;&nbsp;&nbsp;패널티 현황: </b>0회
		</td>
	</tr>
	<tr>
		<td colspan = "2"> <b>&nbsp;&nbsp;&nbsp;신고 현황: </b>2회<br>
						   · 과잉 진료 신고(2020.01.11)<br>
						   · 빻은 의사 신고(2020.02.05)
		</td>
	</tr>
	<tr>
		<td colspan = "2"> <b>&nbsp;&nbsp;&nbsp;리뷰 현황: </b>1회<br>
						   · 서나의원 리뷰(2020.01.07)<br>
		</td>
	</tr>
</table>




</div>
</aside>
</body>
</html>