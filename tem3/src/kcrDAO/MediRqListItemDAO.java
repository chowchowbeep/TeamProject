package kcrDAO;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import command.DAO;
import lastdto.mediRqListItemDTO;


public class MediRqListItemDAO extends DAO {

	// 진료신청 전체 리스트 (진료완료 아닌 목록)
	//  신청현황상세, 진료신청완료페이지
	public List<mediRqListItemDTO> selectAll(String id, String type) {
		List<mediRqListItemDTO> list = new ArrayList<>();
		String sql = null;
		if (type == "all") { // 전체목록
			sql = "SELECT r.sic_id, r.rqst_ty, r.rqst_no, h.hos_name " + 
					",to_char(r.rqst_dttm,'yyyy/mm/dd') rqst_dt " + 
					"from MEDI_RQST r " + 
					"join HOS_MEMBER h on r.HOS_ID = h.HOS_ID " + 
					"join MEDI_INFO i on r.rqst_no = i.rqst_no " + 
					"and SIC_ID = ? " + 
					"and not i.mctt_stt = 'Y' " +  //진료완료가 아닌 경우
					"order by r.rqst_no desc";
		} else if (type == "tmr") {// 접수목록
			sql = "SELECT r.sic_id, r.rqst_ty, r.rqst_no, h.hos_name " + 
					",to_char(r.rqst_dttm,'yyyy/mm/dd') rqst_dt " + 
					"from MEDI_RQST r " + 
					"join HOS_MEMBER h on r.HOS_ID = h.HOS_ID " + 
					"join MEDI_INFO i on r.rqst_no = i.rqst_no " + 
					"and SIC_ID = ? " + 
					"and not i.mctt_stt = 'Y' " +  //진료완료가 아닌 경우
					"and r.rqst_ty = 'D001' " +  //접수인 경우
					"order by r.rqst_no desc";
		} else if (type == "res") {// 예약목록
			sql = "SELECT r.sic_id, r.rqst_ty, r.rqst_no, h.hos_name " + 
					",to_char(r.rqst_dttm,'yyyy/mm/dd') rqst_dt " + 
					"from MEDI_RQST r " + 
					"join HOS_MEMBER h on r.HOS_ID = h.HOS_ID " + 
					"join MEDI_INFO i on r.rqst_no = i.rqst_no " + 
					"and SIC_ID = ? " + 
					"and not i.mctt_stt = 'Y' " +  //진료완료가 아닌 경우
					"and r.rqst_ty = 'D002' " + //예약인 경우
					"order by r.rqst_no desc";
		} else if (type == "cancel") {// 취소목록
			sql = "SELECT r.sic_id, r.rqst_ty, r.rqst_no, h.hos_name " + 
					",to_char(r.rqst_dttm,'yyyy/mm/dd') rqst_dt " +  
					"from MEDI_RQST r " + 
					"join HOS_MEMBER h on r.HOS_ID = h.HOS_ID " + 
					"join MEDI_INFO i on r.rqst_no = i.rqst_no " + 
					"and SIC_ID = ? " + 
					"and not i.mctt_stt = 'Y' " +  //진료완료가 아닌 경우
					"and r.rqst_ty in ('D003', 'D004') " + //취소인 경우
					"order by r.rqst_no desc";
		}

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				mediRqListItemDTO dto = new mediRqListItemDTO();
				
				dto.setSicId(rs.getString("SIC_ID"));
				dto.setRqstNo(rs.getInt("RQST_NO"));
				dto.setRqstTy(rs.getString("RQST_TY"));
				dto.setHosName(rs.getString("HOS_NAME"));
				dto.setRqstDttm(rs.getString("RQST_DT"));
				
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}
	
	
	// 진료이력목록(진료완료한 목록)
	public List<mediRqListItemDTO> selectDone(String id, String type) {
		List<mediRqListItemDTO> list = new ArrayList<>();
		String sql = null;
		if (type == "all") { // 전체목록
			sql = "SELECT r.sic_id, r.rqst_ty, r.rqst_no, h.hos_name " + 
					",to_char(r.rqst_dttm,'yyyy/mm/dd') rqst_dt " +  
					" FROM MEDI_RQST r" + 
					" join HOS_MEMBER h on r.HOS_ID = h.HOS_ID" + 
					" join medi_info i on r.RQST_NO = i.RQST_NO" + 
					" where SIC_ID = ? " + 
					" and i.mctt_stt = 'Y'" + //진료완료한 것만 골라오기
					" order by r.rqst_dttm desc, r.rqst_no desc";
		} else if (type == "tmr") {// 접수목록
			sql = "SELECT r.sic_id, r.rqst_ty, r.rqst_no, h.hos_name " + 
					",to_char(r.rqst_dttm,'yyyy/mm/dd') rqst_dt " +  
					" FROM MEDI_RQST r " + 
					" join HOS_MEMBER h on r.HOS_ID = h.HOS_ID" + 
					" join medi_info i on r.RQST_NO = i.RQST_NO" + 
					" where SIC_ID = ? " + 
					" and r. rqst_ty = 'D001'" + //접수한것만 
					" and i.mctt_stt = 'Y'" + //진료완료한 것만
					" order by r.rqst_dttm desc, r.rqst_no desc";
		} else if (type == "res") {// 예약목록
			sql =  "SELECT r.sic_id, r.rqst_ty, r.rqst_no, h.hos_name " + 
					",to_char(r.rqst_dttm,'yyyy/mm/dd') rqst_dt " +  
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
				mediRqListItemDTO dto = new mediRqListItemDTO();

				dto.setSicId(rs.getString("SIC_ID"));
				dto.setRqstNo(rs.getInt("RQST_NO"));
				dto.setRqstTy(rs.getString("RQST_TY"));
				dto.setHosName(rs.getString("HOS_NAME"));
				dto.setRqstDttm(rs.getString("RQST_DT"));
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
