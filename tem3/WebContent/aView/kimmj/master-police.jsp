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
	height: 140px;
	border: solid 1px;
	margin-left: 30px;
	padding: 10px;
	text-align: center;
}

.name {
	font-size: 20px;
	margin-left: 30px;
}

.info {
	padding: 10px;
}
.listbox2 {
	width: 270px;
	height: 140px;
	border: solid 1px;
	margin-left: 50px;
	margin-bottom: 30px;
	padding: 10px;
	text-align: center;
	background-color: #EAEAEA;
	color: #747474;
}

</style>

<%@ include file="/layout/admin_menu.jsp"%>

<div class = "card">
	<div class = "card-header text-center">
		<div class = "text-center" style = "padding: 10px 0px 0px 0px">
			<h4>
				<b>신고 관리</b>
			</h4>
		</div>
	</div>
	<div class="card-body">
	<table class = "listbox">
		<tr>
			<td class = "info">
				<b> 회원 ID: </b>sunamanse
			</td>
		</tr>
		<tr>
			<td class = "info">
				<b> 신고일자 </b>2020. 02. 16
			</td>
		</tr>
		<tr>
			<td class = "info">
				<b> 신고 대상 병원: </b>예담병원
			</td>
		</tr>
	</table>
	</div>
	<br>
	<table class = "listbox2">
		<tr>
			<td class = "info">
				<b> 회원 ID: </b>sunamanse
			</td>
		</tr>
		<tr>
			<td class = "info">
				<b> 신고일자 </b>2020. 02. 16
			</td>
		</tr>
		<tr>
			<td class = "info">
				<b> 신고 대상 병원: </b>예담병원
			</td>
		</tr>
	</table>
</div>

<%@ include file="/layout/all_footer.jsp"%>
</body>
</html>