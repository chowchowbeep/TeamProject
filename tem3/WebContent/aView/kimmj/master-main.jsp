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

.info-box-text {
	font-size: 25px;
	align: center;
	margin-top: 10px;
}

.info-box {
	width: 200px;
	margin-left: 75px;
	margin-right: 75px;
	margin-top: 100px;
}

.info-box-two {
	width: 200px;
	margin-left: 75px;
	margin-right: 75px;
	margin-top: 50px;
}

.big {
	margin-bottom: 150px;
}
</style>
<%@ include file="/layout/admin_menu.jsp"%>

<div class="big">
     <div class="col-12 col-sm-6 col-md-3" onclick="location.href='MSearchNormal.do'">
            <div class="info-box mb-3">
              <span class="info-box-icon bg-warning elevation-1"><i class="fas fa-users"></i></span>
              <div class="info-box-content">
                <span class="info-box-text"><b>회원 관리</b></span>
              </div>
            </div>
          </div>

          
	<div class="col-12 col-sm-6 col-md-3" onclick="location.href='MPolice.do'">
            <div class="info-box mb-3">
              <span class="info-box-icon bg-info elevation-1"><i class="fas fa-cog"></i></span>
              <div class="info-box-content">
                <span class="info-box-text"><b>신고 관리</b></span>
              </div>
            </div>
          </div>
</div>
 
          

<%@ include file="/layout/all_footer.jsp"%>
</body>
</html>