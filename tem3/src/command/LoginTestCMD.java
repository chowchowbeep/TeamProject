package command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kjr.sicMemberDAO;
import lastdto.sickMemberDTO;

public class LoginTestCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	
		String id = request.getParameter("id");
		
		sickMemberDTO dto;
		sicMemberDAO dao = new sicMemberDAO();
		
		dto = dao.select(id);
		request.getSession().setAttribute("sic_id", dto.getSicId());
		//request.getSession().setAttribute("sic_", dto.getSicId());
		//request.getSession().setAttribute("sic_id", dto.getSicId());
		//request.getSession().setAttribute("sic_id", dto.getSicId());
		//request.getSession().setAttribute("sic_id", dto.getSicId());
		
		
		String path = "aView/kjr/sick_main.jsp";
		return path;
	}

}
