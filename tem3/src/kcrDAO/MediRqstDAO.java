package kcrDAO;

import java.sql.CallableStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import kty.DAO;
import lastdto.mediRqstDTO;

public class MediRqstDAO extends DAO {

	// 전체 목록
	public List<mediRqstDTO> selectAll(String id) {
		List<mediRqstDTO> list = new ArrayList<>();
		String sql = "SELECT * FROM MEDI_RQST" + " WHERE SIC_ID = ?";
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
				dto.setMsg(rs.getString("DCRY_NO"));
				dto.setDcryNo(rs.getInt("MSG"));

				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		close();
		return list;
	}

	// 당일접수 신청추가
	public int tmrInsert(mediRqstDTO dto) {
		int r = 0;
		String sql = "insert into MEDI_RQST" + 
				"(RQST_NO, SIC_ID,  HOS_ID, "
				+ "ARTR_NO, RQST_TY, DCRY_NO, MSG)" + 
				"values"
				+ "(RQST_SEQ.nextval, ?, ?, "
				+ "?, 'D001', ? ,?)"; //D001 당일접수
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getSicId());
			pstmt.setString(2, dto.getHosId());
			pstmt.setInt(3, dto.getArtrNo());
			pstmt.setInt(4, dto.getDcryNo());
			pstmt.setString(5, dto.getMsg());
	        r = pstmt.executeUpdate();
	        
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return r;
	}

}
