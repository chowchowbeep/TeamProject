package kimmj;

import java.sql.*;
import java.util.ArrayList;
import kty.DAO;
import lastdto.declarationDTO;

public class decDAO extends DAO {
	public static String sql;
	
	public ArrayList<declarationDTO> select() {
		ArrayList<declarationDTO> list = new ArrayList<>();
		sql = "SELECT * FROM declaration";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				declarationDTO dto = new declarationDTO();
				dto.setSicId(rs.getString("sic_id"));
				dto.setHosId(rs.getString("hos_id"));
				dto.setDecDttm(rs.getDate("dec_dttm"));
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	
	public String getprd() {
		String decyn = null;
		try {
			cstmt = conn.prepareCall("{call y_dec(?,?,?)}");
			cstmt.setInt(1, rs.getInt("dec_no"));
			cstmt.setString(2, rs.getString("hos_id"));
			cstmt.registerOutParameter(3, java.sql.Types.VARCHAR);
			cstmt.executeQuery();
			decyn = cstmt.getString(3);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
				close();
		}
		return decyn;
	}
}
