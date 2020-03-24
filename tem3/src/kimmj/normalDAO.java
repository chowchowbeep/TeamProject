package kimmj;

import java.sql.SQLException;
import java.util.ArrayList;

import kty.DAO;
import lastdto.sickJoinMemberDTO;

public class normalDAO extends DAO {
	public static String sql;
	
	// 전체 리스트 조회
	public ArrayList<sickJoinMemberDTO> select() {
		ArrayList<sickJoinMemberDTO> list = new ArrayList<>();
		sql = " select sic_id, sic_name, sic_Phone, sic_stt, "+
			  " (select count(rv_no) from review r where r.sic_id=s.sic_id) rv_no, "+
			  " (select start_dttm from penalty p where p.id=s.sic_id) start_dttm "+
			  " from sick_member s";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				sickJoinMemberDTO dto = new sickJoinMemberDTO();
				dto.setSicId(rs.getString("sic_id"));
				dto.setSicName(rs.getString("sic_name"));
				dto.setSicPhone(rs.getString("sic_Phone"));
				dto.setSicStt(rs.getString("sic_stt"));
				dto.setRvNo(rs.getInt("rv_no"));
				dto.setStartDttm(rs.getDate("start_dttm"));
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
	public sickJoinMemberDTO selectone(String sic_id) {
		System.out.println("at dao" +sic_id);
		sickJoinMemberDTO dto = new sickJoinMemberDTO();
		sql = " select sic_id, sic_name, sic_Phone, sic_stt, "+
			  " (select count(rv_no) from review r where r.sic_id=s.sic_id) rv_no, "+
			  " (select start_dttm from penalty p where p.id=s.sic_id) start_dttm "+
			  " from sick_member s where sic_id=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, sic_id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				dto.setSicId(rs.getString("sic_id"));
				dto.setSicName(rs.getString("sic_name"));
				dto.setSicPhone(rs.getString("sic_Phone"));
				dto.setSicStt(rs.getString("sic_stt"));
				dto.setRvNo(rs.getInt("rv_no"));
				dto.setStartDttm(rs.getDate("start_dttm"));
				
				}
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close();
			}
			System.out.println("at dao"+dto.toString());
			return dto;
		}
		
	
	// 등급별 조회
	public ArrayList<sickJoinMemberDTO> selectstt(String sicStt) {
		ArrayList<sickJoinMemberDTO> list = new ArrayList<>();
		sql = "select sic_id, sic_name, sic_phone, sic_stt, " +
			  "(select count(rv_no) from review r where r.sic_id=s.sic_id) rv_no, " +
			  "(select start_dttm from penalty p where p.id=s.sic_id) start_dttm " +
			  "from sick_member s where SIC_STT=?";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				sickJoinMemberDTO dto = new sickJoinMemberDTO();
				dto.setSicId("sic_ID");
				dto.setSicName("sic_name");
				dto.setSicPhone("sic_Phone");
				dto.setRvNo(rs.getInt("rv_no"));
				dto.setStartDttm(rs.getDate("start_dttm"));
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
	public ArrayList<sickJoinMemberDTO> selectname(String sicName) {
		ArrayList<sickJoinMemberDTO> list = new ArrayList<>();
		sql = "select sic_id, sic_name, sic_phone, sic_stt, " +
			  "(select count(rv_no) from review r where r.sic_id=s.sic_id) rv_no, " +
			  "(select start_dttm from penalty p where p.id=s.sic_id) start_dttm " +
			  "from sick_member s where sic_name=?";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				sickJoinMemberDTO dto = new sickJoinMemberDTO();
				dto.setSicId("sic_ID");
				dto.setSicPhone("sic_Phone");
				dto.setSicStt("sic_stt");
				dto.setRvNo(rs.getInt("rv_no"));
				dto.setStartDttm(rs.getDate("start_dttm"));
				list.add(dto);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close();
			}
			return list;
		}
	
	
	// 전화번호 조회
	public ArrayList<sickJoinMemberDTO> selectph(String sicPhone) {
		ArrayList<sickJoinMemberDTO> list = new ArrayList<>();
		sql = "select sic_id, sic_name, sic_phone, sic_stt, " +
			  "(select count(rv_no) from review r where r.sic_id=s.sic_id) rv_no, " +
			  "(select start_dttm from penalty p where p.id=s.sic_id) start_dttm " +
			  "from sick_member s where sic_phone=?";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				sickJoinMemberDTO dto = new sickJoinMemberDTO();
				dto.setSicId("sic_ID");
				dto.setSicName("sic_name");
				dto.setSicStt("sic_stt");
				dto.setRvNo(rs.getInt("rv_no"));
				dto.setStartDttm(rs.getDate("start_dttm"));
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
	public ArrayList<sickJoinMemberDTO> selectsttname(String sicStt, String sicName) {
		ArrayList<sickJoinMemberDTO> list = new ArrayList<>();
		sql = "select sic_id, sic_name, sic_phone, sic_stt, " +
			  "(select count(rv_no) from review r where r.sic_id=s.sic_id) rv_no, " +
			  "(select start_dttm from penalty p where p.id=s.sic_id) start_dttm " +
			  "from sick_member s where sic_stt=? and sic_name=?";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				sickJoinMemberDTO dto = new sickJoinMemberDTO();
				dto.setSicId("sic_ID");
				dto.setSicPhone("sic_Phone");
				dto.setRvNo(rs.getInt("rv_no"));
				dto.setStartDttm(rs.getDate("start_dttm"));
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
	public ArrayList<sickJoinMemberDTO> selectnameph(String sicName, String sicPhone) {
		ArrayList<sickJoinMemberDTO> list = new ArrayList<>();
		sql = "select sic_id, sic_name, sic_phone, sic_stt, " +
			  "(select count(rv_no) from review r where r.sic_id=s.sic_id) rv_no, " +
			  "(select start_dttm from penalty p where p.id=s.sic_id) start_dttm " +
			  "from sick_member s where sic_name=? and sic_phone=?";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				sickJoinMemberDTO dto = new sickJoinMemberDTO();
				dto.setSicId("sic_ID");
				dto.setSicStt("sic_stt");
				dto.setRvNo(rs.getInt("rv_no"));
				dto.setStartDttm(rs.getDate("start_dttm"));
				list.add(dto);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close();
			}
			return list;
		}
	
	
	
	// 등급, 전화번호 조회
	public ArrayList<sickJoinMemberDTO> selectsttph(String sicStt, String sicPhone) {
		ArrayList<sickJoinMemberDTO> list = new ArrayList<>();
		sql = "select sic_id, sic_name, sic_phone, sic_stt, " +
			  "(select count(rv_no) from review r where r.sic_id=s.sic_id) rv_no, " +
			  "(select start_dttm from penalty p where p.id=s.sic_id) start_dttm " +
			  "from sick_member s where sic_stt=? and sic_phone=?";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				sickJoinMemberDTO dto = new sickJoinMemberDTO();
				dto.setSicId("sic_ID");
				dto.setSicName("sic_name");
				dto.setRvNo(rs.getInt("rv_no"));
				dto.setStartDttm(rs.getDate("start_dttm"));
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
	public ArrayList<sickJoinMemberDTO> selectsttnameph(String sicStt, String sicName, String sicPhone) {
		ArrayList<sickJoinMemberDTO> list = new ArrayList<>();
		sql = "select sic_id, sic_name, sic_phone, sic_stt, " +
			  "(select count(rv_no) from review r where r.sic_id=s.sic_id) rv_no, " +
			  "(select start_dttm from penalty p where p.id=s.sic_id) start_dttm " +
			  "from sick_member s where sic_stt=? and sic_name=? and sic_phone=?";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				sickJoinMemberDTO dto = new sickJoinMemberDTO();
				dto.setSicId("sic_ID");
				dto.setRvNo(rs.getInt("rv_no"));
				dto.setStartDttm(rs.getDate("start_dttm"));
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

