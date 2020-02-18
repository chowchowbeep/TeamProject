package kty;

import java.util.ArrayList;
import java.util.List;

import lastdto.mediRqstDTO;


public class Medi_wjqtnDAO extends DAO {

	//접수리스트
		public List<mediRqstDTO> selectList() {
			List<mediRqstDTO> list = new ArrayList<mediRqstDTO>();
			try {
				String sql = "SELECT RQST_NO, SIC_ID, RQST_DTTM, HOS_ID" + 
							" FROM MEDI_RQST" + 
							" WHERE RQST_TY = 'D001' ";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery(sql);
				while (rs.next()) {
					mediRqstDTO dto = new mediRqstDTO();
					dto.setRqstNo(rs.getInt("RQST_NO"));
					dto.setSicId(rs.getString("SIC_ID"));
					dto.setRqstDttm(rs.getDate("RQST_DTTM"));
					dto.setHosId(rs.getString("HOS_ID"));
					list.add(dto);
				}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				close();
			}
			return list;
		}
	
}