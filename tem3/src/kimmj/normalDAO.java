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
	
	
	
	// 조건 조회
	public ArrayList<sickJoinMemberDTO> search(String memStatus, String name, String phone) {
		ArrayList<sickJoinMemberDTO> list = new ArrayList<sickJoinMemberDTO>();
		int index = 1;
		try {
				sql = "select sic_id, sic_name, sic_Phone, sic_stt, " +
					  "(select count(rv_no) from review r where r.sic_id=s.sic_id) rv_no, " +
					  "(select start_dttm from penalty p where p.id=s.sic_id) start_dttm " +
	                  "from sick_member s where 1=1 ";
					  if(memStatus!=null&&!memStatus.equals("all")) {
						 sql += "and s.sic_stt = ?";
					  	} 
					  if(name!=null&&!name.equals("")) {
						 sql += "and s.sic_name = ?";
					  	}
					  if(phone!=null&&!phone.equals("")) {
						 sql += "and s.sic_phone = ?";
					  	}
			  pstmt = conn.prepareStatement(sql);
			  	  if(memStatus!=null&&!memStatus.equals("all")) {
			  		  pstmt.setString(index++, memStatus);
			  	  }
			  	  if(name!=null&&!name.equals("")) {
					 pstmt.setString(index++, name);
				  }
				  if(phone!=null&&!phone.equals("")) {
					 pstmt.setString(index++, phone);
				  }
			  rs = pstmt.executeQuery();
			  while (rs.next()) {
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
		} return list;
	}
}
	
	
	