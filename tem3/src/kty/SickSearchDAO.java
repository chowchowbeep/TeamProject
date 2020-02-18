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
					dto.setArtrNo(rs.getInt("ARTR_NO"));
					dto.setHosId(rs.getString("HOS_ID"));
					dto.setArtrName(rs.getString("ARTR_NAME"));
					dto.setArtrSub(rs.getString("ARTR_SUB"));
					list.add(dto);
				}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				close();
			}
			return list;
		}
	}}