package kcrDAO;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import command.DAO;
import lastdto.mediInfoDTO;

public class XXMediInfoDAO extends DAO {

	// 진료이력목록(진료완료한 목록)
	public List<mediInfoDTO> selectDone(String id, String type) {
		List<mediInfoDTO> list = new ArrayList<>();
		String sql = null;
		if (type == "all") { // 전체목록
			sql = "SELECT r.*, h.*, i.mctt_stt" + 
					" FROM MEDI_RQST r" + 
					" join HOS_MEMBER h on r.HOS_ID = h.HOS_ID" + 
					" join medi_info i on r.RQST_NO = i.RQST_NO" + 
					" where SIC_ID = ? " + 
					" and i.mctt_stt = 'Y'" + //진료완료한 것만 골라오기
					" order by r.rqst_dttm desc, r.rqst_no desc";
		} else if (type == "tmr") {// 접수목록
			sql = "SELECT r.*, h.*, i.mctt_stt" + 
					" FROM MEDI_RQST r " + 
					" join HOS_MEMBER h on r.HOS_ID = h.HOS_ID" + 
					" join medi_info i on r.RQST_NO = i.RQST_NO" + 
					" where SIC_ID = ? " + 
					" and r. rqst_ty = 'D001'" + //접수한것만 
					" and i.mctt_stt = 'Y'" + //진료완료한 것만
					" order by r.rqst_dttm desc, r.rqst_no desc";
		} else if (type == "res") {// 예약목록
			sql = "SELECT r.*, h.*, i.mctt_stt" + 
					" FROM MEDI_RQST r " + 
					" join HOS_MEMBER h on r.HOS_ID = h.HOS_ID " + 
					" join medi_info i on r.RQST_NO = i.RQST_NO " + 
					" where SIC_ID = ?  " + 
					" and r. rqst_ty = 'D002' " + //예약한것만
					" and i.mctt_stt = 'Y' " + //진료완료한 것만
					" order by r.rqst_dttm desc, r.rqst_no desc";
		}
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				mediInfoDTO dto = new mediInfoDTO();

				dto.setRqstNo(rs.getInt("RQST_NO"));
				dto.setMcttStt(rs.getString("MCTT_STT"));
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
