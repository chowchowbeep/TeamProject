package kcrDAO;

import java.sql.SQLException;

import command.DAO;
import lastdto.hosInfoForRqDTO;

public class HosInfoDAO extends DAO {
	
	// 병원정보조회// 뷰 생성할 것.
	public hosInfoForRqDTO neededWhenRq(String hosId) {
		hosInfoForRqDTO dto = new hosInfoForRqDTO();
		String[] hosHldy;
		int[] artrNo;
		String[] artrName;
		String[] artrSub; 
		String[] artrHldy;
		int i=0;
		
		//예약시 
		String sql = "select count(*)" + //반환된 행 수 만큼 값을 얻어오기 위함
				" h.hos_name, h.hos_addr, h.biz_time, " + //(biz_time 예약시 필요)
				" to_char(hs.hos_hldy, 'yyyy-mm-dd') hos_hldy, " + //(예약) 
				" a.artr_no, a.artr_name, a.artrSub, "+
				" to_char(as.artr_hldy, 'yyyy-mm-dd') artr_hldy" + //(예약)
				" from hos_member h " + 
				" left outer join hos_schedule hs " +
				" on h.hos_id = s.hos_id " + 
				" left outer join artr_info a" +
				" on h.hos_id = a.hos_id" +
				" left outer join artr_schedule as" +
				" on a.artr_no = as.artr_no" +
				" where h.hos_id = ? " +
				" order by hos_id "; 
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, hosId);
			pstmt.execute();
			if(rs.next()) {
				dto.setHosName(rs.getString("hos_name"));
				dto.setHosAddr(rs.getString("hos_addr"));
				dto.setBizTime(rs.getString("biz_time"));//예약
				
				
	//			for(i = 0; i<rs.get)
	//				dto.setHosHldy(rs.get("hos_hldy"));//예약
	//				dto.setArtrNo(rs.getInt[](""));
	//				dto.setArtrName(rs.getString(""));
	//				dto.setArtrSub(rs.getString(""));
	//				dto.setArtrHldy(rs.getString("")); //예약
	//				dto.setBizStt(rs.getString("")); //접수
			

			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return dto;
	}
}

