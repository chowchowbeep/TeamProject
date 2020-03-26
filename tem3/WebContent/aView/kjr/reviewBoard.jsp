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
</head>
<body>
<div class="card" style="margin: 5px;">
              <div class="card-header">
                <h3 class="card-title">Bordered Table</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table class="table table-bordered">
                  <thead>                  
                    <tr>
                      <th style="width: 100px">이름</th>
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
                  			<td>${list.hosName }</td>
                  			<td>${list.rvCont }</td>
                  			<td>
                  				<c:choose>
	                         		<c:when test="${list.starPoint eq '1' }">
	                         			<img src="images/star-on-big.png">
	                         			<img src="images/star-off-big.png">
	                         			<img src="images/star-off-big.png">
	                         			<img src="images/star-off-big.png">
	                         			<img src="images/star-off-big.png">
	                         		</c:when>
	                         		<c:when test="${list.starPoint eq '2' }">
										<img src="images/star-on-big.png">
	                         			<img src="images/star-on-big.png">
	                         			<img src="images/star-off-big.png">
	                         			<img src="images/star-off-big.png">
	                         			<img src="images/star-off-big.png">									
									</c:when>
	                         		<c:when test="${list.starPoint eq '3' }">
										<img src="images/star-on-big.png">
										<img src="images/star-on-big.png">
	                         			<img src="images/star-on-big.png">
	                         			<img src="images/star-off-big.png">
	                         			<img src="images/star-off-big.png">
									</c:when>
	                         		<c:when test="${list.starPoint eq '4' }">
	                         			<img src="images/star-on-big.png">
	                         			<img src="images/star-on-big.png">
										<img src="images/star-on-big.png">
	                         			<img src="images/star-on-big.png">
	                         			<img src="images/star-off-big.png">
	                         		</c:when>
	                         		<c:when test="${list.starPoint eq '5' }">
	                         			<img src="images/star-on-big.png">
	                         			<img src="images/star-on-big.png">
	                         			<img src="images/star-on-big.png">
										<img src="images/star-on-big.png">
	                         			<img src="images/star-on-big.png">
									</c:when>
	                         		<c:otherwise>
	                         			<img src="images/star-off-big.png">
	                         			<img src="images/star-off-big.png">
	                         			<img src="images/star-off-big.png">
	                         			<img src="images/star-off-big.png">
	                         			<img src="images/star-off-big.png">
	                         		</c:otherwise>
		                         </c:choose>
                  			</td>
                  		</tr>
                  	</c:forEach>
                  </tbody>
                </table>
                <br>
               ${vo.progress }
                ${ifTest}
                <ul class="pagination pagination-sm m-0 float-right">
                <c:if test="${vo.progress }>0">
                 "ABCDASD"
                </c:if>
                  <c:forEach begin="${vo.btnStart }" end="${vo.displayPage }" step="1"  var="i">
               	   <li class="page-item"><a class="page-link" href="SreviewBoardCMD.do?currentPage=${i }&hosId=${param.hosId}">${i }</a></li>
                  </c:forEach>
                   <c:if test="${ifTest}">
                  <li class="page-item"><a class="page-link" href="SreviewBoardCMD.do?currentPage=${vo.next*2 }&hosId=${param.hosId}">&raquo;</a></li>
                </c:if>
                </ul>
              </div>
              <!-- /.card-body -->
              
            <!-- /.card -->
			</div>
</body>
</html>