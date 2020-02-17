package cmd;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import dto.mediRqstDTO;
import kcrDAO.MediRqstDAO;

public class SMedBeforeMedListCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//S20 진료신청현황 리스트 페이지
		
		
		
		MediRqstDAO dao = new MediRqstDAO();
		// String id = request.getParameter("id");
		String id = "sic1"; //가상의 파라미터
		List<mediRqstDTO> list = new ArrayList<>(); 
		list = dao.selectAll(id);
		
		String path ="aView/chorong/med_beforeMedList.jsp";
		
		
		request.setAttribute("list", list);
		request.setAttribute("id", id); 
		
		
		
		return path;
	}

}
