package kjr;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DAO {
	protected Connection conn;
	protected PreparedStatement pstmt;
	protected ResultSet rs;

	protected String driver = "oracle.jdbc.driver.OracleDriver";
	protected String url = "jdbc:oracle:thin:@localhost:1521:xe";
	protected String user = "hr";
	protected String password = "hr";
	
	protected DAO() {
		try {
			DriverManager.getConnection(url, user, password);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
}
