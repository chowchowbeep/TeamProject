package kjr;

import java.sql.SQLException;
import java.util.ArrayList;

import dto.BookmarkDto;

public class BookmarkDAO {
	String sql;
	public ArrayList<BookmarkDto> select(String id) {
		ArrayList<BookmarkDto> list = new ArrayList<>();
		sql = "select * FROM Bookmark WHERE SIC_ID=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,id);
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				BookmarkDto dto = new BookmarkDto();
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
