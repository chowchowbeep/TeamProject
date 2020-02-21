<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 부트스트랩4 -->
<%@ include file="../../layout/sick_head.jsp" %>
<%@ include file="../../layout/sick_menu.jsp" %>
<script>
	$(function() { //ready == window.load 와 같은 이벤트
		
		
	})
</script>
<style>
	.mar{
		margin: 10px 0px;
	}
	
</style>
</head>
<body>
	<div class="container mar">
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">내가 작성한 리뷰 리스트</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body p-0">
                <table class="table table-sm">
                  <thead>
                    <tr>
                      <th style="width: 100px">병원명</th>
                      <th>내용</th>
                      <th style="width: 40px">★★★★★</th>
                      <th style="width: 40px">Label</th>
                    </tr>
                  </thead>
                  <tbody>
                  <c:forEach items="${list }" var="list">
                    <tr>
                      <td>${list.hosName }</td>
                      <td>${list.rvCont }[내용]</td>
                      <td>
                        <div>
                          <div>
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
                          </div>
                        </div>
                      </td>
                      <td><span class="badge bg-danger">삭제</span></td>
                    </tr>
                    </c:forEach>
                  </tbody>
                </table>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
		
</body>
</html>