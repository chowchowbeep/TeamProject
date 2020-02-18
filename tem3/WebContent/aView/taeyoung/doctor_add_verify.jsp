<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.sql.*"%>
<%@include file="dbconnect.jsp"%>
<%
	request.setCharacterEncoding("UTF-8");

	mySQL = "insert into ARTR_INFO" + "(ARTR_NO,HOS_ID,ARTR_NAME,ARTR_SUB)"
			+ " values(ARTR_SEQ.nextval,?,?,?)";
	PreparedStatement pstmt = myConn.prepareStatement(mySQL);
	pstmt.setString(1, request.getParameter("artrName"));
	pstmt.setString(2, request.getParameter("artrSub"));
	//pstmt.executeUpdate();
	pstmt.close();
	myConn.close();

%>
<script>
	alert("추가 되었습니다");
	location.href = "${pageContext.request.contextPath}/HDoctorlist.do";
</script>

