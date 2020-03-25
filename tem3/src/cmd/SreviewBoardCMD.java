package cmd;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import kjr.ReviewDAO;
import lastdto.reviewListDTO;

public class SreviewBoardCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String path = "aView/kjr/reviewBoard.jsp"; //리뷰 ifram
		String hosId = request.getParameter("hosId");
		String num = request.getParameter("currentPage");
		System.out.println("======================="+num);
		int currentPage =Integer.parseInt(num) ; // 누른 버튼번호 (현재페이지번호)
		
		
		System.out.println("hosId아이프래임 리뷰페이지로 넘어온값"+hosId);
		ReviewDAO dao = new ReviewDAO();
		ArrayList<reviewListDTO> dto = new ArrayList<reviewListDTO>();
		//dto = dao.selectHos(hosId,currentPage); //상세조회한 병원회원에게 달린 리뷰 전체 조회
		int totalrecord = dao.getBoardCnt(hosId); //리뷰 전체 건수
		//전체페이지수
		//시작번호
		//마지막번호
		
		//시작번호 찾기
		int startNum = (currentPage-1)*4+1; // (누른번호-1 )*한페이지에 들어갈 로우 수
		//끝번호찾기
		int endNum = currentPage*4;	// 누른번호*한페이지에 들어갈 로우 수
		
		dto = dao.selectHos(hosId, startNum,endNum);
		
		
		
		
		request.setAttribute("dto", dto);
		request.setAttribute("totalpage",totalpage);
		return path;
	}

}
