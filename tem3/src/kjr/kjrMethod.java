package kjr;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import dto.SickMemberDto;

public class kjrMethod {
	private String sql;
	protected Connection conn;
	protected PreparedStatement pstmt;
	protected ResultSet rs;

	protected String driver = "oracle.jdbc.driver.OracleDriver";
	protected String url = "jdbc:oracle:thin:@localhost:1521:xe";
	protected String user = "hr";
	protected String password = "hr";
	
	protected kjrMethod() {
		try {
			DriverManager.getConnection(url, user, password);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	//전체리스트
		public ArrayList<SickMemberDto> select(){
			ArrayList<SickMemberDto> list = new ArrayList<>();
			sql="select * from user_tables";
			try {
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				while(rs.next()) {
					SickMemberDto dto = new SickMemberDto();
					dto.setSicName("SIC_NAME");
					dto.setSicPhone("SIC_PHONE");
					dto.setSicId(rs.getString("SIC_NAME"));
					dto.setSicStt(rs.getString("SIC_STT"));
					dto.setSicLogin(rs.getString("SIC_LOGIN"));
					dto.setSicPw(rs.getString("SIC_PW"));
					list.add(dto);					
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return list;
		}
		
		// 환자iD로 정보가져오기.
	public ArrayList<SickMemberDto> select(int id) {
		ArrayList<SickMemberDto> list = new ArrayList<>();
		sql = "select * from user_tables where =?";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				SickMemberDto dto = new SickMemberDto();
				dto.setSicName("SIC_NAME");
				dto.setSicPhone("SIC_PHONE");
				dto.setSicId(rs.getString("SIC_NAME"));
				dto.setSicStt(rs.getString("SIC_STT"));
				dto.setSicLogin(rs.getString("SIC_LOGIN"));
				dto.setSicPw(rs.getString("SIC_PW"));
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;

	}
		//dto로 넘어오는 데이터를 DB에 추가(등록)하는 메소드
		public ArrayList<SickMemberDto> insert(int id){
			ArrayList<SickMemberDto> list = new ArrayList<>();
			sql="";
			int n=0;
			try {
				pstmt = conn.prepareStatement(sql);
				n = pstmt.executeUpdate();		
			
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			return list;
		}
				
}
