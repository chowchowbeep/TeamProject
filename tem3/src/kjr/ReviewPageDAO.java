package kjr;

import java.sql.SQLException;

import kty.DAO;

public class ReviewPageDAO extends DAO {
	// 게시글 수 조회
		public int getBoardCnt(String hosId) {
			int cnt =0;
			String sql ="select count(*) cnt " + 
						"from review " + 
						"where hos_id=? " + 
						"order by rv_no desc;";
		
			try {
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				if (rs.next()) {
					cnt = rs.getInt("cnt");
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
			return cnt;
		}
}
