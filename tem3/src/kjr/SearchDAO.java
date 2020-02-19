package kjr;

import java.sql.SQLException;
import java.util.ArrayList;

import kty.DAO;
import lastdto.hosMemberDTO;

public class SearchDAO extends DAO {
	String sql;
	public ArrayList<hosMemberDTO> select(String[] cateCode, String areaCode){
		ArrayList<hosMemberDTO> list= new ArrayList<hosMemberDTO>();
		
		int len = cateCode.length;
		sql="select hos_id from search " + 
			"INTERSECT " + 
			"select hos_id " + 
			"from search " + 
			"where ";
		if(len>0) {
			sql +="code in(";
			for(int i=0;i>len;i++) {
				if(i == len-1) {
					sql +="?)";
				}else {
					sql +="?,";
				};
			if(areaCode!=null) {
			}
				sql+= " and ";
			}
		}
			
		if(areaCode!=null){
			len = len+1;
			sql += "hos_id in (select HOS_ID from search " + 
			"where code=?)";
		}
		System.out.println(sql);
		try {
			pstmt = conn.prepareStatement(sql);
			for(int i=0; i>len;i++) {
				if(i==len-1) {
				pstmt.setString(i,areaCode); //지역코드 변수넣기
				}else {
				pstmt.setString(i,cateCode[i]); //카테고리 변수 넣기
				}
				rs = pstmt.executeQuery();
				while(rs.next()) {
					hosMemberDTO dto = new hosMemberDTO();
					dto.setHosId(rs.getString("HOS_ID"));
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
