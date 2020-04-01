package kjr;

import java.sql.SQLException;
import java.util.ArrayList;

import kty.DAO;
import lastdto.MediJoinDTO;

public class MediDAO extends DAO {

	public ArrayList<MediJoinDTO> selectMediList(String hosId){
		ArrayList<MediJoinDTO> list = new ArrayList<MediJoinDTO>(); //당일접수조회
		String sql =
				"select ROW_NUMBER()over(order by toDay, resTime) num, no, stt, medi.SIC_ID, sick.SIC_NAME ,HOS_ID,substr(resTime,1,2)||':'||substr(resTime,-2,2) yesang,resTime " + 
				"				from sick_member sick,(select " + 
				"				           r.RQST_NO no, SIC_ID, RQST_DTTM, HOS_ID, to_char(RES_DTTM,'yyyy/mm/dd hh24:mi') toDay,  " + 
				"				           ARTR_NO, RQST_TY, DCRY_NO, MSG,to_number(iftime),lpad(to_number(to_char(rqst_dttm,'hh24mi'))+to_number(nvl(iftime,0)),4,0) resTime,  " + 
				"				           i.mctt_stt stt  " + 
				"				      from  MEDI_RQST r, MEDI_info i " + 
				"				     where r.RQST_NO = i.RQST_NO and   " + 
				"				            trunc(rqst_dttm)=trunc(sysdate)and hos_id=? and i.mctt_stt='N' and rqst_ty='D001') medi  " + 
				"				where medi.SIC_ID=sick.SIC_ID ";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,hosId);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				int num = rs.getInt("num");
				int no = rs.getInt("no");
				String stt = rs.getString("stt"); 
				String sicId  = rs.getString("SIC_ID");
				String sicName  = rs.getString("SIC_NAME");
				String resTime  = rs.getString("yesang");
				MediJoinDTO dto = new MediJoinDTO(num,no,stt,sicId,sicName,hosId,resTime);
				System.out.println(dto.toString());
				list.add(dto);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}
	public ArrayList<MediJoinDTO> selectYeList(String hosId){ //예약조회
		ArrayList<MediJoinDTO> list = new ArrayList<MediJoinDTO>();
		String sql =
				"select ROW_NUMBER()over(order by toDay, resTime) num, no, stt, medi.SIC_ID, sick.SIC_NAME ,HOS_ID,substr(resTime,1,2)||':'||substr(resTime,-2,2) yesang,resTime " + 
				"from sick_member sick,(select " + 
				"           r.RQST_NO no, SIC_ID, RQST_DTTM, HOS_ID, to_char(RES_DTTM,'yyyy/mm/dd hh24:mi') toDay, " + 
				"           ARTR_NO, RQST_TY, DCRY_NO, MSG,to_number(iftime),lpad(to_number(to_char(RES_DTTM,'hh24mi'))+to_number(nvl(iftime,0)),4,0) resTime, " + 
				"           i.mctt_stt stt " + 
				"      from  MEDI_RQST r, MEDI_info i " + 
				"      where r.RQST_NO = i.RQST_NO and  " + 
				"            trunc(RES_DTTM)=trunc(sysdate)and hos_id=?and i.mctt_stt='N'and rqst_ty='D002') medi " + 
				"where medi.SIC_ID=sick.SIC_ID  ";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,hosId);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				int num = rs.getInt("num");
				int no = rs.getInt("no");
				String stt = rs.getString("stt"); 
				String sicId  = rs.getString("SIC_ID");
				String sicName  = rs.getString("SIC_NAME");
				String resTime  = rs.getString("yesang");
				MediJoinDTO dto = new MediJoinDTO(num,no,stt,sicId,sicName,hosId,resTime);
				System.out.println(dto.toString());
				list.add(dto);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}
}
