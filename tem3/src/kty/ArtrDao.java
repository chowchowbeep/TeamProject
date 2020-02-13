package kty;

import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dto.ApprenticeDoctorDto;

public class ArtrDao extends DAO {

	// 추가
	public int insert(ApprenticeDoctorDto dto) {
		int r = 0;
		try {
			String sql = "insert into ARTR_INFO(HOS_ID,ARTR_NO,ARTR_NAME,ARTR_SUB)" 
						+ " values((1,?,?,?)"; // ARTR_seq.nextval
			pstmt.setString(2, dto.getArtrName());
			pstmt.setString(3, dto.getArtrSub());
			r = pstmt.executeUpdate();
		} catch (Exception e) {

		} finally {
			close();
		}
		return r;
	}
	
	//리스트
	public List<ApprenticeDoctorDto> selectList() {
		List<ApprenticeDoctorDto> list = new ArrayList<ApprenticeDoctorDto>();
		// 1.DB연결
		try {
			conn = DriverManager.getConnection(url, user, passwd);
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		try {
			// 2.쿼리실행
			String sql = "select * from ARTR_INFO order by ARTR_NO";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery(sql);
			// 3.결과저장
			while (rs.next()) {
				ApprenticeDoctorDto dto = new ApprenticeDoctorDto();
				dto.setArtrNo(rs.getInt("ARTR_NO"));
				dto.setHosId(rs.getString("HOS_ID"));
				dto.setArtrName(rs.getString("ARTR_NAME"));
				dto.setArtrSub(rs.getString("ARTR_SUB"));
				list.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}
