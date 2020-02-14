<%@ page import="java.sql.*"%>
<%
	Connection myConn = null;
	Statement stmt = null;
	ResultSet myResultSet = null;
	String mySQL = "";
	String dbdriver = "oracle.jdbc.OracleDriver";
	String url = "jdbc:oracle:thin:@39.116.34.40:1521:mdb";
	String user = "pro";
	String passwd = "pro";
	try {
		Class.forName(dbdriver);
		myConn = DriverManager.getConnection(url, user, passwd);
		stmt = myConn.createStatement();
	} catch (SQLException ex) {
		System.err.println("SQLException: " + ex.getMessage());
	}
	
%>