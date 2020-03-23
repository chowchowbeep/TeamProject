package leedy;

import java.sql.SQLException;

import kty.DAO;
import lastdto.sickMemberDTO;

public class sickMemModifyDAO extends DAO {

	public sickMemModifyDAO() {
		super();
		
	}
	
	public int sickMemUpdate(sickMemberDTO dto) {
		int n = 0;
		
		//일반회원정보 테이블 정보 바꾸기(비밀번호, 휴대폰 번호)
		
		String sql = "update sick_member set sic_pw =?, sic_phone=? where sic_id=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getSicPw());
			pstmt.setString(2, dto.getSicPhone());
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
