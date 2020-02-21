package cmd;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import kcrDAO.MediRqdetailDAO;
import lastdto.mediRqdetailDTO;
import lastdto.mediRqstDTO;

public class SInsertTmrCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
		// 접수신청 입력처리 로직
		
		MediRqdetailDAO dao = new MediRqdetailDAO();
		mediRqstDTO InDto = new mediRqstDTO();
		mediRqdetailDTO dto = new mediRqdetailDTO();
		
		int dcNo = 0;
		int drNo = 0;
		String sicId = null;
		int rqstNo = 0;
		
		
	
		// 나중에 세션값 받아오는 것으로 수정할 것
		sicId = request.getParameter("id");
		InDto.setSicId(sicId);
		
		drNo = Integer.parseInt(request.getParameter("artrNo"));
		InDto.setArtrNo(drNo);
		
		InDto.setHosId(request.getParameter("hosId"));
		
		// 기록물 값이 선택되지 않고 파라미터를 get할 때 발생하는 Exception처리
		try {
			if (request.getParameter("dcryNo") != null 
					|| request.getParameter("dcryNo") != "") {
				dcNo = Integer.parseInt(request.getParameter("dcryNo"));
				InDto.setDcryNo(dcNo);
			}
		} catch (NumberFormatException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		InDto.setMsg(request.getParameter("msg"));
		
		InDto.setIfTime(request.getParameter("ifTime"));
		
		System.out.println("파라미터로 구성한 InsertDto"+InDto.toString());
		dao.tmrInsert(InDto); 
		
		
		
		
		// 결과페이지 출력을 위한 부분_가장최근 insert된 rqstNo 리턴하는 메소드 호출
		rqstNo = dao.getHotRqstNo(sicId); //이거 실행할때 자꾸 에러나... 수정해...
		
		// 결과페이지 출력을 위한 부분_신청 상세내용 가져와서 넘기기
		dto = dao.selectOne(rqstNo);
		
		request.setAttribute("dto", dto);
		
		
		String path ="aView/chorong/rq_done.jsp"; 
		return path;
		
		
	}

}
