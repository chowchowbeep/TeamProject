package kjr;

import java.sql.SQLException;
import java.util.ArrayList;

import dto.LocaSechDto;
import kty.DAO;

public class LocaSechDAO extends DAO {
	String sql;
	public ArrayList<LocaSechDto> select() { //지역관련 키워드 전체출력
		ArrayList<LocaSechDto> list = new ArrayList<LocaSechDto>();
		sql="select * from loca_sech";
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			while(rs.next()) {
				LocaSechDto dto = new LocaSechDto();
				dto.setLocaCode(rs.getString("LOCA_CODE"));
				dto.setWd(rs.getString("WD"));
				list.add(dto);		
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
			
		}
		close();
		
		return list;
	}
	
	public ArrayList<LocaSechDto> select(String wd) { //wd코드를 부모로가진 키워드 출력
		ArrayList<LocaSechDto> list = new ArrayList<LocaSechDto>();
		sql="select * from loca_sech";
		if(wd!=null) {
			sql += "where P_CODE = ? ";
		}
		try {
			pstmt = conn.prepareStatement(sql);
			if(wd!=null) {
				pstmt.setString(1,wd);
			}
			rs = pstmt.executeQuery();
			while(rs.next()) {
				LocaSechDto dto = new LocaSechDto();
				dto.setLocaCode(rs.getString("LOCA_CODE"));
				dto.setWd(rs.getString("WD"));
				list.add(dto);		
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
			
		}
		close();
		
		return list;
	}
	
}
