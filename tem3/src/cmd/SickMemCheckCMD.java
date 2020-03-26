package cmd;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import lastdto.sickMemberDTO;
import leedy.sickMemberDAO;

public class SickMemCheckCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//id가 세션이어야 함
		//String id = request.getParameter("id");
		
		
		String id = "sic1";
		
		sickMemberDTO dto;
		sickMemberDAO dao = new sickMemberDAO();
	
		
		dto = dao.select(id);
		request.setAttribute("dto",dto);

		String path="redirect:SSickMain.do";
		
		return path;
	}

}
