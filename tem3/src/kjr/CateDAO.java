package kjr;

import java.sql.SQLException;
import java.util.ArrayList;

import kty.DAO;
import lastdto.cApaDTO;

public class CateDAO extends DAO {
	String sql;
	public ArrayList<cApaDTO> apaSelect() { //wd코드를 부모로가진 키워드 출력
		ArrayList<cApaDTO> list = new ArrayList<cApaDTO>();
		sql="select * from c_apa";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				cApaDTO dto = new cApaDTO();
				dto.setCode(rs.getString("apa_code"));
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
	public ArrayList<cApaDTO> subSelect() { //wd코드를 부모로가진 키워드 출력
		ArrayList<cApaDTO> list = new ArrayList<cApaDTO>();
		
		sql="select * from c_sub";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				cApaDTO dto = new cApaDTO();
				dto.setCode(rs.getString("sub_code"));
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
	public ArrayList<cApaDTO> temaSelect() { //wd코드를 부모로가진 키워드 출력
		ArrayList<cApaDTO> list = new ArrayList<cApaDTO>();
		sql="select * from c_tema";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				cApaDTO dto = new cApaDTO();
				dto.setCode(rs.getString("tema_code"));
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
