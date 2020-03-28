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
		System.out.println("at dao" +hos_id);
		hosJoinMemberDTO dto = new hosJoinMemberDTO();
		sql = "SELECT hos_name, hos_id, hos_phone, hos_addr, hos_phone, hos_bizno"
				+ " (SELECT hos_rank FROM hos_stt s WHERE h.hos_id=s.hos_id) hos_rank, "
				+ " (SELECT count(dec_no) FROM decalaration d WHERE h.hos_id=d.hos_id) dec_no "
				+ " (SELECT count(rv_no) FROM rivew r WHERE h.hos_id=r.hos_id"
				+ "FROM hos_member h WHERE hos_id=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, hos_id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				dto.setHosName(rs.getString("hos_name"));
				dto.setHosId(rs.getString("hos_ID"));
				dto.setHosRank(rs.getString("hos_rank"));
				dto.setHosPhone(rs.getString("hos_Phone"));
				dto.setHosAddr(rs.getString("hos_addr"));
				dto.setHosBizTime(rs.getString("biz_time"));
				dto.setHosBizno(rs.getString("hos_bizno"));
				dto.setDecNo(rs.getInt("dec_no"));
				dto.setRvCount(rs.getInt("rv_no"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return dto;
	}
	
	
	// 조건 조회
	public ArrayList<hosJoinMemberDTO> search(String memStatus, String name, String phone) {
		ArrayList<hosJoinMemberDTO> list = new ArrayList<hosJoinMemberDTO>();
		int index = 1;
		
		try {
			sql = "SELECT hos_name, hos_id, hos_phone, hos_addr, hos_phone, hos_bizno"
					+ " (SELECT hos_rank FROM hos_stt s WHERE h.hos_id=s.hos_id) hos_rank, "
					+ " (SELECT count(dec_no) FROM decalaration d WHERE h.hos_id=d.hos_id) dec_no "
					+ " (SELECT count(rv_no) FROM rivew r WHERE h.hos_id=r.hos_id"
					+ "FROM hos_member h WHERE 1=1";
			if(memStatus!=null && !memStatus.equals("all")) {
				sql += "and s.sic_stt = ?";
			}
			if(name!=null && !name.equals("")) {
				sql += "and s.sic_name = ?";
			}
			if(phone!=null && !name.equals("")) {
				sql += "and s.sic_phone = ?";
			}
			pstmt = conn.prepareStatement(sql);
			if(memStatus!=null && !memStatus.equals("all")) {
				pstmt.setString(index++, memStatus);
			}
			if(name!=null && !name.equals("")) {
				pstmt.setString(index++, name);
			}
			if(phone!=null && !name.equals("")) {
				pstmt.setString(index++, phone);
			}
			rs = pstmt.executeQuery();
			while(rs.next()) {
				hosJoinMemberDTO dto = new hosJoinMemberDTO();
				dto.setHosName("hos_name");
				dto.setHosId("hos_ID");
				dto.setHosBizno("hos_bizno");
				dto.setHosPhone("hos_Phone");
				dto.setHosBizTime("biz_time");
				dto.setDecNo(rs.getInt("dec_no"));
				dto.setRvCount(rs.getInt("rv_no"));
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


