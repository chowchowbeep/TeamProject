package kcrDAO;

import java.sql.CallableStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import kty.DAO;
import lastdto.mediRqstDTO;

public class MediRqstDAO extends DAO {

	// 전체 리스트
	public List<mediRqstDTO> selectAll(String id, String type) {
		List<mediRqstDTO> list = new ArrayList<>();
		String sql = null;
		if (type == "all") { // 전체목록
			sql = "SELECT r.*, h.*" + " FROM MEDI_RQST r, HOS_MEMBER h" + " where r.HOS_ID = h.HOS_ID"
					+ " and SIC_ID = ?" + " order by r.rqst_dttm desc, rqst_no desc";
		} else if (type == "tmr") {// 접수목록
			sql = "SELECT r.*, h.*" + " FROM MEDI_RQST r, HOS_MEMBER h" + " where r.HOS_ID = h.HOS_ID"
					+ " and SIC_ID = ?" + " and RQST_TY = 'D001'" //접수
					+ " order by r.rqst_dttm desc, rqst_no desc";
		} else if (type == "res") {// 예약목록
			sql = "SELECT r.*, h.*" + " FROM MEDI_RQST r, HOS_MEMBER h" + " where r.HOS_ID = h.HOS_ID"
					+ " and SIC_ID = ?" + " and RQST_TY = 'D002'" //예약
					+ " order by r.rqst_dttm desc, rqst_no desc";
		} else if (type == "cancel") {// 취소목록
			sql = "SELECT r.*, h.*" + " FROM MEDI_RQST r, HOS_MEMBER h" + " where r.HOS_ID = h.HOS_ID"
					+ " and SIC_ID = ?" + " and RQST_TY in ('D003', 'D004')" //취소
					+ " order by r.rqst_dttm desc, rqst_no desc";
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

	// 진료이력목록(진료완료한 목록)
	public List<mediRqstDTO> selectDone(String id, String type) {
		List<mediRqstDTO> list = new ArrayList<>();
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

	// 당일접수 신청추가
	public int tmrInsert(mediRqstDTO dto) {
		int r = 0;
		
		String sql;
		// 기록물을 선택하지 않은 경우를 위해서
		if(dto.getDcryNo()!=0) {
			sql = "insert into MEDI_RQST" 
					+ "(RQST_NO, SIC_ID,  HOS_ID, " 
					+ "ARTR_NO, RQST_TY, DCRY_NO, MSG, IFTIME)"
							+ "values" 
					+ "(RQST_SEQ.nextval, ?, ?, " 
					+ "?, 'D001', ? ,?, ?)"; // D001 당일접수
		} else {
			sql = "insert into MEDI_RQST" 
					+ "(RQST_NO, SIC_ID,  HOS_ID, " 
					+ "ARTR_NO, RQST_TY, MSG, IFTIME)"
							+ "values" 
					+ "(RQST_SEQ.nextval, ?, ?, " 
					+ "?, 'D001', ?, ?)"; // D001 당일접수
		}
		try {
			if(dto.getDcryNo()!=0) {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, dto.getSicId());
				pstmt.setString(2, dto.getHosId());
				pstmt.setInt(3, dto.getArtrNo());
				pstmt.setInt(4, dto.getDcryNo());
				pstmt.setString(5, dto.getMsg());
				pstmt.setString(6, dto.getIfTime());
			} else {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, dto.getSicId());
				pstmt.setString(2, dto.getHosId());
				pstmt.setInt(3, dto.getArtrNo());
				pstmt.setString(4, dto.getMsg());
				pstmt.setString(5, dto.getIfTime());
			}

			r = pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return r;
	}

}
