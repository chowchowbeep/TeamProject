package kcrDAO;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import kty.DAO;
import lastdto.hosMemberDTO;

public class HosInfoDAO extends DAO {

	// 전체리스트
	public List<hosMemberDTO> selectAll(String id, String type) {
		List<hosMemberDTO> list = new ArrayList<>();
		String sql = null;
		if (type == "all") { // 전체목록
			sql = "SELECT r.*, h.*" + " FROM MEDI_RQST r, HOS_MEMBER h" + " where r.HOS_ID = h.HOS_ID"
					+ " and SIC_ID = ?" + " order by r.rqst_dttm desc, rqst_no desc";
		} else if (type == "tmr") {// 접수목록
			sql = "SELECT r.*, h.*" + " FROM MEDI_RQST r, HOS_MEMBER h" + " where r.HOS_ID = h.HOS_ID"
					+ " and SIC_ID = ?" + " and RQST_TY = 'D001'" + " order by r.rqst_dttm desc, rqst_no desc";
		} else if (type == "res") {// 예약목록
			sql = "SELECT r.*, h.*" + " FROM MEDI_RQST r, HOS_MEMBER h" + " where r.HOS_ID = h.HOS_ID"
					+ " and SIC_ID = ?" + " and RQST_TY = 'D002'" + " order by r.rqst_dttm desc, rqst_no desc";
		} else if (type == "cancel") {// 취소목록
			sql = "SELECT r.*, h.*" + " FROM MEDI_RQST r, HOS_MEMBER h" + " where r.HOS_ID = h.HOS_ID"
					+ " and SIC_ID = ?" + " and RQST_TY in ('D003', 'D004')"
					+ " order by r.rqst_dttm desc, rqst_no desc";
		}

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				hosMemberDTO dto = new hosMemberDTO();
				dto.setHosId(rs.getString("HOS_ID"));
				dto.setHosBizno(rs.getString("HOS_BIZNO"));
				dto.setHosName(rs.getString("HOS_NAME"));
				dto.setHosPhone(rs.getString("HOS_PHONE"));
				dto.setHosPw(rs.getString("HOS_PW"));
				dto.setHosAddr(rs.getString("HOS_ADDR"));
				dto.setHosLat(rs.getInt("HOS_LAT"));
				dto.setHosLng(rs.getInt("HOS_LNG"));
				dto.setHosBizTime(rs.getString("BIZ_TIME"));

				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return list;
	}

	// 진료이력(완료한진료) 목록
	public List<hosMemberDTO> selectDone(String id, String type) {
		List<hosMemberDTO> list = new ArrayList<>();
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
				hosMemberDTO dto = new hosMemberDTO();
				dto.setHosId(rs.getString("HOS_ID"));
				dto.setHosBizno(rs.getString("HOS_BIZNO"));
				dto.setHosName(rs.getString("HOS_NAME"));
				dto.setHosPhone(rs.getString("HOS_PHONE"));
				dto.setHosPw(rs.getString("HOS_PW"));
				dto.setHosAddr(rs.getString("HOS_ADDR"));
				dto.setHosLat(rs.getInt("HOS_LAT"));
				dto.setHosLng(rs.getInt("HOS_LNG"));
				dto.setHosBizTime(rs.getString("BIZ_TIME"));

				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}

	// 단건조회
	public hosMemberDTO selectOne(int hosNo) {
		hosMemberDTO dto = new hosMemberDTO();
		try {
			String sql = "SELECT * FROM HOS_MEMBER" + " WHERE HOS_ID = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, hosNo);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				dto.setHosBizno(rs.getString("HOS_BIZNO"));
				dto.setHosName(rs.getString("HOS_NAME"));
				dto.setHosPhone(rs.getString("HOS_PHONE"));
				dto.setHosPw(rs.getString("HOS_PW"));
				dto.setHosAddr(rs.getString("HOS_ADDR"));
				dto.setHosLat(rs.getInt("HOS_LAT"));
				dto.setHosLng(rs.getInt("HOS_LNG"));
				dto.setHosBizTime(rs.getString("BIZ_TIME"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return dto;
	}

}
