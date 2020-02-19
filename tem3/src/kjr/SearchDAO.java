package kjr;

import java.sql.SQLException;
import java.util.ArrayList;

import kty.DAO;
import lastdto.searchDTO;

public class SearchDAO extends DAO {
	String sql;
	public ArrayList<searchDTO> select(String[] shcode){
		ArrayList<searchDTO> list= new ArrayList<searchDTO>();
		sql="select * from search where code=";
		try {
			pstmt = conn.prepareStatement(sql);
			for(String code : shcode) {
				pstmt.setString(1,code);
				rs = pstmt.executeQuery();
				while(rs.next()) {
					searchDTO dto = new searchDTO();
					dto.setSechNo(rs.getInt("SECH_NO"));
					dto.setCode(rs.getString("HOS_ID"));
					dto.setCode(rs.getString("CODE"));
					list.add(dto);		
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
			
		}
		close();
		
		return list;
	};
}
