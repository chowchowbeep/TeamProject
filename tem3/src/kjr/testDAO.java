package kjr;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class testDAO {

		protected Connection conn;
		protected PreparedStatement pstmt;
		protected CallableStatement cstmt;
		protected ResultSet rs;

		protected String driver = "oracle.jdbc.driver.OracleDriver";
		protected String url = "jdbc:oracle:thin:@localhost:1521:xe";
		protected String user = "hr";
		protected String passwd = "hr";

		protected testDAO() {
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
