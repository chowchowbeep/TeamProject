
package cmd;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import kcrDAO.XXHosInfoDAO;
import kcrDAO.MediRqListItemDAO;
import kcrDAO.XXMediRqstDAO;
import lastdto.hosMemberDTO;
import lastdto.mediRqListItemDTO;
import lastdto.mediRqstDTO;

public class SMedRBeforeMedListCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		 //S22 진료신청현황 리스트(예약) 페이지
		
		// String id = request.getParameter("id"); 
		//로그인중인 아이디를 받아오도록// 나중에 세션으로 수정
		String id = "sic1"; //가상의 파라미터
		String type = "res";
		
		MediRqListItemDAO dao = new MediRqListItemDAO();
		List<mediRqListItemDTO> list = new ArrayList<>();
		list = dao.selectAll(id, type);
		
		
		request.setAttribute("list", list);
		request.setAttribute("id", id);
		
		
		String path ="aView/chorong/med_RbeforeMedList.jsp";
		
		return path;
	}

}
