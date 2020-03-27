package kty;

import java.util.ArrayList;
import java.util.List;

import lastdto.mediListDTO;

public class Medi_allDAO extends DAO {

		//예약 & 접수
			public List<mediListDTO> selectList(String hosId) {
				List<mediListDTO> list = new ArrayList<mediListDTO>();
				try {
					String sql = "SELECT RQST_TY, RQST_DTTM, SIC_NAME, ARTR_NAME" + 
								" FROM MEDI_List where hos_id=?";
					pstmt = conn.prepareStatement(sql);
					pstmt.setString(1, hosId);
					rs = pstmt.executeQuery();
					while (rs.next()) {
						mediListDTO dto = new mediListDTO();
						dto.setRqstTy(rs.getString("RQST_TY"));
						dto.setRqstDttm(rs.getDate("RQST_DTTM"));
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