package kty;

import java.util.ArrayList;
import java.util.List;

import lastdto.tmrFileDTO;

public class wjqtnwmdDAO extends DAO{

	//전체리스트
		public List<tmrFileDTO> selectList() {
			List<tmrFileDTO> list = new ArrayList<tmrFileDTO>();
			try {
				String sql = "select * from TMR_FILE ";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery(sql);
				while (rs.next()) {
					tmrFileDTO dto = new tmrFileDTO();
					dto.setTmrNo(rs.getInt("TMR_NO"));
					dto.setQr(rs.getString("QR"));
					list.add(dto);
				}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				close();
			}
			return list;
		}
	}
