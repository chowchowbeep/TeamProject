package kty;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import lastdto.artrInfoDTO;

public class MediDAO extends DAO {

	//전체리스트
		public List<artrInfoDTO> selectList() {
			List<artrInfoDTO> list = new ArrayList<artrInfoDTO>();
			try {
				String sql = "select * from ARTR_INFO order by ARTR_NO ";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery(sql);
				while (rs.next()) {
					artrInfoDTO dto = new artrInfoDTO();
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