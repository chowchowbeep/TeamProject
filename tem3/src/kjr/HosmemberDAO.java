package kjr;

import java.sql.SQLException;
import java.util.ArrayList;

import dto.HosMemberDto;
import kty.DAO;

public class HosmemberDAO extends DAO {
	String sql = "";
	public ArrayList<HosMemberDto> select(){ //전체 조회
		ArrayList<HosMemberDto> list = new ArrayList<>();
		sql="SELECT * FROM hos_member";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				HosMemberDto dto = new HosMemberDto();
				dto.setHosId(rs.getString("HOS_ID"));
				dto.setHosBizno(rs.getString("HOS_BIZNO"));
				dto.setHosName(rs.getString("HOS_NAME"));
				dto.setHosPhone(rs.getString("HOS_PHONE"));
				dto.setHosPw(rs.getString("HOS_PW"));
				dto.setHosAddr(rs.getString("HOS_ADDR"));
				dto.setHosLat(rs.getInt("HOS_LAT"));
				dto.setHosLng(rs.getInt("HOS_LNG"));
				dto.setHosStart(rs.getTimestamp("BIZ_START"));
				dto.setHosLast(rs.getTimestamp("BIZ_LAST"));
				list.add(dto);		
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public ArrayList<HosMemberDto> select(String hos){ //병원이름으로 조회
		ArrayList<HosMemberDto> list = new ArrayList<>();
		sql="SELECT * FROM hos_member ";
		if(hos!=null) {
			sql += " where hos_name like ? ";
		}
		try {
			pstmt = conn.prepareStatement(sql);
			if(hos!=null) {
				pstmt.setString(1, "%"+hos+"%");
			}
			rs = pstmt.executeQuery();
			while(rs.next()) {
				HosMemberDto dto = new HosMemberDto();
				dto.setHosId(rs.getString("HOS_ID"));
				dto.setHosBizno(rs.getString("HOS_BIZNO"));
				dto.setHosName(rs.getString("HOS_NAME"));
				dto.setHosPhone(rs.getString("HOS_PHONE"));
				dto.setHosPw(rs.getString("HOS_PW"));
				dto.setHosAddr(rs.getString("HOS_ADDR"));
				dto.setHosLat(rs.getInt("HOS_LAT"));
				dto.setHosLng(rs.getInt("HOS_LNG"));
				dto.setHosStart(rs.getTimestamp("BIZ_START"));
				dto.setHosLast(rs.getTimestamp("BIZ_LAST"));
				list.add(dto);		
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
			
		}
		close();
		return list;
	}
	
	
}
