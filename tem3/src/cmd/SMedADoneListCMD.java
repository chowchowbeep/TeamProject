package cmd;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import kcrDAO.HosInfoDAO;
import kcrDAO.MediRqstDAO;
import lastdto.hosMemberDTO;
import lastdto.mediRqstDTO;

public class SMedADoneListCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
				// String id = request.getParameter("id"); 
				//로그인중인 아이디를 받아오도록// 나중에 세션으로 변경
				String id = "sic1"; //가상의 파라미터
				
				String type = "all";				
				
				//두 테이블을 조인하고, list는 dto별로 각각 받아오기.
				MediRqstDAO dao = new MediRqstDAO();
				List<mediRqstDTO> listRq = new ArrayList<>(); 
				listRq = dao.selectDone(id, type);
				
				HosInfoDAO dao2 = new HosInfoDAO();
				List<hosMemberDTO> listHos = new ArrayList<>();
				listHos = dao2.selectDone(id, type);
				
				HosInfoDAO dao3 = new HosInfoDAO();
				List<hosMemberDTO> listDc = new ArrayList<>();
				listDc = dao3.selectDone(id, type);
				
				
				request.setAttribute("list1", listRq);
				request.setAttribute("list2", listHos);
				request.setAttribute("list3", listDc);
				request.setAttribute("id", id); 
				
				String path ="aView/chorong/med_AdoneList.jsp";
				
				return path;
	}

}
