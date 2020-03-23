package leedy;

import java.sql.SQLException;

import kty.DAO;
import lastdto.healthInfoDTO;

public class sickHealthModifyDAO extends DAO {

	public sickHealthModifyDAO() {
		super();

	}

	// 단건조회

	// 입력
	public void insertHealthInfo(healthInfoDTO dto) {
		String inSql = "INSERT INTO health_info(sic_id, chrdis, hstcs, medi, bdp, allrgy, ht_etc) "
				+ " values(?,?,?,?,?,?,?)";
		try {
			pstmt = conn.prepareStatement(inSql);
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
	}

	// 수정

	// 삭제

}
