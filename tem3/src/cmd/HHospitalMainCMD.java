package cmd;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import command.Command;

public class HHospitalMainCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String path ="/aView/kjr/hospital_main.jsp";
		HttpSession session = request.getSession(true);
		String sessionId = (String)session.getAttribute("memberId"); 
		String hosId = sessionId;
		request.setAttribute("hosId",hosId);
		return path;
	}

}
