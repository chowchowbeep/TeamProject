<%@page import="lastdto.declarationDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="kimmj.decDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/layout/admin_head.jsp"%>
 <script language="javascript">
 	function popup() {
 		alert('신고 처리가 완료되었습니다');
 		//var url = "decPOPUP.html";
 		//var name = "decpop";
 		//var option = "width = 270px, height = 50px, top = 150px, location = no, toolbar = no, menubar = no, directories = no, status = no";
 		//window.open(url, name, option);
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
.btn {
	width: 150px;
	height: 60px;
	font-size: 18px;
	margin-left: 90px;
}

</style>

<%@ include file="/layout/admin_menu.jsp"%>
<jsp:useBean id="dao" class="kimmj.decDAO"/>
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
				<b> 회원 ID: </b>${dto.sicId}
			</td>
		</tr>
		<tr>
			<td class = "info">
				<b> 신고 대상 병원: </b>${dto.hosId}
			</td>
		</tr>
		<tr>
			<td class = "info">
				<b> 신고일자: </b>${dto.decDttm}
			</td>
		</tr>
		<tr>
			<td class = "info">
				<b> 신고 내용: </b>${dto.decCont}
			</td>
		</tr>
	</table>
	<br>
	<br>
	<br>
	<br>
	<br>
	<div>
		<button type = "button" class = "btn btn-block btn-warning"
		onclick = "manageDec()"> 
		<b>처리</b> </button>
		<button type = "button" class = "btn btn-block btn-warning"
		onclick = "location.href = 'MPolice.do';"> <b>목록</b> </button>
	</div>
	</div>
</div>
<script>
var decNo = '${dto.decNo}';
console.log(decNo);
var hosId = '${dto.hosId}';
console.log(hosId);

	function manageDec() {
		$.ajax({
			type : "POST",
			url : "ajax/MPoliceDetailTwo.do",
			dataType : "json",
			data : {
				"p_no" : decNo,
				"hos_id" : hosId
			},
			success : function(result) {
				console.log(result+"rows DML완료");
				alert("신고 처리 완료")
			}
		})
	}
</script>
<%@ include file="/layout/all_footer.jsp"%>
</body>
</html>