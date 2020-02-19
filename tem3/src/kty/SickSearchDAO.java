package kty;

import java.util.ArrayList;
import java.util.List;

import lastdto.sickSearchDTO;

public class SickSearchDAO extends DAO {

	//전체리스트
		public List<sickSearchDTO> selectList() {
			List<sickSearchDTO> list = new ArrayList<sickSearchDTO>();
			try {
				String sql = "select * from MEDI_LIST";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery(sql);
				while (rs.next()) {
					sickSearchDTO dto = new sickSearchDTO();
					dto.setSicName(rs.getString("SIC_NAME"));
					dto.setSicPhone(rs.getString("SIC_PHONE"));
					dto.setRqstTy(rs.getString("RQST_TY"));
					dto.setSicId(rs.getString("SIC_ID"));
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