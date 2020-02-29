package kcrDAO;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import command.DAO;
import lastdto.artrInfoDTO;
import lastdto.artrScheduleDTO;
import lastdto.hosScheduleDTO;

public class InfoForRequestDAO extends DAO {

	// 접수가능 여부 확인(1차 필터링)에 필요한 정보 가져오기
	public String getHosNow(String hosId) {
		System.out.println(hosId);
		String bizStt = "N";
		String sql = "SELECT s.biz_stt FROM hos_stt "
				+ " WHERE h.hos_id = ? " 
				+ " and biz_stt == 'Y'"; // 체크 제약조건 대소문자 확인 후 수정 //당일 휴일아니라도 현재상태가 영업중상태가 아니면 접수불가
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

	// 병원별 휴일목록 가져오기
	public List<hosScheduleDTO> hosHldyList(String hosId) {
		List<hosScheduleDTO> list = new ArrayList<>();
		
		String sql = "select hos_id, hos_hldy"
				+ " from hos_schedule"
				+ " werhe hos_id = ?" ; 
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, hosId);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				hosScheduleDTO dto = new hosScheduleDTO();
				dto.setHosId(rs.getString("hos_id"));
				dto.setHosHldy(rs.getString("hos_hldy"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}

	// 의사별 휴일목록_ 
	public List<artrScheduleDTO> drHldyList(int artrNo, String hosId){
		List<artrScheduleDTO> list = new ArrayList<artrScheduleDTO>();
		String sql = "select artr_no, hos_id, to_char(artr_hldy, 'yyyymmdd)'"
				+ " from artr_schedule"
				+ " where artr_no = ?"
				+ " and hos_id = ? "
				+ " order by artr_hldy desc";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, artrNo);
			pstmt.setString(2, hosId);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				artrScheduleDTO dto = new artrScheduleDTO();
				dto.setArtrNo(artrNo);
				dto.setHosId(rs.getString("hos_id"));
				dto.setArtrHldy(rs.getString("artrssHldy"));
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
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
}
