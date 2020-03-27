package cmd;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import command.Command;
import kjr.BookmarkDAO;
import kjr.HHospitalProfileDAO;
import lastdto.bookmarkDTO;

public class SBookmarkCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String path ="aView/kjr/bookmark.jsp"; //S30 관심병원 리스트 페이지
		HttpSession session = request.getSession(true);
		String sessionId = (String)session.getAttribute("memberId"); 
		
		BookmarkDAO bookDAO = new BookmarkDAO();
		HHospitalProfileDAO hosDAO = new HHospitalProfileDAO();
		String id = sessionId;
		ArrayList<bookmarkDTO> list = bookDAO.select(id);
		request.setAttribute("starList", list);
		return path;
	}

}
