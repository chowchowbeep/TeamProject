package kcrDAO;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import kty.DAO;
import lastdto.mediRqstDTO;

public class dcInfoDAO extends DAO {
	// 진료이력목록(진료완료한 목록)
		public List<mediRqstDTO> selectDone(String id, String type) {
			List<mediRqstDTO> list = new ArrayList<>();
			String sql = null;
			if (type == "all") { // 전체목록
				sql ="SELECT r.*, h.* \r\n" + 
						"FROM MEDI_RQST r \r\n" + 
						"join HOS_MEMBER h on r.HOS_ID = h.HOS_ID\r\n" + 
						"join medi_info i on r.RQST_NO = i.RQST_NO\r\n" + 
						"where SIC_ID = ? \r\n" + 
						"order by r.rqst_dttm desc, r.rqst_no desc"; 
			} else if (type == "tmr") {// 접수목록
				sql = "SELECT r.*, h.* \r\n" + 
						"FROM MEDI_RQST r \r\n" + 
						"join HOS_MEMBER h on r.HOS_ID = h.HOS_ID\r\n" + 
						"join medi_info i on r.RQST_NO = i.RQST_NO\r\n" + 
						"where SIC_ID = ? \r\n" + 
						"and r.RQST_TY = 'D001' \r\n" + //접수만
						"order by r.rqst_dttm desc, r.rqst_no desc";
			} else if (type == "res") {// 예약목록
				sql = "SELECT r.*, h.* \r\n" + 
						"FROM MEDI_RQST r \r\n" + 
						"join HOS_MEMBER h on r.HOS_ID = h.HOS_ID\r\n" + 
						"join medi_info i on r.RQST_NO = i.RQST_NO\r\n" + 
						"where SIC_ID = ? \r\n" + 
						"and r.RQST_TY = 'D002' \r\n" + //예약만
						"order by r.rqst_dttm desc, r.rqst_no desc";
			}
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, id);
				rs = pstmt.executeQuery();
				while (rs.next()) {
					mediRqstDTO dto = new mediRqstDTO();

					dto.setRqstNo(rs.getInt("RQST_NO"));
					dto.setSicId(rs.getString("SIC_ID"));
					dto.setRqstDttm(rs.getDate("RQST_DTTM"));
					dto.setHosId(rs.getString("HOS_ID"));
					dto.setResDttm(rs.getDate("RES_DTTM"));
					dto.setArtrNo(rs.getInt("ARTR_NO"));
					dto.setRqstTy(rs.getString("RQST_TY"));
					dto.setDcryNo(rs.getInt("DCRY_NO"));
					dto.setMsg(rs.getString("MSG"));
					dto.setIfTime(rs.getString("IFTIME"));

					list.add(dto);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close();
			}
			return list;
		}
}
