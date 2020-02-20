package cmd;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import kcrDAO.MediRqdetailDAO;
import lastdto.mediRqdetailDTO;

public class SRqDetailCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// S21 진료신청현황 상세/취소 페이지(접수/예약)

		int rqstNo=0;
		// 수정후 지울지 말지???
		try {
			if (request.getParameter("rqstNo") != null 
					|| request.getParameter("rqstNo") != "") {
				rqstNo = Integer.parseInt(request.getParameter("rqstNo"));
			}
		} catch (NumberFormatException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		MediRqdetailDAO dao = new MediRqdetailDAO();
		mediRqdetailDTO dto = new mediRqdetailDTO();
		dto = dao.selectOne(rqstNo);// 단건조회
		// int ifTime = dao.ifTime()//예상대기인원수

		request.setAttribute("dto", dto);
		request.setAttribute("rqstNo", rqstNo); // 상세페이지에서 취소가능하도록 진료신청번호 넘김
		// request.setAttribute("n", ifTime); //예상대기인원수

		String path = "aView/chorong/rq_detail.jsp";

		return path;

	}

}
