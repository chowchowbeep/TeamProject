package kjr;

import java.sql.SQLException;
import java.util.ArrayList;

import lastdto.locaSechDTO;
import kty.DAO;

public class LocaSechDAO extends testDAO {
	String sql;
	public ArrayList<locaSechDTO> select() { //지역관련 키워드 전체출력
		ArrayList<locaSechDTO> list = new ArrayList<locaSechDTO>();
		sql="select * from loca_sech";
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			while(rs.next()) {
				locaSechDTO dto = new locaSechDTO();
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
	
	public ArrayList<locaSechDTO> select(String wd, String cate) { //wd코드를 부모로가진 키워드 출력
		ArrayList<locaSechDTO> list = new ArrayList<locaSechDTO>();
		System.out.println("dao넘어왓당ㅎ"+wd);
		sql="select * from loca_sech ";
		if(wd!=null) {
			sql += " where P_CODE = ? ";
		}
		if(cate !=null && cate.equals("s")) {
			sql += " and cate='s'";
		}else {
			sql += " and cate is null";
		} 
		System.out.println(sql);
		try {
			pstmt = conn.prepareStatement(sql);
			if(wd!=null) {
				pstmt.setString(1,wd);
			}
			rs = pstmt.executeQuery();
			while(rs.next()) {
				locaSechDTO dto = new locaSechDTO();
				dto.setLocaCode(rs.getString("LOCA_CODE"));
				dto.setWd(rs.getString("WD"));
				System.out.println(dto.getWd());
				list.add(dto);		
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
			
		}
		close();
		
		return list;
	}
	
	
	
}
