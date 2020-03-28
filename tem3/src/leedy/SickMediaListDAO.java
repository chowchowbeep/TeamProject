package leedy;

import java.sql.SQLException;
import java.util.ArrayList;

import kty.DAO;
import lastdto.mediaListDTO;


public class SickMediaListDAO extends DAO{
	
	
	//일반회원 아이디에 해당하는 기록물 리스트 전체 조회

	public ArrayList<mediaListDTO> selectMedia(String sicId){
		
		String sql = "select * from sick_media where sic_id = ?";
		ArrayList<mediaListDTO> list = new ArrayList<mediaListDTO>();
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, sicId);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				mediaListDTO dto = new mediaListDTO();
				dto.setArtrName(rs.getString("artr_name"));
				dto.setFileName(rs.getString("file_name"));
				dto.setFileType(rs.getString("file_type"));
				dto.setHosName(rs.getString("hos_name"));
				list.add(dto);
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}finally {
			
		}
		return list;
	}
	
	
	
	
	
}
