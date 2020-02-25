package kjr;

import java.sql.SQLException;
import java.util.ArrayList;

import kty.DAO;
import lastdto.reviewDTO;
import lastdto.reviewListDTO;


public class ReviewDAO extends testDAO{
	String sql;
	public boolean insert(reviewDTO dto) {
		boolean a =true;
		int n = 0 ;
		String sql = "insert into review values(RV_SEQ.nextval,?,?,?,?)";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,dto.getSicId());
			pstmt.setString(2,dto.getHosId());
			pstmt.setInt(3,dto.getStarPoint());
			pstmt.setString(4,dto.getRvCont());
			n = pstmt.executeUpdate();
			if(n==0) {
				a = false;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			
		return a;
	}
	
	public ArrayList<reviewListDTO> select(String sicId){
		ArrayList<reviewListDTO> list = new ArrayList<reviewListDTO>();
		sql= " SELECT sic_id,hos_id,star_point,rv_cont, "+
			 " (select HOS_NAME from hos_member hm where hm.HOS_ID = rv.HOS_ID )name " + 
			 " FROM review rv WHERE SIC_ID= ? "+
			 " order by rv.RV_NO desc";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,sicId);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				String hosId = rs.getString("hos_id");
				int star = rs.getInt("star_point");
				String rvCont = rs.getString("rv_cont");
				String hosName = rs.getString("name");
				reviewListDTO dto = new reviewListDTO(hosId, star, rvCont, hosName);
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public boolean Delete(int rvNo){
		boolean a = true;
		
		
		return a;
	}
	
}
