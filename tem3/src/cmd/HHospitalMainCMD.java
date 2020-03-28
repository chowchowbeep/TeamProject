package cmd;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import command.Command;
import kjr.MediDAO;
import lastdto.MediJoinDTO;

public class HHospitalMainCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String path ="/aView/kjr/hospital_main.jsp";
		HttpSession session = request.getSession(true);
		String sessionId = (String)session.getAttribute("memberId"); 
		String hosId = sessionId;
		MediDAO mediDAO = new MediDAO();
		ArrayList<MediJoinDTO> mediList = mediDAO.selectMediList(hosId);
		ArrayList<MediJoinDTO> yeList = mediDAO.selectYeList(hosId);
		
		request.setAttribute("mediList",mediList);
		request.setAttribute("yeList",yeList);
		return path;
	}

}
