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
		String hosId = "hos1";
		decDAO dao = new decDAO();
		declarationDTO dto = new declarationDTO();
		dto = dao.selectone(hosId);
		
		request.setAttribute("dto", dto);
		request.setAttribute("hosId", hosId);

		String path ="aView/kimmj/master-police-detail.jsp"; //
		return path;
	}
	
	

}
