package kcrDAO;

import java.sql.SQLException;

import command.DAO;
import lastdto.declarationDTO;

public class DeclarationDAO extends DAO{

	public int declaration(declarationDTO dto) {
		int r = 0;
		String sql = "insert into declaration"
				+ " (dec_no, sic_id, hos_id, dec_cont)"
				+ " values"
				+ " (dec_seq.nextval, ?, ?, ?)";
		try {
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, dto.getSicId());
			pstmt.setString(2, dto.getHosId());
			pstmt.setString(3, dto.getDecCont());
			
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return r;
	}

}
