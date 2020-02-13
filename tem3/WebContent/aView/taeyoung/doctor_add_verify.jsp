<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.sql.*"%>

<%@include file="dbconnect.jsp"%>
<%
	request.setCharacterEncoding("UTF-8");

	mySQL = "insert into ARTR_INFO" + "(ARTR_NO,HOS_ID,ARTR_NAME,ARTR_SUB)"
			+ " values((?,?,?,?)";
	PreparedStatement pstmt = myConn.prepareStatement(mySQL);
	pstmt.setString(2, request.getParameter("artrName"));
	pstmt.setString(3, request.getParameter("artrSub"));
	pstmt.executeUpdate(); // 등록 수정 삭제시 execute update

	pstmt.close();
	myConn.close();
%>

<script>
	alert("추가 되었습니다");
	location.href = "doctor_list.jsp";
</script>
