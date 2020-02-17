package kcrDAO;

import java.sql.SQLException;
import java.util.ArrayList;

import co.yedam.app.board.BoardDTO;
import dto.mediRqstDTO;
import kty.DAO;

public class MediRqstDAO extends DAO {

	//  전체 목록 
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
	
	
	// 단건 조회
		public BoardDTO selectOne(int no) {
			BoardDTO dto = new BoardDTO();
			try {
				String sql = "select * from board where no=?";
				psmt = conn.prepareStatement(sql);
				psmt.setInt(1, no);
				rs = psmt.executeQuery();
				if(rs.next()) { //단건 조회기 때문에 if로
					dto.setNo(rs.getInt("no"));
					dto.setPoster(rs.getString("poster"));
					dto.setSubject(rs.getString("subject"));
					dto.setContents(rs.getString("contents"));
					//dto.setLastpost(rs.getDate("lastpost"));
					dto.setViews(rs.getInt("views"));
				}
			} catch(Exception e) {
				e.printStackTrace();
			} finally {
				close();
			}
			
			return dto;
		}
	
	
	
}
