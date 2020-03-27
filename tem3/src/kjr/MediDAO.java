package kjr;

import java.sql.SQLException;
import java.util.ArrayList;

import kty.DAO;
import lastdto.MediJoinDTO;

public class MediDAO extends DAO {

	public ArrayList<MediJoinDTO> selectMediList(String hosId){
		ArrayList<MediJoinDTO> list = new ArrayList<MediJoinDTO>();
		String sql ="select ROW_NUMBER()over(order by toDay, resTime) num, no, stt, medi.SIC_ID, sick.SIC_NAME ,HOS_ID,toDay,resTime " + 
					"from sick_member sick,(select " + 
				"           r.RQST_NO no, SIC_ID, RQST_DTTM, HOS_ID, to_char(RES_DTTM,'yyyy/mm/dd hh24:mi') toDay, " + 
				"           ARTR_NO, RQST_TY, DCRY_NO, MSG,to_number(iftime),to_number(to_char(RES_DTTM,'hh24mi'))+to_number(nvl(iftime,0)) resTime, " + 
				"           i.mctt_stt stt " + 
				"      from  MEDI_RQST r, MEDI_info i " + 
				"      where r.RQST_NO = i.RQST_NO and " + 
				"            round(RES_DTTM)=round(sysdate)and hos_id=? and i.mctt_stt='N') medi " + 
					"where medi.SIC_ID=sick.SIC_ID ";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,hosId);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				int no;
				String stt; 
				String sicId;
				String sicName;
				String resTime;
				
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}
}
