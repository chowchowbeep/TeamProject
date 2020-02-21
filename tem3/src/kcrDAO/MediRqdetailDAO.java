package kcrDAO;

import java.sql.SQLException;

import command.DAO;
import lastdto.mediRqdetailDTO;
import lastdto.mediRqstDTO;

public class MediRqdetailDAO extends DAO {

	// 진료신청상세 단건조회__
	// 신청현황상세, 진료신청완료페이지,
	// 진료이력( 진료이력목록을 통해 볼 수 있으므로 mctt_stt 진료상태가 후(Y)인지는 사전에 필터링되어 있음 )
	public mediRqdetailDTO selectOne(int rqstNo) {
		mediRqdetailDTO dto = new mediRqdetailDTO();
		try {
			String sql = "SELECT r.*, h.hos_name, h.hos_phone, h.hos_addr,  a.artr_name, a.ARTR_SUB "
					+ "FROM MEDI_RQST r " + "join HOS_MEMBER h " + "on r.HOS_ID = h.HOS_ID " + "join artr_info a "
					+ "on a.artr_no = r.artr_no " + "where r. rqst_no = ?"
					+ "order by r.rqst_dttm desc, r.rqst_no desc";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, rqstNo);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				dto.setRqstNo(rs.getInt("RQST_NO"));
				dto.setSicId(rs.getString("SIC_ID"));
				dto.setRqstDttm(rs.getDate("RQST_DTTM"));
				dto.setHosId(rs.getString("HOS_ID"));
				dto.setResDttm(rs.getDate("RES_DTTM"));
				dto.setArtrNo(rs.getInt("ARTR_NO"));
				dto.setRqstTy(rs.getString("RQST_TY"));
				dto.setDcryNo(rs.getInt("DCRY_NO"));
				dto.setMsg(rs.getString("MSG"));
				dto.setIfTime(rs.getString("IFTIME"));

				dto.setHosName(rs.getString("HOS_NAME"));
				dto.setHosPhone(rs.getString("HOS_PHONE"));
				dto.setHosAddr(rs.getString("HOS_ADDR"));

				dto.setArtrName(rs.getString("ARTR_NAME"));
				dto.setArtrSub(rs.getString("ARTR_SUB"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return dto;
	}

	// 예상대기인원수 구하는 프로시저 호출
	public int getNoOfWaiting() {
		int NoOfWaiting = 0;
		String call = "{? = call employ_ename(?) }";

		try {
			cstmt = conn.prepareCall(call);

			// IN parameter설정
			cstmt.setInt(2, 7566);

			// Out parameter의 Type설정
			cstmt.registerOutParameter(1, java.sql.Types.VARCHAR);

			// CallableStatement실행
			cstmt.executeUpdate();

			// Out parameter의 값을 얻고, 출력한다.
			System.out.println("result : " + cstmt.getString(1));

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return NoOfWaiting;
	}

	// 당일접수 신청
	public int tmrInsert(mediRqstDTO dto) {
		int r = 0;
		String sql;

		if (dto.getDcryNo() != 0) {
			sql = "insert into MEDI_RQST" + "(RQST_NO, SIC_ID,  HOS_ID, " + "ARTR_NO, RQST_TY, DCRY_NO, MSG, IFTIME)"
					+ "values" + "(RQST_SEQ.nextval, ?, ?, " + "?, 'D001', ? ,?, ?)"; // D001 당일접수
		} else { // 기록물을 선택하지 않은 경우를 위해서
			sql = "insert into MEDI_RQST" + "(RQST_NO, SIC_ID,  HOS_ID, " + "ARTR_NO, RQST_TY, MSG, IFTIME)" + "values"
					+ "(RQST_SEQ.nextval, ?, ?, " + "?, 'D001', ?, ?)"; // D001 당일접수
		}
		try {
			if (dto.getDcryNo() != 0) {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, dto.getSicId());
				pstmt.setString(2, dto.getHosId());
				pstmt.setInt(3, dto.getArtrNo());
				pstmt.setInt(4, dto.getDcryNo());
				pstmt.setString(5, dto.getMsg());
				pstmt.setString(6, dto.getIfTime());
			} else {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, dto.getSicId());
				pstmt.setString(2, dto.getHosId());
				pstmt.setInt(3, dto.getArtrNo());
				pstmt.setString(4, dto.getMsg());
				pstmt.setString(5, dto.getIfTime());
			}

			r = pstmt.executeUpdate();
			System.out.println(r + "건 입력완료");

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return r;
	}

	// 예약 신청
	public int resInsert(mediRqstDTO dto) {
		int r = 0;
		String sql;

		if (dto.getDcryNo() != 0) {
			sql = "insert into MEDI_RQST " + "(RQST_NO, SIC_ID, HOS_ID, RES_DTTM, " + "ARTR_NO, RQST_TY, DCRY_NO, MSG) "
					+ "values " + "(RQST_SEQ.nextval, ?, ?, ?, " + "?, 'D002', ? ,?)"; // D002 예약
		} else { // 기록물을 선택하지 않은 경우를 위해서
			sql = "insert into MEDI_RQST " + "(RQST_NO, SIC_ID, HOS_ID, RES_DTTM, " + "ARTR_NO, RQST_TY, MSG) "
					+ "values " + "(RQST_SEQ.nextval, ?, ?, ?, " + "?, 'D002', ?)"; // D002 예약
		}
		try {
			if (dto.getDcryNo() != 0) {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, dto.getSicId());
				pstmt.setString(2, dto.getHosId());
				pstmt.setDate(3, dto.getResDttm());
				pstmt.setInt(4, dto.getArtrNo());
				pstmt.setInt(5, dto.getDcryNo());
				pstmt.setString(6, dto.getMsg());
			} else {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, dto.getSicId());
				pstmt.setString(2, dto.getHosId());
				pstmt.setDate(3, dto.getResDttm());
				pstmt.setInt(4, dto.getArtrNo());
				pstmt.setString(5, dto.getMsg());
			}

			r = pstmt.executeUpdate();
			System.out.println(r + "건 입력완료");

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return r;

	}
	
	
	

	// 진료신청 직후 결과페이지 출력을 위해 넘길 가장 최근 진료신청의 rqstNo값 구하기
	public int getHotRqstNo(String sicId) {
		int rqstNo = 0;
		try {
			String sql = "select rownum, a.rqst_no" + 
					"from medi_rqst a " + 
					"where a.sic_id = ? " + 
					"and rownum=1 " + 
					"order by a.rqst_no desc";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, sicId);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				rqstNo = rs.getInt("RQST_NO");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return rqstNo;
	}
	
	
	
	
	

	// 진료신청취소 _ //진료신청의 진료타입을 환자취소로
	public int cancelRq(int rqstNo) {
		int r = 0;
		String sql;

		sql = "update medi_rqst " + "set " + "rqst_ty = 'D004' " + "where rqst_no = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, rqstNo);
			r = pstmt.executeUpdate();
			System.out.println(r + "건 변경완료");

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return r;
	}

	// 진료신청취소 _ 취소시 상태정보도 진료 전/후 없이 취소로 변경
	public int ChangeMcttStt(int rqstNo) {
		int r = 0;
		String sql;

		sql = "update medi_info " + "set " + "mctt_stt = 0 " + "where rqst_no =?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, rqstNo);
			r = pstmt.executeUpdate();
			System.out.println(r + "건 변경완료");

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return r;
	}

	// 진료신청취소 _ to_penalty 프로시저 실행
	public int penaltyIfCancel() {
		int r = 0;
		String call = "{? = call employ_ename(?) }"; //

		try {
			cstmt = conn.prepareCall(call);

			// IN parameter설정
			cstmt.setInt(2, 7566);

			// Out parameter의 Type설정
			cstmt.registerOutParameter(1, java.sql.Types.VARCHAR);

			// CallableStatement실행
			cstmt.executeUpdate();

			// Out parameter의 값을 얻고, 출력한다.
			System.out.println("result : " + cstmt.getString(1));

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return r;
	}
}
