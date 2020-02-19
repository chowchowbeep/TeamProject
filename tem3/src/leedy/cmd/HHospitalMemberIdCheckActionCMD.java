package leedy.cmd;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import leedy.hosSignupDAO;

public class HHospitalMemberIdCheckActionCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		hosSignupDAO dao = new hosSignupDAO();
		
		String id = request.getParameter("hos_id");
		boolean b = dao.isIdChk(id);
		
		
		request.setAttribute("idChk", b);
		request.setAttribute("hos_id", id);
		return "aView/leedy/idChkForm.jsp";
	}

}
