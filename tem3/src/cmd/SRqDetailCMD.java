package cmd;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import kcr.MediRqdetailDAO;
import lastdto.mediRqdetailDTO;

public class SRqDetailCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// S21 진료신청현황 상세/취소 페이지(접수/예약)

		String sicId = (String) request.getSession().getAttribute("memberId");
		int rqstNo = Integer.parseInt(request.getParameter("rqstNo"));
		
		request.setAttribute("id", sicId);
		request.setAttribute("rqstNo", rqstNo);
		
		String path = "aView/chorong/rq_detail.jsp";

		return path;

	}

}
