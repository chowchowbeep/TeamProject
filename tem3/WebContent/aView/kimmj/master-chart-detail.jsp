<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/layout/admin_head.jsp"%>
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

.listbox {
	width: 270px;
	height: 140px;
	margin-left: 30px;
	padding: 10px;
	text-align: center;
}
</style>

<%@ include file="/layout/admin_menu.jsp"%>

<div class="card">
	<div class="card-header text-center">
		<div class="text-center" style="padding: 10px 0px 0px 0px;">
			<h4>
				<b>통계 관리</b>
			</h4>
		</div>
	</div>
</div>

<%@ include file="/layout/all_footer.jsp"%>
</body>
</html>