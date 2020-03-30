package cmd;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import kcr.MediRqdetailDAO;
import lastdto.mediRqdetailDTO;

public class SInsertTmrCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 접수신청 입력처리 로직
		MediRqdetailDAO dao = new MediRqdetailDAO();
		mediRqdetailDTO dto = new mediRqdetailDTO();
		
		
		// 세션객체에 저장된 id값 받아오기
		String sicId = (String) request.getSession().getAttribute("memberId");
		dto.setSicId(sicId);
		System.out.println("세션확인 memberId="+sicId);

		int drNo = Integer.parseInt(request.getParameter("artrNo"));
		dto.setArtrNo(drNo);

		dto.setHosId(request.getParameter("hosId"));

		// 기록물 값이 넘어오지 않은 경우 Exception처리
		try {
			if (request.getParameter("dcryNo") != null || request.getParameter("dcryNo") != "") {
				int dcNo = Integer.parseInt(request.getParameter("dcryNo"));
				dto.setDcryNo(dcNo);
			}
		} catch (NumberFormatException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}

		dto.setMsg(request.getParameter("msg"));

		dto.setIfTime(request.getParameter("ifTime"));

		System.out.println("파라미터로 구성한 InsertDto = " + dto.toString());

		// 신청내용insert
		dao.tmrInsert(dto);

		request.setAttribute("id", sicId); // 
		request.setAttribute("isRqDonePage", "yes"); // rq_detail에서 신청완료페이지표시, 신청내용상세페이지 표시를 결정

		String path = "aView/chorong/rq_detail.jsp";
		return path;

	}

}
