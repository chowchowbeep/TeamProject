package cmd;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import kimmj.decDAO;
import lastdto.declarationDTO;

public class MPoliceDetailCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String sicId = request.getParameter("sicId");
		decDAO dao = new decDAO();
		declarationDTO dto = new declarationDTO();
		dto = dao.selectone(sicId);
		
		request.setAttribute("dto", dto);
		request.setAttribute("sicId", sicId);
		
		
	
		
	
		String path ="aView/kimmj/master-police-detail.jsp"; //
		return path;
		
		
	}
	
	

}
