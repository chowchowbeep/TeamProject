package kcrDAO;

import java.sql.SQLException;

import command.DAO;
import lastdto.declarationDTO;

public class DeclarationDAO extends DAO{

	public int declaration(declarationDTO dto) {
		int r = 0;
		String sql = "INSERT INTO DECLARATION"
				+ " (DEC_NO, SIC_ID, HOS_ID, DEC_CONT)"
				+ " VALUES"
				+ " (DEC_SEQ.NEXTVAL, ?, ?, ?)";
		try {
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, dto.getSicId());
			pstmt.setString(2, dto.getHosId());
			pstmt.setString(3, dto.getDecCont());
			
			r = pstmt.executeUpdate();
			System.out.println("==========================");
			System.out.println(r+ "건의 신고내용 입력완료");
			System.out.println("==========================");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return r;
	}

}
