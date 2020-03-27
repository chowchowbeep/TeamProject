package leedy;

import java.sql.SQLException;
import java.util.ArrayList;

import kty.DAO;
import lastdto.artrInfoDTO;
import lastdto.docuFileDTO;
import lastdto.docuInfoDTO;

public class HosFileUploadDAO extends DAO{
	
	//로그인한 세션(hos_id)에 대한 artr_table의 정보 가져오는 메소드
	public ArrayList<artrInfoDTO> selectArtr(String hosId) {
		String sql = "select * from artr_info where hos_id =?";
		ArrayList<artrInfoDTO> list = new ArrayList<artrInfoDTO>(); //하나의 hos_id에 대한 정보를 배열로 list로 가져옴
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, hosId); //command에서 세션 대신에 임의로 지정한 hosId가 들어감
			rs = pstmt.executeQuery();
			if(rs.next()) {
				artrInfoDTO dto = new artrInfoDTO();
			dto.setArtrNo(rs.getInt("artr_no"));
			dto.setHosId(rs.getString("hos_id"));
			dto.setArtrName(rs.getString("artr_name"));
			dto.setArtrSub(rs.getString("artr_sub"));
			list.add(dto);
			//System.out.println("rufrhk-------"+dto.getArtrName());
			}
			
		} catch (SQLException e) {
	
			e.printStackTrace();
		} finally {
			
		}
	
		return list;
	}
	
	//파일을 업로드 할 때 사용하는 메소드
	public int insertFile(docuFileDTO dto1, docuInfoDTO dto2) {
		int n = 0;
		String sql1 = "insert into docu_file(dcry_no,file_name,file_type) "
				+" values((select nvl(max(dcry_no),0)+1 from docu_file), ?, ?)"; //docuFile용 sql
		String sql2 = "insert into docu_info(artr_no,dcry_dttm,dcry_etc,dcry_no,sic_id, hos_id) "
				+" values(?, to_date(?, 'YYYYMMDD'), ?, (select nvl(max(dcry_no),0)+1 from docu_info), ?, ?)"; //docuInfo용 sql
	
		try {
			pstmt = conn.prepareStatement(sql1);
			pstmt.setString(1, dto1.getFileName());
			pstmt.setString(2, dto1.getFileType());
			n= pstmt.executeUpdate();
			System.out.println("docufile insert 결과"+n);
			
			
			pstmt = conn.prepareStatement(sql2);
			pstmt.setInt(1, dto2.getArtrNo());
			pstmt.setString(2, dto2.getDcryDttm());
			pstmt.setString(3, dto2.getDcryEtc());
			pstmt.setString(4, dto2.getSicId());
			pstmt.setString(5, dto2.getHosId());
			n= pstmt.executeUpdate();
			System.out.println("docuinfo insert 결과"+n);
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			
		}
		return n;
	}
	

}
