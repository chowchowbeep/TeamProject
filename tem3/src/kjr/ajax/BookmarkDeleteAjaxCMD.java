package kjr.ajax;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import command.Command;
import kjr.BookmarkDAO;
import kjr.ReviewDAO;
import net.sf.json.JSONArray;

public class BookmarkDeleteAjaxCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession(true);
		String sessionId = (String)session.getAttribute("memberId") ;//세션에서 회원 id를 당겨와서 넣어야함 *현재 임시로 아이디 입력
		String sicId = sessionId;
		String hosId = request.getParameter("hosId");
		
		BookmarkDAO dao = new BookmarkDAO();
		System.out.println(hosId);
		//delete작업 
		boolean checkDelete = dao.Delete(sicId,hosId);
		
		return "ajax:"+ JSONArray.fromObject(checkDelete);
	}

}
