package cmd;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import leedy.sickSignupDAO;

public class SSickMemberIdCheckActionCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	sickSignupDAO dao = new sickSignupDAO();
	
	String id = request.getParameter("sic_id");
	boolean b = dao.isIdChk(id);
	
	request.setAttribute("idChk", b);
	request.setAttribute("sic_id", id);
		
		return "aView/leedy/idChkForm2.jsp";
	}

}
