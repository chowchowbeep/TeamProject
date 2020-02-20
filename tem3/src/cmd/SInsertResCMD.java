package cmd;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import kcrDAO.XXMediRqstDAO;
import lastdto.mediRqstDTO;

public class SInsertResCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		// 예약신청 입력처리 로직
		
		int dcNo = 0;

		XXMediRqstDAO dao = new XXMediRqstDAO();
		mediRqstDTO dto  = new mediRqstDTO();

		// 나중에 세션값 받아오는 것으로 수정할 것
		dto.setSicId(request.getParameter("id"));
		int drNo = Integer.parseInt(request.getParameter("ARTR_NO"));
		dto.setArtrNo(drNo);
		dto.setHosId(request.getParameter("HOS_ID"));

		
		// 기록물 선택하지 않으면 데이터가 0으로 넘어가고, 해당 값은 null이 되게 할 것임
		// NumberFormatException처리
		try {
			if (request.getParameter("DCRY_NO") != null || request.getParameter("DCRY_NO") != "") {
				dcNo = Integer.parseInt(request.getParameter("DCRY_NO"));
			}
		} catch (NumberFormatException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		dto.setDcryNo(dcNo);
		
		
		dto.setMsg(request.getParameter("MSG"));

		int r = dao.tmrInsert(dto);

		System.out.println(r + "건 입력완료");
		System.out.println(dto.toString());
		
		String path = "/SRqDone.do";
		return path;
	}

}
