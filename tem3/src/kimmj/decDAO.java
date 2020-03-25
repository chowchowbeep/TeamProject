package kimmj;

import java.sql.*;
import java.util.ArrayList;
import kty.DAO;
import lastdto.declarationDTO;

public class decDAO extends DAO {
	public static String sql;
	
	public ArrayList<declarationDTO> select() {
		ArrayList<declarationDTO> list = new ArrayList<>();
		sql = "SELECT sic_id, hos_id, dec_dttm from declaration";
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
		} finally {
			close();
		}
		return list;
	}
	
	
	public declarationDTO selectone(String sic_id) {
		declarationDTO dto = new declarationDTO();
		sql = "SELECT sic_id, hos_id, dec_dttm, dec_cont, dec_no from declaration where sic_id=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, sic_id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				dto.setSicId(rs.getString("sic_id"));
				dto.setHosId(rs.getString("hos_id"));
				dto.setDecDttm(rs.getDate("dec_dttm"));
				dto.setDecCont(rs.getString("dec_cont"));
				dto.setDecNo(rs.getInt("dec_no"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return dto;
	}
	
	
	
	
	
	public int getprd(String p_no, String hos_id) {
		int decyn = 0;
		try {
			cstmt = conn.prepareCall("{call y_dec(?,?)}");
			cstmt.setString(1, hos_id);
			cstmt.setString(2, p_no);
			decyn = cstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
				close();
		}
		return decyn;
	}
}
