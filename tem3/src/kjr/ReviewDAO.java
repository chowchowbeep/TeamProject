package kjr;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import kty.DAO;
import lastdto.reviewDTO;
import lastdto.reviewListDTO;


public class ReviewDAO extends DAO{
	ArrayList<reviewListDTO> list = new ArrayList<reviewListDTO>();
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
		
		sql= " SELECT rv_no,sic_id,hos_id,star_point,rv_cont, "+
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
				int rvNo = rs.getInt("RV_NO");
				reviewListDTO dto = new reviewListDTO(rvNo,sicId,hosId, star, rvCont, hosName);
				
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	
	
	public boolean Delete(int rvNo){
		reviewListDTO dto = new reviewListDTO();
		boolean a = true;
		sql="delete from review where RV_NO=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1,rvNo);
		int	n = pstmt.executeUpdate();
			if(n==0) {
				a = false;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		return a;
	}
	
	// 게시글 수 조회
		public int getBoardCnt(String hosId) {
			int cnt =0;
			String sql ="select count(*) cnt " + 
						"from review " + 
						"where hos_id=? " + 
						"order by rv_no desc";
		
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1,hosId);
				rs = pstmt.executeQuery();
				if (rs.next()) {
					cnt = rs.getInt("cnt");
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
			return cnt;
		}
		
	//페이지별로 4줄씩 리뷰 출력 
		public ArrayList<reviewListDTO> selectHos(String hosId, int startNum, int endNum){
			 sql = "select * from ( " + 
			 		"select row_number() over(order by rv_no desc) num ,SIC_ID,HOS_ID,STAR_POINT,RV_CONT," + 
			 		"(select sc.SIC_NAME from sick_member sc where sc.SIC_ID = rv.SIC_ID )name  " + 
			 		"from review rv " + 
			 		"where hos_id=?)where num BETWEEN ? and ? ";
			
			System.out.println("sql은?  "+sql);
			
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1,hosId);
				pstmt.setInt(2,startNum);
				pstmt.setInt(3,endNum);
				rs = pstmt.executeQuery();
				
				while(rs.next()) {
					String sicId = rs.getString("sic_id");
					int star = rs.getInt("star_point");
					String rvCont = rs.getString("rv_cont");
					String hosName = rs.getString("name");
					int rvNo = rs.getInt("num");
					reviewListDTO dto = new reviewListDTO(rvNo,sicId,hosId, star, rvCont, hosName);
					
					list.add(dto);
				}
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			return list;
			
		}
		
		//리뷰전체출력
		public ArrayList<reviewListDTO> selectHosAll(String hosId){
			
			sql= " select row_number() over(order by rv_no desc) num,SIC_ID,HOS_ID,STAR_POINT,RV_CONT, "+
				 " (select sc.SIC_NAME from sick_member sc where sc.SIC_ID = rv.SIC_ID )name " + 
				 " from review rv "+
				 " where hos_id=? ";
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1,hosId);
				rs = pstmt.executeQuery();
				while (rs.next()) {
					String sicId = rs.getString("sic_id");
					int star = rs.getInt("star_point");
					String rvCont = rs.getString("rv_cont");
					String hosName = rs.getString("name");
					int rvNo = rs.getInt("num");
					reviewListDTO dto = new reviewListDTO(rvNo,sicId,hosId, star, rvCont, hosName);
					
					list.add(dto);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return list;
		}
	
}
