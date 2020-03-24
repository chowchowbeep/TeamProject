<%@page import="lastdto.hosJoinMemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="kimmj.hosDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="/layout/admin_head.jsp"%>
<script>
	$(document).on("click", ".toMasterSearchHoslistHos", function() {
		var hosId = $(this).attr("hos_id");
		console.log(hosId);
		$("#hosId").attr("value", hosId);
		frm.submit();
	});
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
	margin-left: 30px;
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

<%@ include file="/layout/admin_menu.jsp"%>
<jsp:useBean id="dao" class="kimmj.hosDAO" />
<%
request.setCharacterEncoding("UTF-8");
String keyField = request.getParameter("keyField");
String keyWord = request.getParameter("keyWord");
%>
<div class = "card">
	<div class = "card-header text-center">
		<div class = "text-center" style = "padding: 10px 0px 0px 0px">
			<h4>
				<b>회원 관리</b>
			</h4>
		</div>
	</div>
	
	<% 
	ArrayList<hosJoinMemberDTO> list = dao.select();
	for(hosJoinMemberDTO dto : list) { 
	%>
	<div class="card-body">
	<table class = "listbox"
		   onclick = "location.href = 'MSearchHoslistHos.do?hosId=<%= dto.getHosId() %>';">
		<tr>
			<td>
				<ion-icon name="business" size = "large" 
				style = "width: 70px; height: 70px; margin: 0px 0px 10px 20px;"></ion-icon>
				<div class = "name"><b><%= dto.getHosName() %></b></div>
			</td>
			<td class = "info">
				<p><b> 회원 ID: </b><%= dto.getHosId() %></p>
				<p><b> 회원 등급: </b><%= dto.getHosRank() %></p>
				<p><b> 신고 현황: </b><%= dto.getDecNo() %></p>
			</td>
		</tr>
	</table>
	<input type = "hidden" id = "hosId" name = "hosId">
	</div>
</div>
<% } %>

<%@ include file="/layout/all_footer.jsp"%>
</body>
</html>