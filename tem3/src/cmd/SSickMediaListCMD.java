package cmd;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import command.Command;
import lastdto.mediaListDTO;
import leedy.SickMediaListDAO;

public class SSickMediaListCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String path ="aView/leedy/sick_mediaList.jsp"; 
		HttpSession session = request.getSession(true);
		String sessionId = (String)session.getAttribute("memberId"); 
		String sicId =sessionId; //회원id 세션에서 받아오는걸로 변경해야함
		SickMediaListDAO dao = new SickMediaListDAO();
		ArrayList<mediaListDTO> list = dao.selectMedia(sicId);
		
		request.setAttribute("list", list);
		
		return path;
	}

}
