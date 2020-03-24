package kjr;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import lastdto.hosMemberDTO;
import kty.DAO;

public class HosmemberDAO extends DAO {
	String sql = "";
	public ArrayList<hosMemberDTO> select(){ //전체 조회
		ArrayList<hosMemberDTO> list = new ArrayList<>();
		sql="SELECT * FROM hos_member";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				hosMemberDTO dto = new hosMemberDTO();
				dto.setHosId(rs.getString("HOS_ID"));
				dto.setHosBizno(rs.getString("HOS_BIZNO"));
				dto.setHosName(rs.getString("HOS_NAME"));
				dto.setHosPhone(rs.getString("HOS_PHONE"));
				dto.setHosPw(rs.getString("HOS_PW"));
				dto.setHosAddr(rs.getString("HOS_ADDR"));
				dto.setHosLat(rs.getInt("HOS_LAT"));
				dto.setHosLng(rs.getInt("HOS_LNG"));
				dto.setHosBizTime(rs.getString("BIZ_TIME"));
				list.add(dto);		
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public ArrayList<hosMemberDTO> selectId(String hos){ //전체 조회
		ArrayList<hosMemberDTO> list = new ArrayList<>();
		sql="SELECT * FROM hos_member where hos_id=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,hos);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				hosMemberDTO dto = new hosMemberDTO();
				dto.setHosId(rs.getString("HOS_ID"));
				dto.setHosBizno(rs.getString("HOS_BIZNO"));
				dto.setHosName(rs.getString("HOS_NAME"));
				dto.setHosPhone(rs.getString("HOS_PHONE"));
				dto.setHosPw(rs.getString("HOS_PW"));
				dto.setHosAddr(rs.getString("HOS_ADDR"));
				dto.setHosLat(rs.getInt("HOS_LAT"));
				dto.setHosLng(rs.getInt("HOS_LNG"));
				dto.setHosBizTime(rs.getString("BIZ_TIME"));
				list.add(dto);		
				System.out.println();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	
	public ArrayList<hosMemberDTO> select(String hos){ //병원이름으로 조회
		ArrayList<hosMemberDTO> list = new ArrayList<>();
		sql="SELECT * FROM hos_member ";
		if(hos!=null) {
			sql += " where hos_name like ? ";
		}
		sql +="order by hos_name";
		try {
			pstmt = conn.prepareStatement(sql);
			if(hos!=null) {
				pstmt.setString(1, "%"+hos+"%");
			}
			rs = pstmt.executeQuery();
			while(rs.next()) {
				hosMemberDTO dto = new hosMemberDTO();
				dto.setHosId(rs.getString("HOS_ID"));
				dto.setHosBizno(rs.getString("HOS_BIZNO"));
				dto.setHosName(rs.getString("HOS_NAME"));
				dto.setHosPhone(rs.getString("HOS_PHONE"));
				dto.setHosPw(rs.getString("HOS_PW"));
				dto.setHosAddr(rs.getString("HOS_ADDR"));
				dto.setHosLat(rs.getInt("HOS_LAT"));
				dto.setHosLng(rs.getInt("HOS_LNG"));
				dto.setHosBizTime(rs.getString("BIZ_TIME"));
				list.add(dto);		
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
			
		}
		close();
		return list;
	}
	public ArrayList<hosMemberDTO> select(List<String> hosId){ //병원이름으로 조회
		ArrayList<hosMemberDTO> list = new ArrayList<>();
		sql="SELECT * FROM hos_member ";
		int len = hosId.size();
		sql += " where hos_id in( ";
		for(int i=0;i>len;i++) {
			if(i==len-1) {
				sql += "?)";
			}else {
				sql += "?,";
			}
		}
		
		
		try {
			pstmt = conn.prepareStatement(sql);
			if(hosId!=null) {
				for(int i=0;i>len;i++) {
				pstmt.setString(i, hosId.get(i));
				}
			}
			rs = pstmt.executeQuery();
			while(rs.next()) {
				hosMemberDTO dto = new hosMemberDTO();
				dto.setHosId(rs.getString("HOS_ID"));
				dto.setHosBizno(rs.getString("HOS_BIZNO"));
				dto.setHosName(rs.getString("HOS_NAME"));
				dto.setHosPhone(rs.getString("HOS_PHONE"));
				dto.setHosPw(rs.getString("HOS_PW"));
				dto.setHosAddr(rs.getString("HOS_ADDR"));
				dto.setHosLat(rs.getInt("HOS_LAT"));
				dto.setHosLng(rs.getInt("HOS_LNG"));
				dto.setHosBizTime(rs.getString("BIZ_TIME"));
				list.add(dto);		
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
			
		}
		close();
		return list;
	}
	
	
	public void update(hosMemberDTO dto) {
		sql=" update hos_member set HOS_BIZNO=?,HOS_NAME=?,HOS_PHONE=?,HOS_PW=?,HOS_ADDR=?,BIZ_TIME=? where hos_id=? ";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,dto.getHosBizno());
			pstmt.setString(2,dto.getHosName());
			pstmt.setString(3,dto.getHosPhone());
			pstmt.setString(4,dto.getHosPw());
			pstmt.setString(5,dto.getHosAddr());
			pstmt.setString(6,dto.getHosBizTime());
			pstmt.setString(7,dto.getHosId());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}close();
	
	}
	
}
