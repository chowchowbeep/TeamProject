package kcr;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import command.DAO;
import lastdto.DocuFileNInfoDTO;
import lastdto.artrInfoDTO;
import lastdto.artrScheduleDTO;
import lastdto.hosScheduleDTO;
import lastdto.mediRqdetailDTO;
import lastdto.mediRqstDTO;

public class InfoForRequestDAO extends DAO {

	// 접수가능 여부 확인(1차 필터링)에 필요한 정보 가져오기
	public String getHosNow(String hosId) {
		System.out.println(hosId);
		String bizStt = "N";
		String sql = "SELECT biz_stt " + " FROM hos_stt " + " WHERE hos_id = ? " + " and biz_stt = 'Y'";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, hosId);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				bizStt = rs.getString("biz_stt");
			} else {
				return bizStt;
			}
			System.out.println("======DAO에서 bizStt:" + bizStt + "=====");
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return bizStt;
	}

	// 병원 휴일 확인
	public boolean checkHosHldy(String hosId, String selectedDt) {
		System.out.println("at DAO " + hosId + "," + selectedDt);
		boolean checkHosHldy = false;
		String sql = "select hos_id, hos_hldy" + " from hos_schedule" + " where hos_id = ?"
				+ " and to_char(hos_hldy, 'yyyymmdd') = ?";
		try {

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, hosId);
			pstmt.setString(2, selectedDt);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				checkHosHldy = true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return checkHosHldy;
	}

	// 의사 휴일 확인
	public boolean checkDrHldy(String artrNo, String selectedDt) {
		boolean checkArtrHldy = false;
		String sql = "select hos_id, artr_hldy" + " from artr_schedule" + " where artr_no = ?"
				+ " and to_char(artr_hldy, 'yyyymmdd') = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, artrNo);
			pstmt.setString(2, selectedDt);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				checkArtrHldy = true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return checkArtrHldy;
	}

	// 병원별 의사목록
	public List<artrInfoDTO> getArtrInfoForTmr(String hosId) {
		System.out.println(hosId);
		List<artrInfoDTO> list = new ArrayList<artrInfoDTO>();
		String sql = "select * " + " from artr_info " + " where hos_id = ?" + " order by artr_no";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, hosId);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				artrInfoDTO dto = new artrInfoDTO();
				dto.setArtrNo(rs.getInt("artr_no"));
				dto.setHosId(rs.getString("hos_id"));
				dto.setArtrName(rs.getString("artr_name"));
				dto.setArtrSub(rs.getString("artr_sub"));
				System.out.println("======가져온 의사정보 : " + dto.toString());
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}

	// 당일 휴일인 의사번호목록
	public List<artrScheduleDTO> getDrNotOnDutyList(String hosId) {
		List<artrScheduleDTO> list = new ArrayList<artrScheduleDTO>();
		String sql = "select hos_id, artr_no, " + " to_char(artr_hldy, 'yyyymmdd') artr_hldy" + " from artr_schedule"
				+ " where hos_id = ?" + " and artr_hldy = to_char(sysdate, 'yyyymmdd')";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, hosId);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				artrScheduleDTO dto = new artrScheduleDTO();
				dto.setArtrNo(rs.getInt("artr_no"));
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	// 해당병원, 선택한날짜에, 선택한 의사앞으로 예약된 시간이 있는지 확인_ datepicker값 넘김 형태 확인 후
	public List<mediRqdetailDTO> getAlreayReseved(String hosId, String artrNo, String selectedDt) {
		List<mediRqdetailDTO> list = new ArrayList<>();
		String sql = "select hos_id," + " to_char(res_dttm, 'yyyymmdd') res_dt"
				+ " ,to_char(res_dttm, 'hh24:mi') res_tm" + " from medi_rqst" + " where hos_id = ? "
				+ " and artr_no = ? " + " and to_char(res_dttm, 'yyyymmdd') = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, hosId);
			pstmt.setString(2, artrNo);
			pstmt.setString(3, selectedDt);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				mediRqdetailDTO dto = new mediRqdetailDTO();
				dto.setHosId(rs.getString("hos_id"));
				dto.setResDt(rs.getString("res_dt"));
				dto.setResTm(rs.getString("res_tm"));
				System.out.println("===================atDAO:" + dto.toString());
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}

	// 첨부가능한 진료기록물 목록 가져오기
	public List<DocuFileNInfoDTO> getDcryList(String sicId) {
		List<DocuFileNInfoDTO> list = new ArrayList<>();
		String sql = "SELECT *" + 
				" FROM SICK_MEDIA" + 
				" WHERE SIC_ID = ? " + 
				" ORDER BY DCRY_NO DESC";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, sicId);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				DocuFileNInfoDTO dto = new DocuFileNInfoDTO();
				dto.setFileName(rs.getString("FILE_NAME"));
				dto.setFileType(rs.getString("FILE_TYPE"));
				dto.setDcryNo(rs.getInt("DCRY_NO"));
				dto.setSicId(rs.getString("SIC_ID"));
				dto.setArtrNo(rs.getInt("ARTR_NO"));
				dto.setHosId(rs.getString("HOS_ID"));
				dto.setDcryDttm(rs.getString("DCRY_DTTM"));
				dto.setArtrName(rs.getString("ARTR_NAME"));
				dto.setHosName(rs.getString("HOS_NAME"));
				System.out.println("===================atDAO:" + dto.toString());
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}
	
	// 기록물 조회하기
	public DocuFileNInfoDTO getDcry(int dcryNo) {
		DocuFileNInfoDTO dto = new DocuFileNInfoDTO();
		String sql = "SELECT *" + 
				" FROM SICK_MEDIA" + 
				" WHERE DCRY_NO = ? ";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, dcryNo);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				dto.setFileName(rs.getString("FILE_NAME"));
				dto.setFileType(rs.getString("FILE_TYPE"));
				dto.setDcryNo(rs.getInt("DCRY_NO"));
				dto.setSicId(rs.getString("SIC_ID"));
				dto.setArtrNo(rs.getInt("ARTR_NO"));
				dto.setHosId(rs.getString("HOS_ID"));
				dto.setDcryDttm(rs.getString("DCRY_DTTM"));
				dto.setDcryEtc(rs.getString("DCRY_ETC"));
				dto.setArtrName(rs.getString("ARTR_NAME"));
				dto.setHosName(rs.getString("HOS_NAME"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return dto;
	}


//	// 병원별 휴일목록 가져오기
//	public List<hosScheduleDTO> hosHldyList(String hosId) {
//		List<hosScheduleDTO> list = new ArrayList<>();
//
//		String sql = "select hos_id, to_char(hos_hldy,'yyyymmdd') hos_hldy" 
//				+ " from hos_schedule" 
//				+ " where hos_id = ?"
//				+ " and hos_hldy >= sysdate"
//				+ " order by hos_hldy desc";
//		try {
//			pstmt = conn.prepareStatement(sql);
//			pstmt.setString(1, hosId);
//			rs = pstmt.executeQuery();
//			while (rs.next()) {
//				hosScheduleDTO dto = new hosScheduleDTO();
//				dto.setHosId(hosId);
//				dto.setHosHldy(rs.getString("hos_hldy"));
//				list.add(dto);
//			}
//		} catch (SQLException e) {
//			e.printStackTrace();
//		} finally {
//			close();
//		}
//		return list;
//	}

//		// 의사별 휴일목록
//		public List<artrScheduleDTO> drHldyList(int artrNo) {
//			List<artrScheduleDTO> list = new ArrayList<artrScheduleDTO>();
//			String sql = "select artr_no, to_char(artr_hldy, 'yyyymmdd') artr_hldy" 
//					+ " from artr_schedule" 
//					+ " where artr_no = ?"
//					+ " and artr_hldy >= sysdate"
//					+ " order by artr_hldy desc";
//			try {
//				pstmt = conn.prepareStatement(sql);
//				pstmt.setInt(1, artrNo);
//				rs = pstmt.executeQuery();
//				while (rs.next()) {
//					artrScheduleDTO dto = new artrScheduleDTO();
//					dto.setArtrNo(artrNo);
//					dto.setArtrHldy(rs.getString("artr_hldy"));
//					list.add(dto);
//				}
//			} catch (SQLException e) {
//				e.printStackTrace();
//			}
//			return list;
//		}

}
