package kcr;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import command.DAO;
import lastdto.mediRqListItemDTO;


public class MediRqListItemDAO extends DAO {
	
	// 페이징 (진료전,진료완료모두)
	// 진료신청 전체 리스트의 전체 건수 구하기.
	public int cntAll(String id, String type, String doneStatus) {
		int totalDataRows = 0;
		String sql = "SELECT count(*) cnt " +
					 " FROM MEDIRQLISTITEM ";
		if (doneStatus.equals("before")) { //진료완료가 아닌 경우				
			sql +=	 "  WHERE NOT MCTT_STT = 'Y' "; 
		}
		if (doneStatus.equals("after")) { //진료완료인 경우				
			sql +=	 "  WHERE MCTT_STT = 'Y' "; 
		}
		    sql +=	"   AND SIC_ID = ? " ;
		if (type.equals("tmr")) { // 접수목록구하려면		
			sql +=	"   AND RQST_TY        = 'D001'" ;
		} 
		if (type.equals("res")) { // 예약목록구하려면	
			sql +=	"   AND RQST_TY        = 'D002'" ;
		}
		if (type.equals("cancel")) { // 취소목록구하려면	(진료완료인 경우 해당없음)
			sql +=	"   AND RQST_TY IN ('D003', 'D004')";
		}			
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			System.out.println(sql);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				totalDataRows = rs.getInt("cnt");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		System.out.println(totalDataRows);
		return totalDataRows;
	}
	
	
	// 진료신청 전체 리스트 _ 페이지별 표시범위 설정하여 리스트 가져옴.
	// 진료신청목록, 진료완료목록페이지
	public List<mediRqListItemDTO> selectAll(String id, String type, String firstIndex, String lastIndex, String doneStatus) {
		List<mediRqListItemDTO> list = new ArrayList<>();
		String sql = "SELECT *" + 
						"FROM" + 
						"  (SELECT RQST_NO," + 
						"    SIC_ID," + 
						"    RQST_DT," + 
						"    RQST_TY," + 
						"    HOS_NAME," + 
						"    MCTT_STT," + 
						"    ROWNUM RNUM" + 
						"  FROM" + 
						"    (SELECT *" + 
						"    FROM MEDIRQLISTITEM";
		if (doneStatus.equals("before")) { // 진료신청목록(진료전인경우)		
			sql +=		"    WHERE NOT MCTT_STT = 'Y'" ;
		} 
		if (doneStatus.equals("after")) { // 진료이력목록(진료후인경우)		
			sql +=		"    WHERE MCTT_STT = 'Y'" ;
		} 
			sql +=		"    AND SIC_ID         = ?";
		if (type.equals("tmr")) { // 접수목록구하려면		
			sql +=	"   AND RQST_TY        = 'D001'" ;
		} 
		if (type.equals("res")) { // 예약목록구하려면	
			sql +=	"   AND RQST_TY        = 'D002'" ;
		}
		if (type.equals("cancel")) { // 취소목록구하려면	(진료완료인 경우 해당없음)
			sql +=	"   AND RQST_TY IN ('D003', 'D004')";
		}		
		sql += "   ORDER BY RQST_NO DESC" + 
			   "   )" + 
			   " WHERE ROWNUM <= " + lastIndex +
			   "  )" + 
			   "WHERE rnum >= " + firstIndex ;
		try {
			System.out.println(sql);
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
		System.out.println(list);
		return list;
	}
	
//	// 진료이력목록(진료완료한 목록)
//	public List<mediRqListItemDTO> selectDone(String id, String type) {
//		List<mediRqListItemDTO> list = new ArrayList<>();
//		String sql = "SELECT * " +
//					 " FROM MEDIRQLISTITEM "  +
//					 " WHERE MCTT_STT = 'Y' " +  //진료완료인 경우
//					 " AND SIC_ID = ? ";	
//		 if (type.equals("tmr")) {// 접수목록인 경우
//			 sql += " AND RQST_TY = 'D001'";
//		 }
//		 if (type.equals("res")) {// 예약목록
//			sql += " AND RQST_TY = 'D002'";
//		 }
//		sql +=	" ORDER BY RQST_NO DESC";
//		try {
//			pstmt = conn.prepareStatement(sql);
//			pstmt.setString(1, id);
//			rs = pstmt.executeQuery();
//			while (rs.next()) {
//				mediRqListItemDTO dto = new mediRqListItemDTO();
//				dto.setRqstNo(rs.getInt("RQST_NO"));
//				dto.setSicId(rs.getString("SIC_ID"));
//				dto.setRqstDttm(rs.getString("RQST_DT"));
//				dto.setRqstTy(rs.getString("RQST_TY"));
//				dto.setHosName(rs.getString("HOS_NAME"));
//				list.add(dto);
//			}
//		} catch (SQLException e) {
//			e.printStackTrace();
//		} finally {
//			close();
//		}
//		return list;
//	}

//	// 진료신청 전체 리스트 (진료완료 아닌 목록)
//	//  신청현황상세, 진료신청완료페이지
//	public List<mediRqListItemDTO> selectAll(String id, String type) {
//		List<mediRqListItemDTO> list = new ArrayList<>();
//		String sql = null;
//		if (type.equals("all")) { // 전체목록
//			sql= "SELECT * " +
//					" FROM MEDIRQLISTITEM "  +
//					" WHERE NOT MCTT_STT = 'Y' " +  //진료완료가 아닌 경우
//					" AND SIC_ID = ? " + 					
//					" ORDER BY RQST_NO DESC";
//		} else if (type.equals("tmr")) {// 접수목록
//			sql = "SELECT * " +
//					" FROM MEDIRQLISTITEM "  +
//					" WHERE NOT MCTT_STT = 'Y' " +  //진료완료가 아닌 경우
//					" AND RQST_TY = 'D001' " +  //접수인 경우
//					" AND SIC_ID = ? " + 					
//					" ORDER BY RQST_NO DESC";
//		} else if (type.equals("res")) {// 예약목록
//			sql = "SELECT * " +
//					" FROM MEDIRQLISTITEM "  +
//					" WHERE NOT MCTT_STT = 'Y' " +  //진료완료가 아닌 경우
//					" AND RQST_TY = 'D002' " +  //예약인 경우
//					" AND SIC_ID = ? " + 					
//					" ORDER BY RQST_NO DESC";
//		} else if (type.equals("cancel")) {// 취소목록" 
//			sql = "SELECT * " +
//					" FROM MEDIRQLISTITEM "  +
//					" WHERE NOT MCTT_STT = 'Y' " +  //진료완료가 아닌 경우
//					" AND RQST_TY IN ('D003', 'D004') " +  //취소인 경우
//					" AND SIC_ID = ? " + 					
//					" ORDER BY RQST_NO DESC";
//		}
//		try {
//			System.out.println(sql);
//			pstmt = conn.prepareStatement(sql);
//			pstmt.setString(1, id);
//			rs = pstmt.executeQuery();
//			while (rs.next()) {
//				mediRqListItemDTO dto = new mediRqListItemDTO();
//				dto.setRqstNo(rs.getInt("RQST_NO"));
//				dto.setSicId(rs.getString("SIC_ID"));
//				dto.setRqstDttm(rs.getString("RQST_DT"));
//				dto.setRqstTy(rs.getString("RQST_TY"));
//				dto.setHosName(rs.getString("HOS_NAME"));
//				list.add(dto);
//			}
//		} catch (SQLException e) {
//			e.printStackTrace();
//		} finally {
//			close();
//		}
//		System.out.println(list);
//		return list;
//	}
	
	



}
