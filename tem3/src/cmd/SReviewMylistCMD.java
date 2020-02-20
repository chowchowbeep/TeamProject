package cmd;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import lastdto.reviewDTO;

public class SReviewMylistCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//S18 내가 쓴 리뷰 리스트 페이지
		String path ="aView/kjr/review_mylist.jsp"; //
		
		//값 받아오기
		String hosId ="hos1"; //request.getParameter("hosId"); hosid받아오는거 추가
		String sicId ="sic3"; //request.getParameter("sicId"); 유저id 받아우는 거 추가
		String contents = request.getParameter("contents");
		String star = request.getParameter("star");
		reviewDTO dto = new reviewDTO();
		//insert작업 
		
	
		return path;
	}

}
