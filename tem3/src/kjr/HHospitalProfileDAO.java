package kjr;

import java.sql.SQLException;
import java.util.ArrayList;

import kty.DAO;
import lastdto.hosMemberDTO;

public class HHospitalProfileDAO extends DAO {
	String sql;
	public hosMemberDTO select(String hosId) {
		hosMemberDTO dto = new hosMemberDTO();
		sql = "select * FROM hos_member WHERE hos_id=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,hosId);
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				
				String hosBizno = rs.getString("HOS_BIZNO");
				String hosName  = rs.getString("HOS_NAME"); 
				String hosPhone  = rs.getString("HOS_PHONE"); 
				String hosPw  =  rs.getString("HOS_PW"); 
				String hosAddr  = rs.getString("HOS_ADDR");
				int hosLat = rs.getInt("HOS_LAT"); 
				int hosLng = rs.getInt("HOS_LNG"); 
				String hosBizTime  = rs.getString("BIZ_TIME");
				
				
				dto = new hosMemberDTO(hosId,hosBizno,hosName,hosPhone,hosPw,hosAddr,hosLat,hosLng,hosBizTime);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return dto;

	}
}
