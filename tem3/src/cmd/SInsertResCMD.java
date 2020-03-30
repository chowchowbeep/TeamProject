package cmd;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import kcr.MediRqdetailDAO;
import lastdto.mediRqdetailDTO;

public class SInsertResCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 예약신청 입력처리 로직
		MediRqdetailDAO dao = new MediRqdetailDAO(); //신청내용insert
		mediRqdetailDTO dto = new mediRqdetailDTO();

		// 세션객체에 저장된 id값 받아오기
		String sicId = (String) request.getSession().getAttribute("memberId");
		dto.setSicId(sicId);
		System.out.println("세션확인 memberId="+sicId);
		
		dto.setSicId(sicId);

		dto.setHosId(request.getParameter("hosId"));
		
		// res_dttm속성은 TO_DATE('202003111530', 'YYYYMMDDHH24MI') 형식으로 값이 들어가야 함
		// ResDt와 ResTm을 DAO에서 붙여서 값을 insert할 것임.
		
		String resDt = request.getParameter("resDt").replace("/", "");
		String resTm = request.getParameter("resTm").replace(":", "");
		dto.setResDt(resDt);
		dto.setResTm(resTm);
	
		
		int drNo = Integer.parseInt(request.getParameter("artrNo"));
		dto.setArtrNo(drNo);

		// 기록물 값이 넘어오지 않은 경우 Exception처리
		try {
			int dcNo = Integer.parseInt(request.getParameter("dcryNo"));
			System.out.println("SInserRes=========================dcNo"+dcNo);
			dto.setDcryNo(dcNo);
		} catch (NumberFormatException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}

		dto.setMsg(request.getParameter("msg"));

		System.out.println("파라미터로 구성한 InsertDto = " + dto.toString());
		
		// 신청내용insert
		dao.resInsert(dto);

		request.setAttribute("id", sicId);
		request.setAttribute("isRqDonePage", "yes"); //rq_detail에서 신청완료페이지표시, 신청내용상세페이지 표시를 결정
		
		String path = "aView/chorong/rq_detail.jsp";
		return path;
	}

}
