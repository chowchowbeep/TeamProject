package leedy;

import java.sql.SQLException;

import kty.DAO;
import lastdto.sickMemberDTO;

public class sickMemModifyDAO extends DAO {

	public sickMemModifyDAO() {
		super();
		
	}
	
	//환자 id로 정보 가져오기
	public sickMemberDTO select(String id) {
		System.out.println("id");
		sickMemberDTO dto = new sickMemberDTO();
		String sql = "select sic_id, sic_name, sic_stt from sic_member where sic_id=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				dto.setSicId(rs.getString("sic_name"));
				dto.setSicName(rs.getString("sic_name"));
				dto.setSicStt(rs.getString("sic_stt"));
			}
		} catch (SQLException e) {
		
			e.printStackTrace();
		} finally {
			close();
		}
		
		return dto;
	}
	
	
	public int sickMemUpdate(sickMemberDTO dto) {
		int n = 0;
		
		//일반회원정보 테이블 정보 바꾸기(비밀번호, 휴대폰 번호)
		
		String sql = "update sick_member set sic_pw =?, sic_phone=? where sic_id=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getSicPw());
			pstmt.setString(2, dto.getSicPhone());
			pstmt.setString(3, dto.getSicId());
			pstmt.executeUpdate();
			
			if(pstmt.executeUpdate()==1) {
				System.out.println("회원정보 수정 성공");
			} else {
				System.out.println("회원정보 수정 실패");
			}
			
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		} finally {
		
		}
		return n;
	}
	

}
