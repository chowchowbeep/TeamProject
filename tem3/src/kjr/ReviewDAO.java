package kjr;

import java.sql.SQLException;

import kty.DAO;
import lastdto.reviewDTO;


public class ReviewDAO extends DAO{
	String sql;
	public boolean insert(reviewDTO dto) {
		boolean a =true;
		int n = 0 ;
		String sql = "insert into review values(RV_SEQ.nextval(),SIC_ID,HOS_ID,STAR_POINT,RV_CONT)";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,dto.getSicId());
			pstmt.setString(2,dto.getHosId());
			pstmt.setInt(3,dto.getStarPoint());
			pstmt.setString(4,dto.getRvCont());
			
			
			n = pstmt.executeUpdate();
			if(n==0) {
				a = false;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			
		return a;
	}
}
