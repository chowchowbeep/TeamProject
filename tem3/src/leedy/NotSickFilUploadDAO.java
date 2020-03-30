package leedy;

import java.sql.SQLException;

import kty.DAO;
import lastdto.docuFileDTO;
import lastdto.docuInfoDTO;

public class NotSickFilUploadDAO extends DAO{
	
	//로그인한 sic_id에 대한 artr_table의 정보 가져오는 메소드
	
	//파일 업로드 메소드
//	public int insertFile(docuFileDTO dto1, docuInfoDTO dto2) {
//		int n = 0;
//		String sql1 = "insert into docu_file(dcry_no, file_name, file_type) "
//					+" values((select nvl(max(dcry_no),0)+1 from docu_file, ?, ?)"; //docuFile용 sql
//		
//		String sql2 ="insert into docu_info(artr_no, dcry_dttm, dcry_etc, dcry_no, sic_id, hos_id) "
//					+" values(?,(to_date(?, 'YYYYMMDD')),?,(select nvl(max(dcry_no),0)+1 from docu_info,?,?)"; //docuInfo용 sql
//		
//		try {
//			pstmt = conn.prepareStatement(sql1);
//			pstmt.setString(1, dto1.getFileName());
//			pstmt.setString(2, dto1.getFileType());
//			n = pstmt.executeUpdate();
//			System.out.println("docufile insert 결과 "+n);
//			
//			pstmt = conn.prepareStatement(sql2);
//			pstmt.setInt(1, dto2.getArtrNo());
//			pstmt.setString(2, dto2.getDcryDttm());
//			pstmt.setString(3, dto2.getDcryDttm());
//			pstmt.setString(4, dto2.getDcryDttm());
//			pstmt.setString(5, dto2.getDcryDttm());
//			
//			
//		} catch (SQLException e) {
//		
//			e.printStackTrace();
//		}
//		
//	}
	

}
