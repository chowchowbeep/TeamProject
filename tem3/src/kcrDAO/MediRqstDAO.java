package kcrDAO;

import java.sql.SQLException;
import java.util.ArrayList;

import dto.mediRqstDTO;
import kty.DAO;

public class MediRqstDAO extends DAO {

	//진료신청현황 전체 
	public ArrayList<mediRqstDTO> selectAll(String id) {
		ArrayList<mediRqstDTO> list = new ArrayList<>();
		String sql = "SELECT * FROM MEDI_RQST"
				+ " WHERE SIC_ID = ? ";
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
	
	
	
	
	
}
