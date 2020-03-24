package kjr;

import java.sql.SQLException;
import java.util.ArrayList;

import kty.DAO;
import lastdto.bookmarkDTO;
import lastdto.reviewListDTO;

public class BookmarkDAO extends DAO {
	String sql;
	public ArrayList<bookmarkDTO> select(String id) {
		ArrayList<bookmarkDTO> list = new ArrayList<>();
		sql = "select b.HOS_ID,h.HOS_NAME FROM Bookmark b, hos_member h WHERE b.HOS_ID=h.HOS_ID and SIC_ID=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,id);
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				bookmarkDTO dto = new bookmarkDTO();
				dto.setHosId(rs.getString("HOS_ID"));
				dto.setName(rs.getString("HOS_NAME"));
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;

	}
	
	public boolean Delete(String sicId, String hosId){
		bookmarkDTO dto = new bookmarkDTO();
		boolean a = true;
		sql="delete from Bookmark where sic_Id=? and hos_id=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,sicId);
			pstmt.setString(2,hosId);
		int	n = pstmt.executeUpdate();
			if(n==0) {
				a = false;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		return a;
	}
}
