package kjr;

import java.sql.SQLException;
import java.util.ArrayList;

import kty.DAO;
import lastdto.hosMemberDTO;

public class SearchDAO extends DAO {
	String sql;
	public ArrayList<hosMemberDTO> select(String[] cateCode, String areaCode){
		ArrayList<hosMemberDTO> list = new ArrayList<>();
		System.out.println("?????????????????????????????????????????????????????");
		sql="select * from hos_member where hos_id in"+
		    "(select hos_id from search " + 
			"INTERSECT " + 
			"select hos_id from search where 1=1 ";
		int len;
		if(cateCode!=null) {
			len = cateCode.length;
		}else {
			len=0;
		}
		
		//증상 검색
		if(cateCode !=null && len>0) {
			sql +=" and code in(";
			for(int i=0;i<len;i++) {
				if(i == len-1) {
					sql +="?";
				}else {
					sql +="?,";
				};
			}
			sql+=")";
		}
		
		//지역검색
		if(areaCode!=null && !areaCode.isEmpty()){
			sql += "and hos_id in (select HOS_ID from search " + 
			"where code = ? ))";
		}
		System.out.println(sql);
		System.out.println("len?"+len);
		
		try {
			int cnt=1;
			pstmt = conn.prepareStatement(sql);
			for(int i=0; i<len;i++) {
				pstmt.setString(cnt++,cateCode[i]); //지역코드 변수넣기
			}
			if(areaCode!=null && !areaCode.isEmpty()){
				pstmt.setString(cnt++,areaCode);
			}
			System.out.println("쿼리리리리"+sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {	
				hosMemberDTO dto = new hosMemberDTO();
				dto.setHosId(rs.getString("HOS_ID"));
				dto.setHosBizno(rs.getString("HOS_BIZNO"));
				dto.setHosName(rs.getString("HOS_NAME"));
				dto.setHosPhone(rs.getString("HOS_PHONE"));
				dto.setHosPw(rs.getString("HOS_PW"));
				dto.setHosAddr(rs.getString("HOS_ADDR"));
				dto.setHosLat(rs.getInt("HOS_LAT"));
				dto.setHosLng(rs.getInt("HOS_LNG"));
				dto.setHosBizTime(rs.getString("BIZ_TIME"));
				list.add(dto);	
			}		
		} catch (SQLException e) {
			e.printStackTrace();
			
		}
		close();
		
		return list;
	};
}
