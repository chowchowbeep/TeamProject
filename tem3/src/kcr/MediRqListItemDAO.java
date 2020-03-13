package kcr;

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
			sql= "SELECT * " +
					" FROM MEDIRQLISTITEM "  +
					" WHERE NOT MCTT_STT = 'Y' " +  //진료완료가 아닌 경우
					" AND SIC_ID = ? " + 					
					" ORDER BY RQST_NO DESC";
		} else if (type == "tmr") {// 접수목록
			sql = "SELECT * " +
					" FROM MEDIRQLISTITEM "  +
					" WHERE NOT MCTT_STT = 'Y' " +  //진료완료가 아닌 경우
					" AND RQST_TY = 'D001' " +  //접수인 경우
					" AND SIC_ID = ? " + 					
					" ORDER BY RQST_NO DESC";
		} else if (type == "res") {// 예약목록
			sql = "SELECT * " +
					" FROM MEDIRQLISTITEM "  +
					" WHERE NOT MCTT_STT = 'Y' " +  //진료완료가 아닌 경우
					" AND RQST_TY = 'D002' " +  //예약인 경우
					" AND SIC_ID = ? " + 					
					" ORDER BY RQST_NO DESC";
		} else if (type == "cancel") {// 취소목록" 
			sql = "SELECT * " +
					" FROM MEDIRQLISTITEM "  +
					" WHERE NOT MCTT_STT = 'Y' " +  //진료완료가 아닌 경우
					" AND RQST_TY IN ('D003', 'D004') " +  //취소인 경우
					" AND SIC_ID = ? " + 					
					" ORDER BY RQST_NO DESC";
		}

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				mediRqListItemDTO dto = new mediRqListItemDTO();
				
				dto.setRqstNo(rs.getInt("RQST_NO"));
				dto.setSicId(rs.getString("SIC_ID"));
				dto.setRqstDttm(rs.getString("RQST_DT"));
				dto.setRqstTy(rs.getString("RQST_TY"));
				dto.setHosName(rs.getString("HOS_NAME"));
				
				
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
			sql =   "SELECT * " +
					" FROM MEDIRQLISTITEM "  +
					" WHERE MCTT_STT = 'Y' " +  //진료완료가 아닌 경우
					" AND SIC_ID = ? " + 					
					" ORDER BY RQST_NO DESC"; 
		} else if (type == "tmr") {// 접수목록
			sql = "SELECT * " +
					" FROM MEDIRQLISTITEM "  +
					" WHERE MCTT_STT = 'Y' " +  //진료완료가 아닌 경우
					" AND SIC_ID = ? " + 	
					" AND RQST_TY = 'D001'" + //접수인경우
					" ORDER BY RQST_NO DESC";  
		} else if (type == "res") {// 예약목록
			sql =  "SELECT * " +
					" FROM MEDIRQLISTITEM "  +
					" WHERE MCTT_STT = 'Y' " +  //진료완료가 아닌 경우
					" AND SIC_ID = ? " + 	
					" AND RQST_TY = 'D002'" + //예약인경우
					" ORDER BY RQST_NO DESC";  
		}
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				mediRqListItemDTO dto = new mediRqListItemDTO();

				dto.setRqstNo(rs.getInt("RQST_NO"));
				dto.setSicId(rs.getString("SIC_ID"));
				dto.setRqstDttm(rs.getString("RQST_DT"));
				dto.setRqstTy(rs.getString("RQST_TY"));
				dto.setHosName(rs.getString("HOS_NAME"));
				
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
