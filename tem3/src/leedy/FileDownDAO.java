package leedy;

import java.sql.SQLException;
import java.util.ArrayList;

import dto.DocumentImgFileDto;
import dto.DocumentInfoDto;
import dto.DocumentMvpFileDto;
import dto.DocumentPdfFileDto;
import dto.HealthInfoDto;
import dto.SickMemberDto;
import kty.DAO;

public class FileDownDAO extends DAO {

	public static String sql;
	
	//전체리스트
	public ArrayList<DocumentImgFileDto> sel1(){
		ArrayList<DocumentImgFileDto> list = new ArrayList<>();
		//Docu_info테이블과 docu_img, docu_mvp, docu_pdf를 조인
		sql="select * " + 
				"from( " + 
				"    select i.dcry_no, p.PDF_FILE, i.sic_id " + 
				"    from docu_info i , docu_pdf p " + 
				"    where i.dcry_no = p.dcry_no " + 
				"     " + 
				"    union all " + 
				"     " + 
				"    select i.dcry_no, m.MVP_FILE ,i.sic_id " + 
				"    from docu_info i , docu_mvp m " + 
				"    where i.dcry_no = m.dcry_no " + 
				"     " + 
				"    union all " + 
				"     " + 
				"    select i.dcry_no, g.IMG_FILE , i.sic_id " + 
				"    from docu_info i , docu_img g " + 
				"    where i.dcry_no = g.dcry_no) " + 
				"    where sic_id = ? " + 
				"    order by dcry_no";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				DocumentImgFileDto dto = new DocumentImgFileDto();
				dto.setDcryNo(rs.getInt("DCRY_NO"));
				dto.setImgFile(rs.getBytes("IMG_FILE"));
				list.add(dto);					
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	

		//한건조회 리스트
		
		public DocumentInfoDto sel4(String no){
			DocumentInfoDto dto = new DocumentInfoDto();
			sql="SELECT * FROM DOCU_INFO WHERE DCRY_NO= ? ";
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1,no);
				
				rs = pstmt.executeQuery();
				while (rs.next()) {
					
					dto.setSicId(rs.getString("SIC_ID"));
					dto.setDcryDttm(rs.getDate("DCRY_DTTM"));
					dto.setDcryEtc(rs.getString("DCRY_ETC"));
					dto.setArtrNo(rs.getInt("ARTR_NO"));
					dto.setHosId(rs.getString("HOS_ID"));
						}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return dto;
		}

}
