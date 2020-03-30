
package kimmj;


import java.sql.SQLException;
import java.util.ArrayList;

import kty.DAO;
import lastdto.hosJoinMemberDTO;

public class hosDAO extends DAO {
	public static String sql;
	
	// 전체 리스트
	public ArrayList<hosJoinMemberDTO> select() {
		ArrayList<hosJoinMemberDTO> list = new ArrayList<hosJoinMemberDTO>();
		sql = "SELECT h.hos_name, h.hos_id, s.hos_rank,"
				+ " (select count(d.dec_no) from declaration d where d.hos_id=h.hos_id) dec_no "
				+ " FROM hos_member h, hos_stt s "
				+ " where h.hos_id=s.hos_id ";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				hosJoinMemberDTO dto = new hosJoinMemberDTO();
				dto.setHosName(rs.getString("hos_name"));
				dto.setHosId(rs.getString("hos_id"));
				dto.setHosRank(rs.getString("hos_rank"));
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
		sql = "SELECT h.hos_id, h.hos_name, h.hos_phone, h.hos_addr, h.biz_time, h.hos_bizno, s.hos_rank, " 
				+ " (SELECT count(d.dec_no) FROM declaration d WHERE h.hos_id=d.hos_id) dec_no, " 
				+ " (SELECT count(r.rv_no) FROM review r WHERE h.hos_id=r.hos_id) rv_no " 
				+ " FROM hos_member h, hos_stt s " 
				+ " WHERE h.hos_id=s.hos_id AND h.hos_id=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, hos_id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				dto.setHosName(rs.getString("hos_name"));
				dto.setHosId(rs.getString("hos_id"));
				dto.setHosRank(rs.getString("hos_rank"));
				dto.setHosPhone(rs.getString("hos_Phone"));
				dto.setHosAddr(rs.getString("hos_addr"));
				dto.setBizTime(rs.getString("biz_time"));
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
			sql="SELECT h.hos_name, h.hos_id, s.hos_rank,"
			+ " (select count(d.dec_no) from declaration d where d.hos_id=h.hos_id) dec_no "
			+ " FROM hos_member h, hos_stt s "
			+ " where h.hos_id=s.hos_id ";
			
			if(memStatus!=null && !memStatus.equals("all")) {
				sql += " and s.hos_rank = ?";
			}
			if(name!=null && !name.equals("")) {
				sql += " and h.hos_name = ?";
			}
			if(phone!=null && !phone.equals("")) {
				sql += " and h.hos_phone = ?";
			}
			
			pstmt = conn.prepareStatement(sql);
			if(memStatus!=null && !memStatus.equals("all")) {
				pstmt.setString(index++, memStatus);
			}
			if(name!=null && !name.equals("")) {
				pstmt.setString(index++, name);
			}
			if(phone!=null && !phone.equals("")) {
				pstmt.setString(index++, phone);
			}
			rs = pstmt.executeQuery();
			while(rs.next()) {
				hosJoinMemberDTO dto = new hosJoinMemberDTO();
				dto.setHosName(rs.getString("hos_name"));
				dto.setHosId(rs.getString("hos_id"));
				dto.setHosRank(rs.getString("hos_rank"));
				dto.setDecNo(rs.getInt("dec_no"));
				list.add(dto);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close();
			} return list;
		}

	
}

