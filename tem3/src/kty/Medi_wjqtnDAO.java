package kty;

import java.util.ArrayList;
import java.util.List;

import lastdto.mediListDTO;
import lastdto.mediRqstDTO;


public class Medi_wjqtnDAO extends DAO {

	//접수리스트
	public List<mediListDTO> selectList() {
		List<mediListDTO> list = new ArrayList<mediListDTO>();
		try {
			String sql = "SELECT RQST_TY, IFTIME, SIC_NAME, ARTR_NAME" + 
						" FROM MEDI_LIST";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery(sql);
			while (rs.next()) {
				mediListDTO dto = new mediListDTO();
				dto.setRqstTy(rs.getString("RQST_TY"));
				dto.setIfTime(rs.getString("IFTIME"));
				dto.setSicName(rs.getString("SIC_NAME"));
				dto.setArtrName(rs.getString("ARTR_NAME"));
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