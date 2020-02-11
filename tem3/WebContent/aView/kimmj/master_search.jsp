<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/0_admin_layout_header.jsp"%>
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
	height: 10px;
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
}

.info-box-content {
	margin: 13px 0px 0px 0px;
	text-align: center;
}

.type {
	margin-top: 20px;
	width: 270px;
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
<div class="type">
	<div class="info-box-small">
		<span class="info-box-content"> 회원 유형 </span>
	</div>
	<span class="select"> 
		<input type="radio" name="type" value="all" checked>&nbsp;전체 &nbsp;&nbsp;
		<input type="radio" name="type" value="standard">&nbsp;일반 &nbsp;&nbsp;
		<input type="radio" name="type" value="hospital">&nbsp;병원
	</span>
</div>

</div>
</aside>
</body>
</html>