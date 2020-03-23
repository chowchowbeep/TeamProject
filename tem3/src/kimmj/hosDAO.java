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
		sql = "SELECT * FROM hos_member";
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
				dto.setHosStart("biz_start");
				dto.setHosLast("biz_last");
				dto.setDecNo(rs.getInt("dec_no"));
				dto.setDecStt("dec_stt");
				dto.setDecDttm(rs.getDate("dec_dttm"));
				dto.setRvNo(rs.getInt("rv_no"));
				dto.setStarPoint(rs.getInt("star_point"));
				list.add(dto);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return list;
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
				dto.setHosStart("biz_start");
				dto.setHosLast("biz_last");
				dto.setDecNo(rs.getInt("dec_no"));
				dto.setDecStt("dec_stt");
				dto.setDecDttm(rs.getDate("dec_dttm"));
				dto.setRvNo(rs.getInt("rv_no"));
				dto.setStarPoint(rs.getInt("star_point"));
				list.add(dto);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return list;
		}
	
	
	
	// 이름 조회
	public ArrayList<hosJoinMemberDTO> selectname(String hos_name) {
		ArrayList<hosJoinMemberDTO> list = new ArrayList<>();
		sql = "SELECT * FROM hos_member WHERE hos_name=?";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				hosJoinMemberDTO dto = new hosJoinMemberDTO();
				dto.setHosId("hos_ID");
				dto.setHosBizno("hos_bizno");
				dto.setHosPhone("hos_Phone");
				dto.setHosRank("hos_rank");
				dto.setHosStart("biz_start");
				dto.setHosLast("biz_last");
				dto.setDecNo(rs.getInt("dec_no"));
				dto.setDecStt("dec_stt");
				dto.setDecDttm(rs.getDate("dec_dttm"));
				dto.setRvNo(rs.getInt("rv_no"));
				dto.setStarPoint(rs.getInt("star_point"));
				list.add(dto);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return list;
		}
	
	
	
	// 전화전호 보회
	public ArrayList<hosJoinMemberDTO> selectph(String hos_phone) {
		ArrayList<hosJoinMemberDTO> list = new ArrayList<>();
		sql = "SELECT * FROM hos_member WHERE hos_phone=?";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				hosJoinMemberDTO dto = new hosJoinMemberDTO();
				dto.setHosName("hos_name");
				dto.setHosId("hos_ID");
				dto.setHosBizno("hos_bizno");
				dto.setHosRank("hos_rank");
				dto.setHosStart("biz_start");
				dto.setHosLast("biz_last");
				dto.setDecNo(rs.getInt("dec_no"));
				dto.setDecStt("dec_stt");
				dto.setDecDttm(rs.getDate("dec_dttm"));
				dto.setRvNo(rs.getInt("rv_no"));
				dto.setStarPoint(rs.getInt("star_point"));
				list.add(dto);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return list;
		}
	
	
	// 등급별, 이름 조회
	public ArrayList<hosJoinMemberDTO> selectrankname(String hos_rank, String hos_name) {
		ArrayList<hosJoinMemberDTO> list = new ArrayList<>();
		sql = "SELECT * FROM hos_member WHERE hos_rank=? AND hos_name=?";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				hosJoinMemberDTO dto = new hosJoinMemberDTO();
				dto.setHosId("hos_ID");
				dto.setHosBizno("hos_bizno");
				dto.setHosPhone("hos_Phone");
				dto.setHosStart("biz_start");
				dto.setHosLast("biz_last");
				dto.setDecNo(rs.getInt("dec_no"));
				dto.setDecStt("dec_stt");
				dto.setDecDttm(rs.getDate("dec_dttm"));
				dto.setRvNo(rs.getInt("rv_no"));
				dto.setStarPoint(rs.getInt("star_point"));
				list.add(dto);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return list;
		}
	
	
	
	// 등급별, 전화번호 조회
	public ArrayList<hosJoinMemberDTO> selectrankph(String hos_rank, String hos_phone) {
		ArrayList<hosJoinMemberDTO> list = new ArrayList<>();
		sql = "SELECT * FROM hos_member WHERE hos_rank=? AND hos_phone=?";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				hosJoinMemberDTO dto = new hosJoinMemberDTO();
				dto.setHosName("hos_name");
				dto.setHosId("hos_ID");
				dto.setHosBizno("hos_bizno");
				dto.setHosStart("biz_start");
				dto.setHosLast("biz_last");
				dto.setDecNo(rs.getInt("dec_no"));
				dto.setDecStt("dec_stt");
				dto.setDecDttm(rs.getDate("dec_dttm"));
				dto.setRvNo(rs.getInt("rv_no"));
				dto.setStarPoint(rs.getInt("star_point"));
				list.add(dto);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return list;
		}
	
	
	
	
	// 이름, 전화번호 조회
	public ArrayList<hosJoinMemberDTO> selectnameph(String hos_name, String hos_phone) {
		ArrayList<hosJoinMemberDTO> list = new ArrayList<>();
		sql = "SELECT * FROM hos_member WHERE hos_name=? AND hos_phone=?";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				hosJoinMemberDTO dto = new hosJoinMemberDTO();
				dto.setHosId("hos_ID");
				dto.setHosBizno("hos_bizno");
				dto.setHosRank("hos_rank");
				dto.setHosStart("biz_start");
				dto.setHosLast("biz_last");
				dto.setDecNo(rs.getInt("dec_no"));
				dto.setDecStt("dec_stt");
				dto.setDecDttm(rs.getDate("dec_dttm"));
				dto.setRvNo(rs.getInt("rv_no"));
				dto.setStarPoint(rs.getInt("star_point"));
				list.add(dto);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return list;
		}
	
	
	
	// 등급별, 이름, 전화번호 조회
	public ArrayList<hosJoinMemberDTO> selectranknameph(String hos_rank, String hos_name, String hos_phone) {
		ArrayList<hosJoinMemberDTO> list = new ArrayList<>();
		sql = "SELECT * FROM hos_member WHERE hos_rank=? AND hos_name=? AND hos_phone=?";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				hosJoinMemberDTO dto = new hosJoinMemberDTO();
				dto.setHosId("hos_ID");
				dto.setHosBizno("hos_bizno");
				dto.setHosStart("biz_start");
				dto.setHosLast("biz_last");
				dto.setDecNo(rs.getInt("dec_no"));
				dto.setDecStt("dec_stt");
				dto.setDecDttm(rs.getDate("dec_dttm"));
				dto.setRvNo(rs.getInt("rv_no"));
				dto.setStarPoint(rs.getInt("star_point"));
				list.add(dto);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return list;
		}
}


