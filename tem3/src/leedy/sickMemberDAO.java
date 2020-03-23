package leedy;

import java.sql.SQLException;

import kty.DAO;
import lastdto.sickMemberDTO;

public class sickMemberDAO extends DAO{

	// 환자iD로 정보가져오기.
			public sickMemberDTO select(String id) {
				System.out.println("id");
				sickMemberDTO dto = new sickMemberDTO();
				String sql = "SELECT * FROM Sick_Member where sic_id = ?";
				try {
				
					pstmt = conn.prepareStatement(sql);
					pstmt.setString(1, id);
					rs = pstmt.executeQuery();
					
					if (rs.next()) {
						dto.setSicName(rs.getString("SIC_NAME"));
						dto.setSicPhone(rs.getString("SIC_PHONE"));
						dto.setSicId(rs.getString("SIC_ID"));
						dto.setSicStt(rs.getString("SIC_STT"));
						dto.setSicLogin(rs.getString("SIC_LOGIN"));
						dto.setSicPw(rs.getString("SIC_PW"));
					}
				} catch (SQLException e) {
					e.printStackTrace();
				} finally {
					close();
				}
				return dto;

			}
	
	
}
