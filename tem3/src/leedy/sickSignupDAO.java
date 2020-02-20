package leedy;

import java.sql.SQLException;

import kty.DAO;
import lastdto.sickMemberDTO;

public class sickSignupDAO extends DAO {

	public sickSignupDAO() {
		super();
	}

	public int sickInsert(sickMemberDTO dto) {
		int n = 0;

		String sql = "insert into sick_member(sic_id, sic_pw, sic_name, sic_phone) " + "values(?,?,?,?)";

		// 일반회원정보 테이블 값 넣기
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getSicId());
			pstmt.setString(2, dto.getSicPw());
			pstmt.setString(3, dto.getSicName());
			pstmt.setString(4, dto.getSicPhone());
			pstmt.executeUpdate();

		} catch (SQLException e) {

			e.printStackTrace();
		} finally {

		}
		return n;
	}

	//id 중복체크
	public boolean isIdChk(String id) {
		boolean b = true;
		String sql = "select sic_id from sick_member where sic_id=?";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				b = false;
			}
		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			close();
		}

		return b;
	}
}
