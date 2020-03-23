package kcr;

import java.sql.SQLException;

import command.DAO;
import lastdto.hosMemberDTO;

public class TestForRqDAO extends DAO{
	
	public hosMemberDTO getHosInfo(String hosId) {
		hosMemberDTO dto = new hosMemberDTO();
		String sql = "select * from hos_member"
				+ " where hos_id = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, hosId);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				dto.setHosId(rs.getString("hos_id"));
				dto.setHosBizno(rs.getString("hos_bizno"));
				dto.setHosName(rs.getString("hos_name"));
				dto.setHosPhone(rs.getString("hos_phone"));
				dto.setHosAddr(rs.getString("hos_addr"));
				dto.setHosLat(rs.getInt("hos_lat"));
				dto.setHosLng(rs.getInt("hos_lng"));
				dto.setHosBizTime(rs.getString("biz_time"));
				
				System.out.println("==============");
				System.out.println(dto.toString());
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return dto;
	}
	
}
