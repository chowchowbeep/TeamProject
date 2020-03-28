<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/layout/admin_head.jsp"%>
<script src="https://unpkg.com/ionicons@5.0.0/dist/ionicons.js">
<ion-icon name="arrow-back-outline"></ion-icon>
<ion-icon src="/path/to/external/file.svg"></ion-icon>
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
.btn-lg {
	background-color: #ffc107;
	width: 230px;
	height: 100px;
	align: center;
	margin: 40px 70px 10px 70px;
	font-size: 25px;    
}

.ionicon {
	fill: currentColor;
	stroke: currentColor;
}
</style>
<%@ include file="/layout/admin_menu.jsp"%>

	<button type="button" class="btn-lg" onclick="location.href='MSearchNormal.do'">회원 관리</button>
	<br>
	<br>
	<button type="button" class="btn-lg" onclick="location.href='MChart.do'">통계 관리</button>
	<br>
	<br>
	<button type="button" class="btn-lg" onclick="location.href='MPolice.do'">신고 관리</button>
<br>

<%@ include file="/layout/all_footer.jsp"%>
</body>
</html>