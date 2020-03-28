package kimmj;

import java.sql.SQLException;
import java.util.ArrayList;

import kty.DAO;
import lastdto.hosJoinMemberDTO;

public class hosDAO extends DAO {
	public static String sql;
	
	// 전체 리스트
	public ArrayList<hosJoinMemberDTO> select() {
		ArrayList<hosJoinMemberDTO> list = new ArrayList<>();
		sql = "SELECT hos_name, hos_id, "
				+ " (SELECT hos_rank FROM hos_stt s WHERE h.hos_id=s.hos_id) hos_rank, "
				+ " (SELECT dec_no FROM decalaration d WHERE h.hos_id=d.hos_id) dec_no "
				+ "FROM hos_member h";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				hosJoinMemberDTO dto = new hosJoinMemberDTO();
				dto.setHosName("hos_name");
				dto.setHosId("hos_ID");
				dto.setHosRank("hos_rank");
				dto.setDecNo(rs.getInt("dec_no"));
				list.add(dto);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close();
			}
			return list;
		}
	
	
	// 단건 조회
	public hosJoinMemberDTO selectone(String hos_id) {
		hosJoinMemberDTO dto = new hosJoinMemberDTO();
		sql = "";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, hos_id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				dto.setHosName("hos_name");
				dto.setHosId("hos_ID");
				dto.setHosBizno("hos_bizno");
				dto.setHosPhone("hos_Phone");
				dto.setHosRank("hos_rank");
				dto.setBizTime("biz_time");
				dto.setDecNo(rs.getInt("dec_no"));
				dto.setDecStt("dec_stt");
				dto.setDecDttm(rs.getDate("dec_dttm"));
				dto.setRvCount(rs.getInt("rv_no"));
				dto.setStarPoint(rs.getInt("star_point"));
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return dto;
	}
	
	
	// 등급별 조회
	public ArrayList<hosJoinMemberDTO> selectrank(String hos_rank) {
		ArrayList<hosJoinMemberDTO> list = new ArrayList<>();
		sql = "SELECT * FROM hos_member WHERE hos_rank=?";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				hosJoinMemberDTO dto = new hosJoinMemberDTO();
				dto.setHosName("hos_name");
				dto.setHosId("hos_ID");
				dto.setHosBizno("hos_bizno");
				dto.setHosPhone("hos_Phone");
				dto.setHosRank("hos_rank");
				dto.setBizTime("biz_time");
				dto.setDecNo(rs.getInt("dec_no"));
				dto.setDecStt("dec_stt");
				dto.setDecDttm(rs.getDate("dec_dttm"));
				dto.setRvCount(rs.getInt("rv_no"));
				dto.setStarPoint(rs.getInt("star_point"));
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


