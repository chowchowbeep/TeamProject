package cmd;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import kjr.BookmarkDAO;
import lastdto.bookmarkDTO;

public class SBookmarkCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String path ="aView/kjr/bookmark.jsp"; //S30 관심병원 리스트 페이지
		BookmarkDAO bookDAO = new BookmarkDAO();
		String id = "sic3";
		ArrayList<bookmarkDTO> list = bookDAO.select(id);
		request.setAttribute("starList", list);
		return path;
	}

}
