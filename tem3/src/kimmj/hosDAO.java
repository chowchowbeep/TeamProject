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
		sql = "SELECT h.hos_name, h.hos_id, h.hos_bizno, h.hos_phone, h.biz_time, d.dec_no, d.dec_stt, d.dec_dttm, r.rv_no, r.star_point, hh.hos_rank " +
			  "FROM hos_member h, declaration d, review r, hos_stt hh " +
			  "where h.hos_id=d.hos_id and h.hos_id=r.hos_id and h.hos_id=hh.hos_id ";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				hosJoinMemberDTO dto = new hosJoinMemberDTO();
				dto.setHosName(rs.getString("hos_name"));
				dto.setHosId(rs.getString("hos_ID"));
				dto.setHosBizno(rs.getString("hos_bizno"));
				dto.setHosPhone(rs.getString("hos_Phone"));
				dto.setHosRank(rs.getString("hos_rank"));
				dto.setHosBizTime(rs.getString("biz_time"));
				dto.setDecNo(rs.getInt("dec_no"));
				dto.setDecStt("dec_stt");
				dto.setDecDttm(rs.getDate("dec_dttm"));
				dto.setRvNo(rs.getInt("rv_no"));
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
	
	
	// 단건 조회
	public hosJoinMemberDTO selectone(String hos_id) {
		System.out.println("at dao" +hos_id);
		hosJoinMemberDTO dto = new hosJoinMemberDTO();
		sql = "SELECT h.hos_name, h.hos_id, h.hos_bizno, h.hos_phone, h.biz_time, d.dec_no, d.dec_stt, d.dec_dttm, r.rv_no, r.star_point, hh.hos_rank " +
			  "FROM hos_member h, declaration d, review r, hos_stt hh " +
			  "where h.hos_id=d.hos_id and h.hos_id=r.hos_id and h.hos_id=hh.hos_id "
			  + "and h.hos_id=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, hos_id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				dto.setHosName(rs.getString("hos_name"));
				dto.setHosId(rs.getString("hos_ID"));
				dto.setHosBizno(rs.getString("hos_bizno"));
				dto.setHosPhone(rs.getString("hos_Phone"));
				dto.setHosRank(rs.getString("hos_rank"));
				dto.setHosBizTime(rs.getString("biz_time"));
				dto.setDecNo(rs.getInt("dec_no"));
				dto.setDecStt("dec_stt");
				dto.setDecDttm(rs.getDate("dec_dttm"));
				dto.setRvNo(rs.getInt("rv_no"));
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
				dto.setHosBizTime("biz_time");
				dto.setDecNo(rs.getInt("dec_no"));
				dto.setDecStt("dec_stt");
				dto.setDecDttm(rs.getDate("dec_dttm"));
				dto.setRvNo(rs.getInt("rv_no"));
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
				dto.setHosBizTime("biz_time");
				dto.setDecNo(rs.getInt("dec_no"));
				dto.setDecStt("dec_stt");
				dto.setDecDttm(rs.getDate("dec_dttm"));
				dto.setRvNo(rs.getInt("rv_no"));
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
				dto.setHosBizTime("biz_time");
				dto.setDecNo(rs.getInt("dec_no"));
				dto.setDecStt("dec_stt");
				dto.setDecDttm(rs.getDate("dec_dttm"));
				dto.setRvNo(rs.getInt("rv_no"));
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
				dto.setHosBizTime("biz_time");
				dto.setDecNo(rs.getInt("dec_no"));
				dto.setDecStt("dec_stt");
				dto.setDecDttm(rs.getDate("dec_dttm"));
				dto.setRvNo(rs.getInt("rv_no"));
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
				dto.setHosBizTime("biz_time");
				dto.setDecNo(rs.getInt("dec_no"));
				dto.setDecStt("dec_stt");
				dto.setDecDttm(rs.getDate("dec_dttm"));
				dto.setRvNo(rs.getInt("rv_no"));
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
				dto.setHosBizTime("biz_time");
				dto.setDecNo(rs.getInt("dec_no"));
				dto.setDecStt("dec_stt");
				dto.setDecDttm(rs.getDate("dec_dttm"));
				dto.setRvNo(rs.getInt("rv_no"));
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
				dto.setHosBizTime("biz_time");
				dto.setDecNo(rs.getInt("dec_no"));
				dto.setDecStt("dec_stt");
				dto.setDecDttm(rs.getDate("dec_dttm"));
				dto.setRvNo(rs.getInt("rv_no"));
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


