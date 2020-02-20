package kcrDAO;

import kty.DAO;
import lastdto.mediRqdetailDTO;
import lastdto.mediRqstDTO;

public class MediRqdetailDAO extends DAO {
	
	//예상대기인원수 
	

	// 진료신청상세 단건조회__ 
	// 신청현황상세, 진료신청완료페이지, 
	// 진료이력(mctt_stt 진료상태가 후(Y)인지는 사전에 필터링되어 있어야함)
	public mediRqdetailDTO selectOne(int rqstNo) {
		mediRqdetailDTO dto = new mediRqdetailDTO();
		try {
			String sql = "SELECT r.*, h.hos_name, h.hos_phone, h.hos_addr,  a.artr_name " + 
					"FROM MEDI_RQST r " + 
					"join HOS_MEMBER h on r.HOS_ID = h.HOS_ID " + 
					"join artr_info a on a.artr_no = r.artr_no " +
					"where r. rqst_no = ?" + 
					"order by r.rqst_dttm desc, r.rqst_no desc";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, rqstNo);
			rs = pstmt.executeQuery();
			if (rs.next()) {
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
				
				dto.setHosName(rs.getString("HOS_NAME"));
				dto.setHosPhone(rs.getString("HOS_PHONE"));
				dto.setHosAddr(rs.getString("HOS_ADDR"));
				
				dto.setArtr_name(rs.getString("ARTR_NAME"));
				dto.setArtr_sub(rs.getString("ARTR_SUB"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return dto;
	}
	
	
	// 당일접수 신청추가_dto수정필요
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
