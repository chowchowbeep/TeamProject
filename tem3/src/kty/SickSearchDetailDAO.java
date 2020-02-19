package kty;

public class SickSearchDetailDAO extends DAO{
	
	//ID값으로 단건조회
	public hosMemberDTO selectOne(int hosNo) {
		hosMemberDTO dto = new hosMemberDTO();
		try {
			String sql = "SELECT * FROM HOS_MEMBER" + " WHERE HOS_ID = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, hosNo);
			rs = pstmt.executeQuery(); //실행
			if (rs.next()) { //결과 옮겨담기
				dto.setHosBizno(rs.getString("HOS_BIZNO"));
				dto.setHosName(rs.getString("HOS_NAME"));
				dto.setHosPhone(rs.getString("HOS_PHONE"));
				dto.setHosPw(rs.getString("HOS_PW"));
				dto.setHosAddr(rs.getString("HOS_ADDR"));
				dto.setHosLat(rs.getInt("HOS_LAT"));
				dto.setHosLng(rs.getInt("HOS_LNG"));
				dto.setHosBizTime(rs.getString("BIZ_TIME"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return dto;
	}
}