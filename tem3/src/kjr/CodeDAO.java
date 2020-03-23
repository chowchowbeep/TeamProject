package kjr;

import java.sql.SQLException;
import java.util.ArrayList;

import kty.DAO;
import lastdto.codeDTO;
import lastdto.seachCodeJoinDTO;
import lastdto.searchDTO;

public class CodeDAO extends DAO {
	String sql;
//code로 코드명과 type 검색
	public codeDTO select(String code){
		codeDTO dto = new codeDTO();
		sql= " SELECT * from code where code=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,code);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				dto.setName(rs.getString("name"));
				dto.setType(rs.getString("type"));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return dto;
	}
		
	public ArrayList<seachCodeJoinDTO> selectAll(String hosId){
		ArrayList<seachCodeJoinDTO> list = new ArrayList<>();
		
		sql= " select s.hos_id,s.code, c.name, c.type " + 
			 " from search s, code c " + 
			 " where s.CODE=c.CODE and hos_id=? ";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,hosId);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				seachCodeJoinDTO dto = new seachCodeJoinDTO();
				String code = rs.getString("code");
				dto.setHosId(rs.getString("hos_id"));
				dto.setCode(rs.getString("code"));
				dto.setName(rs.getString("name"));
				dto.setType(rs.getString("type"));
				list.add(dto);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	
	
}
