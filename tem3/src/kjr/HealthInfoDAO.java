package kjr;

import java.sql.SQLException;

import dto.HealthInfoDto;
import kty.DAO;

public class HealthInfoDAO extends DAO{
	String sql;
	//단건조회
	public HealthInfoDto select(String id){
		HealthInfoDto dto = new HealthInfoDto();
		sql="SELECT * FROM Health_info WHERE SIC_ID=? ";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,id);
			
			rs = pstmt.executeQuery();
			while (rs.next()) {
				dto.setChrdis(rs.getString("CHRDIS"));
				dto.setHstcs(rs.getString("HSTCS"));
				dto.setMedi(rs.getString("MEDI"));
				dto.setBdp(rs.getString("BDP"));
				dto.setAllrgy(rs.getString("ALLRGY"));
				dto.setHtEtc(rs.getString("HT_ETC"));
				dto.setSicId(rs.getString("SIC_ID"));
				}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return dto;
	}
	//입력
	
	//수정
	

}
