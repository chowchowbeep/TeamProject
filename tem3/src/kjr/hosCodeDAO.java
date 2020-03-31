package kjr;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;

import kty.DAO;
import lastdto.seachCodeJoinDTO;

public class hosCodeDAO extends DAO{
	String sql;
	
	public void delete(String sessionId) {
		sql="delete from search where sech_no in "
		  + "(select sech_no from search where hos_id=? and code in(select code from code where type in ('APA','TEMA','SUB')));";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,sessionId);
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
		}
	
	}
	public void insert(String sicId, HashMap<String, String> map) {
		sql="INSERT INTO health_info VALUES "
		+ " (?,?,'',?,?,?,'테스트')";
		String chrdis=(String)map.get("chrdis");
		String medi=(String)map.get("medi");
		String allrgy=(String)map.get("allrgy");
		/*
		chrdis = chrdis.substring(1, chrdis.length()-1);
		medi = chrdis.substring(1, chrdis.length()-1);
		allrgy = chrdis.substring(1, chrdis.length()-1);*/
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,sicId);
			pstmt.setString(2,chrdis);
			pstmt.setString(3,medi);
			pstmt.setString(4,map.get("bdp"));
			pstmt.setString(5,allrgy);
			int	n = pstmt.executeUpdate();
			if(n==0) {
				System.out.println("nnnnnnnn"+n);
			}else {
				System.out.println("yyyyyyyyy"+n);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
		}
	
	}
	

	
//단건조회
	public ArrayList<seachCodeJoinDTO> select(String sessionId){
		ArrayList<seachCodeJoinDTO> list = new ArrayList<>();
		sql=	" select * from code c "+
				" where c.CODE in " +
				" (select Regexp_Substr(chrdis,'[^,]+',1,Level) "+
				" from  health_info h "+
				" where sic_id=? "+
				" Connect By Regexp_Substr(chrdis,'[^,]+',1,Level) Is Not Null) "+
				" union "+
				" select * from code c "+
				" where c.CODE in " +
				" (select Regexp_Substr(HSTCS,'[^,]+',1,Level) "+
				" from  health_info h "+
				" where sic_id=? "+
				" Connect By Regexp_Substr(HSTCS,'[^,]+',1,Level) Is Not Null) "+
				" union "+
				" select * from code c "+
				" where c.CODE in " +
				" (select Regexp_Substr(MEDI,'[^,]+',1,Level) "+
				" from  health_info h "+
				" where sic_id=? "+
				" Connect By Regexp_Substr(MEDI,'[^,]+',1,Level) Is Not Null) "+
				" union "+
				" select * from code c "+
				" where c.CODE in  "+
				" (select Regexp_Substr(BDP,'[^,]+',1,Level) "+
				" from  health_info h  "+
				" where sic_id=?  "+
				" Connect By Regexp_Substr(BDP,'[^,]+',1,Level) Is Not Null) "+
				" union "+
				" select * from code c "+
				" where c.CODE in  "+
				" (select Regexp_Substr(ALLRGY,'[^,]+',1,Level) "+
				" from  health_info h "+
				" where sic_id=?  "+
				" Connect By Regexp_Substr(ALLRGY,'[^,]+',1,Level) Is Not Null) "
				;
				
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,sessionId);
			pstmt.setString(2,sessionId);
			pstmt.setString(3,sessionId);
			pstmt.setString(4,sessionId);
			pstmt.setString(5,sessionId);
			
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				seachCodeJoinDTO dto = new seachCodeJoinDTO();
				dto.setCode(rs.getString("code"));
				dto.setName(rs.getString("name"));
				dto.setType(rs.getString("type"));
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	//단건조회
			public ArrayList<String> selectCode(String sessionId){
				ArrayList<String> list = new ArrayList<>();
				sql=	" select * from code c "+
						" where c.CODE in " +
						" (select Regexp_Substr(chrdis,'[^,]+',1,Level) "+
						" from  health_info h "+
						" where sic_id=? "+
						" Connect By Regexp_Substr(chrdis,'[^,]+',1,Level) Is Not Null) "+
						" union "+
						" select * from code c "+
						" where c.CODE in " +
						" (select Regexp_Substr(HSTCS,'[^,]+',1,Level) "+
						" from  health_info h "+
						" where sic_id=? "+
						" Connect By Regexp_Substr(HSTCS,'[^,]+',1,Level) Is Not Null) "+
						" union "+
						" select * from code c "+
						" where c.CODE in " +
						" (select Regexp_Substr(MEDI,'[^,]+',1,Level) "+
						" from  health_info h "+
						" where sic_id=? "+
						" Connect By Regexp_Substr(MEDI,'[^,]+',1,Level) Is Not Null) "+
						" union "+
						" select * from code c "+
						" where c.CODE in  "+
						" (select Regexp_Substr(BDP,'[^,]+',1,Level) "+
						" from  health_info h  "+
						" where sic_id=?  "+
						" Connect By Regexp_Substr(BDP,'[^,]+',1,Level) Is Not Null) "+
						" union "+
						" select * from code c "+
						" where c.CODE in  "+
						" (select Regexp_Substr(ALLRGY,'[^,]+',1,Level) "+
						" from  health_info h "+
						" where sic_id=?  "+
						" Connect By Regexp_Substr(ALLRGY,'[^,]+',1,Level) Is Not Null) "
						;
						
				try {
					pstmt = conn.prepareStatement(sql);
					pstmt.setString(1,sessionId);
					pstmt.setString(2,sessionId);
					pstmt.setString(3,sessionId);
					pstmt.setString(4,sessionId);
					pstmt.setString(5,sessionId);
					
					rs = pstmt.executeQuery();
					
					while (rs.next()) {
						seachCodeJoinDTO dto = new seachCodeJoinDTO();
						String code = rs.getString("code");
						list.add(code);
					}
				} catch (SQLException e) {
					e.printStackTrace();
				}
				return list;
			}
	
}
