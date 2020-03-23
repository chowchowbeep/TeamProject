package kjr;

import java.sql.SQLException;

import kty.DAO;
import lastdto.hosSttDTO;

public class HosSttDAO extends DAO {
	public boolean Update(hosSttDTO dto) {
		boolean a = true;
		int n = 0 ;
		String hosId = dto.getHosId();
		String BIZ_STT = dto.getBizStt();
		String sql = "update hos_stt set BIZ_STT=?" ;
		if(BIZ_STT.equals("Y")) {
			sql += ",OPEN_TIME=sysdate";
		}else{
			sql += ",LAST_TIME=sysdate";
		}		
		sql +=	" where hos_id=? ";
		
		try {
			System.out.println("sql??"+sql);
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,BIZ_STT);
			pstmt.setString(2,hosId);
			n = pstmt.executeUpdate();
			if(n==0) {
				a = false;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
			/* date type의 시간을 확인하는방법 ㅎ
			 * select to_char(open_time,'HH:MI:SS') from hos_stt;
			 * select to_char(last_time,'HH:MI:SS') from hos_stt;
			 */
		
		return a;
	}
}
