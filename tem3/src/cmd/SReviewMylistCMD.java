package cmd;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;

public class SReviewMylistCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//S18 내가 쓴 리뷰 리스트 페이지
		String path ="aView/kjr/review_mylist.jsp"; //
		
		//insert작업 
		String title = request.getParameter("title");
		String contents = request.getParameter("contents");
		String star = request.getParameter("star");
		
		System.out.println("title"+title);
		System.out.println("contents"+contents);
		System.out.println("star"+star);
		
	
		return path;
	}

}
