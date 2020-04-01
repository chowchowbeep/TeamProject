package cmd;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import command.Command;
import kjr.ReviewDAO;
import lastdto.reviewListDTO;

public class SReviewMylistCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//S18 내가 쓴 리뷰 리스트 페이지
		System.out.println("내가쓴 리뷰페이지로 이동>>>>>>>>>>>>>>>>>>>>>");
		String path ="aView/kjr/review_mylist.jsp"; //
		HttpSession session = request.getSession(true);
		String sessionId = (String)session.getAttribute("memberId"); 
		String sicId =sessionId; //회원id 세션에서 받아오는걸로 변경해야함\
		ReviewDAO dao = new ReviewDAO();
		ArrayList<reviewListDTO> list = dao.select(sicId);
		for(reviewListDTO dto : list) {
			System.out.println(dto.getHosId());
		}
		System.out.println( );
		request.setAttribute("list", list);
	return path;	
	}

}
