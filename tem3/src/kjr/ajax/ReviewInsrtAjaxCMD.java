package kjr.ajax;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import command.Command;
import kjr.ReviewDAO;
import lastdto.reviewDTO;
import net.sf.json.JSONArray;

public class ReviewInsrtAjaxCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//값 받아오기
		
			HttpSession session = request.getSession(true);
			String sessionId = (String)session.getAttribute("memberId") ;
			String hosId = request.getParameter("hosId");
			String sicId =sessionId; 
			String contents = request.getParameter("contents");
			String st = request.getParameter("star");

			System.out.println(hosId+"리뷰insert~~~~~~~~~~~~~~~~~~~~~~~~~~");
			int star = Integer.parseInt(st);
			ReviewDAO dao = new ReviewDAO();
			reviewDTO dto = new reviewDTO(sicId,hosId,star,contents);
			//insert작업 
			boolean checkInsert = dao.insert(dto);
	
			return "ajax:" + JSONArray.fromObject(checkInsert);
	}

}
