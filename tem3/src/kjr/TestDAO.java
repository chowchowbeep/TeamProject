package kjr;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class TestDAO {
	protected Connection conn;
	protected PreparedStatement pstmt;
	protected ResultSet rs;

	protected String driver = "oracle.jdbc.driver.OracleDriver";
	protected String url = "jdbc:oracle:thin:@localhost:1521:mdb";
	protected String user = "pro";
	protected String password = "pro";

	protected TestDAO() {
		try {
			conn = DriverManager.getConnection(url, user, password);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
