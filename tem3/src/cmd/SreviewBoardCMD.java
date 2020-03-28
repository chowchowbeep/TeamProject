package cmd;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import kjr.PagingVo;
import kjr.ReviewDAO;
import lastdto.reviewListDTO;

public class SreviewBoardCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ReviewDAO dao = new ReviewDAO();
		ArrayList<reviewListDTO> dto = new ArrayList<reviewListDTO>();
		String path = "aView/kjr/reviewBoard.jsp"; //리뷰 ifram
		String hosId = request.getParameter("hosId");
		String num = request.getParameter("currentPage");
		String block = request.getParameter("nowblock");
		// 블럭당 페이지갯수 ㅎ   
		int displayPage = 2; 
		 // 한 페이지에 몇 개의 로우 (선택 set)  
		int displayRow = 2; 
		 // 전체 게시글 수 (get)  
		double totalCount = dao.getBoardCnt(hosId);   
		 // 현재 페이지 == 누른 버튼번호 (현재페이지번호)  
		int currentPage =Integer.parseInt(num);  
		 // 전체 페이지 수 (get)  
		int totalPage = (int) Math.ceil(totalCount/(double)displayRow);    
		 //시작번호 찾기   
		int beginPage = (currentPage-1)*displayRow+1; //(누른번호-1 )*한페이지에 들어갈 로우 수      
		 //끝번호찾기  
		int endPage = currentPage*displayRow;	//누른번호*한페이지에 들어갈 로우 수
		
		int totalblcok = (int) Math.ceil((double)totalPage/displayPage);//전체 블럭 수 
		int nowblock = Integer.parseInt(block);   ;//현재 보여질 블럭 << 누른번호/블럭갯수
		int btnStart =	nowblock*displayPage-1; // 현재페이지 첫번째 버튼찾기
		 //이전  
		int progress = (nowblock-1)*displayPage-(displayPage-1) ; //이전눌렀을때 첫번째 버튼 찾기 
		if(progress==0) {
			progress =1;
		}
		 //다음  
		int next = (nowblock+1)*displayPage-(displayPage-1) ; //다음눌렀을때 첫번째 버튼 찾기
		boolean proIF = false;
		boolean nextIF = false;
		if(progress>=1) {
			proIF = true;
		}
		if((nowblock+1)<=totalblcok) {
			nextIF = true;
		}
		
		
		
		PagingVo vo = new PagingVo(totalCount, currentPage, totalPage,
				displayPage, displayRow, beginPage,
				endPage, progress, next, totalblcok, nowblock, btnStart);
		
		System.out.println(vo.toString());
		System.out.println("totalblcok"+" (int) Math.ceil((double)"+totalPage+"/"+displayPage+")");
		System.out.println("nowblock"+nowblock+"=  (int) Math.ceil((double)"+currentPage+"/"+displayPage+")");
		System.out.println("nowblock+1)>totalblcok :"+nowblock+"+1)>"+totalblcok);
		
		
		//dto = dao.selectHos(hosId,currentPage); //상세조회한 병원회원에게 달린 리뷰 전체 조회 
		dto = dao.selectHos(hosId, beginPage,endPage); //버튼선택하면 게시글 데이터 가져옴 
		request.setAttribute("dto", dto);
		request.setAttribute("vo",vo);
		request.setAttribute("proIF",proIF);
		request.setAttribute("nextIF", nextIF);
		return path;
		
	}
}
