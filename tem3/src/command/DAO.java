package command;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DAO {
	protected Connection conn;
	protected PreparedStatement pstmt;
	protected CallableStatement cstmt;
	protected ResultSet rs;

	
	//아카이버 문제로 일시 사용 정지
	protected String driver = "oracle.jdbc.driver.OracleDriver";
	protected String url = "jdbc:oracle:thin:@39.116.34.40:1523:mdb";
	protected String user = "pro";
	protected String passwd = "pro";
	
	//임시 사용_ 익스프레스 에디션 hr
//	protected String driver = "oracle.jdbc.driver.OracleDriver";
//	protected String url = "jdbc:oracle:thin:@localhost:1521:xe";
//	protected String user = "hr";
//	protected String passwd = "hr";


	protected DAO() {
		try {
			conn = DriverManager.getConnection(url, user, passwd);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public void close() {
		try {
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (cstmt != null)
				cstmt.close();
			if (conn != null)
				conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
