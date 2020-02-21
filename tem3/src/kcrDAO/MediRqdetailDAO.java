package kcrDAO;

import java.sql.SQLException;

import command.DAO;
import lastdto.mediRqdetailDTO;

public class MediRqdetailDAO extends DAO {

	// 진료신청상세 단건조회__
	// 신청현황상세, 진료신청완료페이지,
	//( 진료신청현황목록을 통해 볼 수 있으므로 mctt_stt 진료상태가 전(Y)이거나 취소인지는 사전에 필터링되어 있음 )
	// 진료이력
	//( 진료이력목록을 통해 볼 수 있으므로 mctt_stt 진료상태가 후(Y)인지는 사전에 필터링되어 있음 )
	// 뷰로 대체?
	public mediRqdetailDTO selectOne(int rqstNo) {
		mediRqdetailDTO dto = new mediRqdetailDTO();
		try {
			String sql = "SELECT r.*, h.hos_name, h.hos_phone, h.hos_addr,  "
					+ " a.artr_name, a.artr_sub,"
					+ " to_char(r.rqst_dttm,'yyyy/mm/dd') RQST_DT " //신청날짜
					+ " to_char(r.res_dttm, 'yyyy/mm/dd') RES_DT " //예약날짜
					+ " to_char(r.res_dttm, 'HH24:MI') RES_TM" //예약시간
					+ " FROM MEDI_RQST r " 
					+ " join HOS_MEMBER h on r.HOS_ID = h.HOS_ID "
					+ " join artr_info a on a.artr_no = r.artr_no " 
					+ " where r. rqst_no = ? ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, rqstNo);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				dto.setRqstNo(rs.getInt("RQST_NO"));
				dto.setSicId(rs.getString("SIC_ID"));
				dto.setRqstDttm(rs.getString("RQST_DT"));//신청날짜
				dto.setHosId(rs.getString("HOS_ID"));
				dto.setResDt(rs.getString("RES_DT"));//예약날짜
				dto.setResTm(rs.getString("RES_TM"));//예약시간
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
				System.out.println("select된 진료신청정보 " + dto.toString());
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
	public int tmrInsert(mediRqdetailDTO dto) {
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
	public int resInsert(mediRqdetailDTO dto) {
		int r = 0;
		String sql;

		if (dto.getDcryNo() != 0) {
			sql = "insert into MEDI_RQST " 
		+ "(RQST_NO, SIC_ID, HOS_ID, RES_DTTM, " 
		+ "ARTR_NO, RQST_TY, DCRY_NO, MSG) "
					+ "values " 
		+ "(RQST_SEQ.nextval, ?, ?, TO_DATE( ? , 'YYYYMMDDHH24MISS'), " 
					+ "?, 'D002', ? ,?)"; // D002 예약
		} else { // 기록물을 선택하지 않은 경우를 위해서
			sql = "insert into MEDI_RQST " 
		+ "(RQST_NO, SIC_ID, HOS_ID, RES_DTTM, " 
					+ "ARTR_NO, RQST_TY, MSG) "
					+ "values " 
					+ "(RQST_SEQ.nextval, ?, ?, TO_DATE( ? , 'YYYYMMDDHH24MISS'), " 
					+ "?, 'D002', ?)"; // D002 예약
		}
		try {
			if (dto.getDcryNo() != 0) {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, dto.getSicId());
				pstmt.setString(2, dto.getHosId());
				pstmt.setString(3, dto.getResDt()+ dto.getResTm()); //"20201122"+"185511" 
				pstmt.setInt(4, dto.getArtrNo());
				pstmt.setInt(5, dto.getDcryNo());
				pstmt.setString(6, dto.getMsg());
			} else {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, dto.getSicId());
				pstmt.setString(2, dto.getHosId());
				pstmt.setString(3, dto.getResDt()+ dto.getResTm());
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
			String sql = "select rownum, a.rqst_no " + "from medi_rqst a " + "where a.sic_id = ? " + "and rownum=1 "
					+ "order by a.rqst_no desc";
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
