package kjr;

import java.sql.SQLException;
import java.util.ArrayList;

import kty.DAO;
import lastdto.cApaDTO;

public class CateDAO extends DAO {
	String sql;
	public ArrayList<cApaDTO> select(String wd) { //wd코드를 부모로가진 키워드 출력
		ArrayList<cApaDTO> list = new ArrayList<cApaDTO>();
		if(wd.equals("")) {
		sql="select * from c_apa";
		}else if(wd.equals("")) {
		sql="select * from c_sub";
		}else if(wd.equals("")) {
		sql="select * from c_tema";
		}
		try {
			pstmt = conn.prepareStatement(sql);
			if(wd!=null) {
				pstmt.setString(1,wd);
			}
			rs = pstmt.executeQuery();
			while(rs.next()) {
				cApaDTO dto = new cApaDTO();
				dto.setCode(rs.getString("LOCA_CODE"));
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
