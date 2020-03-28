package leedy;

import java.sql.SQLException;

import kty.DAO;
import lastdto.healthInfoDTO;

public class sickHealthModifyDAO extends DAO {

	public sickHealthModifyDAO() {
		super();

	}
	
	//추가
	public int sickHelInsert(healthInfoDTO dto) {
		int r = 0;
		String inSql = "insert into health_info(chrdis, hstcs, medi, bdp, allrgy, ht_etc)"
						+" values(?,?,?,?,?,?)"; //id 불러와서...?
		
		try {
			pstmt = conn.prepareStatement(inSql);
			pstmt.setString(1, dto.getChrdis());
			pstmt.setString(2, dto.getHstcs());
			pstmt.setString(3, dto.getMedi());
			pstmt.setString(4, dto.getBdp());
			pstmt.setString(5, dto.getAllrgy());
			pstmt.setString(6, dto.getHtEtc());
			r =  pstmt.executeUpdate();
		} catch (SQLException e) {
		
			e.printStackTrace();
		} finally {
			close();
		}
		return r;
	}

	// 수정
	public int sickHealUpdate(healthInfoDTO dto) {
		int  n = 0;
		
		String upSql = "update health_info set chrdis = ?, hstcs = ?, medi = ?, bdp = ?, allrgy = ?, ht_etc = ? where sic_id = ?";
		try {
			pstmt = conn.prepareStatement(upSql);
			pstmt.setString(1, dto.getChrdis());
			pstmt.setString(2, dto.getHstcs());
			pstmt.setString(3, dto.getMedi());
			pstmt.setString(4, dto.getBdp());
			pstmt.setString(5, dto.getAllrgy());
			pstmt.setString(6, dto.getHtEtc());
			pstmt.setString(7, dto.getSicId());
			n = pstmt.executeUpdate();
			
			if(pstmt.executeUpdate()==1) {
				System.out.println("건강정보 수정 성공");
			} else {
				System.out.println("건강정보 수정 실패");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return n;
	}


}
