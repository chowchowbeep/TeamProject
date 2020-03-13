package kjr;

import java.sql.SQLException;
import java.util.ArrayList;

import kty.DAO;
import lastdto.hosMemberDTO;
import lastdto.reviewListDTO;
import lastdto.sListCodeDTO;
import lastdto.searchDTO;

public class SearchDAO extends testDAO {
	String sql;
	//id별로 전체 search코드 검색 ㅎ 
	public ArrayList<searchDTO> selectAll(String hosId){
		ArrayList<searchDTO> list = new ArrayList<>();
		
		sql= "SELECT * from search where hos_id=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,hosId);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				searchDTO dto = new searchDTO();
				String code = rs.getString("code");
				dto.setHosId(hosId);
				dto.setCode(code);
				list.add(dto);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	
	public ArrayList<hosMemberDTO> select(sListCodeDTO cdto){
		ArrayList<hosMemberDTO> list = new ArrayList<>();
		String[] cateCode = cdto.getCateCode();
		String areaCode = cdto.getAreaCode();
		String orderby = cdto.getOderby();
		String diam= cdto.getDiam();
		String filter= cdto.getFilter();
		
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
			if(areaCode!=null && !areaCode.isEmpty()){
				sql+=")";
			}else {
				sql+="))";
			}
			
		}
		
		//지역검색
		if(areaCode!=null && !areaCode.isEmpty()){
			sql += "and hos_id in (select HOS_ID from search " + 
			"where code = ? ))";
		}
		if(orderby!=null) {
			sql +="order by ";
		}
		try {
			int cnt=1;
			pstmt = conn.prepareStatement(sql);
			for(int i=0; i<len;i++) {
				pstmt.setString(cnt++,cateCode[i]); //지역코드 변수넣기
			}
			if(areaCode!=null && !areaCode.isEmpty()){
				pstmt.setString(cnt++,areaCode);
			}
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
