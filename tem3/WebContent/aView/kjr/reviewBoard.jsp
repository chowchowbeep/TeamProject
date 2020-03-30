<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../../layout/sick_head.jsp" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	
</script>
</head>
<body>
<div class="card" style="margin: 5px;">
              <div class="card-header">
                <h3 class="card-title">리뷰페이지</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table class="table table-bordered">
                  <thead>                  
                    <tr>
                      <th>이름</th>
                      <th>리뷰 내용</th>
                      <th>별점</th>
                    </tr>
                  </thead>
                  <tbody>
                  	<c:if test="${empty dto}">
                  		<tr>
                  			<td colspan="3" align="center" > 작성된 리뷰가 없습니다.</td>
                  		</tr>
                  	</c:if>
                  	<c:forEach items="${dto }" var="list">
                  		<tr>
                  			<td style="box-sizing:initial;text-align: center;">${list.hosName }</td>
                  			<td >${list.rvCont }</td>
                  			<td style="text-align: center;">
                  				<c:choose>
	                         		<c:when test="${list.starPoint eq '1' }">
	                         			<img src="images/star-on-small.png">
	                         			<img src="images/star-off-small.png">
	                         			<img src="images/star-off-small.png"><br>
	                         			<img src="images/star-off-small.png">
	                         			<img src="images/star-off-small.png">
	                         		</c:when>
	                         		<c:when test="${list.starPoint eq '2' }">
										<img src="images/star-on-small.png">
	                         			<img src="images/star-on-small.png">
	                         			<img src="images/star-off-small.png"><br>
	                         			<img src="images/star-off-small.png">
	                         			<img src="images/star-off-small.png">									
									</c:when>
	                         		<c:when test="${list.starPoint eq '3' }">
										<img src="images/star-on-small.png">
										<img src="images/star-on-small.png">
	                         			<img src="images/star-on-small.png"><br>
	                         			<img src="images/star-off-small.png">
	                         			<img src="images/star-off-small.png">
									</c:when>
	                         		<c:when test="${list.starPoint eq '4' }">
	                         			<img src="images/star-on-small.png">
	                         			<img src="images/star-on-small.png">
										<img src="images/star-on-small.png"><br>
	                         			<img src="images/star-on-small.png">
	                         			<img src="images/star-off-small.png">
	                         		</c:when>
	                         		<c:when test="${list.starPoint eq '5' }">
	                         			<img src="images/star-on-small.png">
	                         			<img src="images/star-on-small.png">
	                         			<img src="images/star-on-small.png"><br>
										<img src="images/star-on-small.png">
	                         			<img src="images/star-on-small.png">
									</c:when>
	                         		<c:otherwise>
	                         			<img src="images/star-off-small.png">
	                         			<img src="images/star-off-small.png">
	                         			<img src="images/star-off-small.png"><br>
	                         			<img src="images/star-off-small.png">
	                         			<img src="images/star-off-small.png">
	                         		</c:otherwise>
		                         </c:choose>
                  			</td>
                  		</tr>
                  	</c:forEach>
                  </tbody>
                </table>
			<br>
			<button type="button" class="btn btn-secondary btn-lg" id="write"	onclick="parent.location.href='SReviewWrite.do?hosId=${param.hosId}'">글쓰기</button>
			<ul class="pagination pagination-sm m-0 float-right">
				<c:if test="${proIF }">
					<li class="page-item"><a class="page-link"
						href="SreviewBoardCMD.do?currentPage=${vo.progress }&hosId=${param.hosId}&nowblock=${vo.nowblock-1}">&laquo;</a></li>
				</c:if>
				<c:forEach begin="${vo.btnStart }" end="${vo.btnStart+vo.displayPage-1 }" step="1"
					var="i">
					<c:if test="${i<=vo.totalPage  }">
						<li class="page-item"><a class="page-link"
							href="SreviewBoardCMD.do?currentPage=${i }&hosId=${param.hosId}&nowblock=${vo.nowblock}">${i }</a></li>
					</c:if>
				</c:forEach>
				<c:if test="${nextIF}">
					<li class="page-item"><a class="page-link"
						href="SreviewBoardCMD.do?currentPage=${vo.next }&hosId=${param.hosId}&nowblock=${vo.nowblock+1}">&raquo;</a></li>
				</c:if>
			</ul>
		</div>
              <!-- /.card-body -->
              
            <!-- /.card -->
			</div>
</body>
</html>