package kjr;

import java.sql.SQLException;
import java.util.ArrayList;

import dto.bookmarkDTO;
import kty.DAO;

public class BookmarkDAO extends DAO {
	String sql;
	public ArrayList<bookmarkDTO> select(String id) {
		ArrayList<bookmarkDTO> list = new ArrayList<>();
		sql = "select * FROM Bookmark WHERE SIC_ID=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,id);
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				bookmarkDTO dto = new bookmarkDTO();
				dto.setHosId(rs.getString("HOS_ID"));
				//System.out.println("BookmarkDAO : "+ dto.getHosId());
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;

	}
}
