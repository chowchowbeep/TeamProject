package cmd;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import kcr.MediRqdetailDAO;
import lastdto.mediRqdetailDTO;

public class HMediDetailCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int rqstNo = Integer.parseInt(request.getParameter("rqstNo"));
		
		MediRqdetailDAO dao = new MediRqdetailDAO();
		mediRqdetailDTO dto = dao.selectOne(rqstNo);
		
		request.setAttribute("dto", dto);
		System.out.println("at HMediDetailCMD"+dto.toString());
		
		String path ="aView/taeyoung/medi_detail.jsp"; //진료상세정보  페이지 로 이동
		return path;
	}

}
