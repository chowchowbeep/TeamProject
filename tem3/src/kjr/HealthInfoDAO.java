package kjr;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import lastdto.seachCodeJoinDTO;
import kty.DAO;

public class HealthInfoDAO extends DAO{
	String sql;
	
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
