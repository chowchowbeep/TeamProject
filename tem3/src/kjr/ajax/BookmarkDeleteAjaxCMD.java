package kjr.ajax;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import kjr.BookmarkDAO;
import kjr.ReviewDAO;
import net.sf.json.JSONArray;

public class BookmarkDeleteAjaxCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String sicId = "sic3"; //세션에서 값 가져오기
		String hosId = request.getParameter("hosId");
		System.out.println("넘어왔니?"+hosId);
		
		BookmarkDAO dao = new BookmarkDAO();
		System.out.println(hosId);
		//delete작업 
		boolean checkDelete = dao.Delete(sicId,hosId);
		
		return "ajax:"+ JSONArray.fromObject(checkDelete);
	}

}
