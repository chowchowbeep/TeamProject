package kjr;

import java.sql.SQLException;

import kty.DAO;
import lastdto.codeDTO;

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
}
