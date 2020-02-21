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
		
		// 메소드 호출할 때마다 getConnection필요하기 때문에 메소드별로 생성
		// 다른방법? DAO를 분리해야 하나?? 수정시 결정할 것.
		MediRqdetailDAO dao1 = new MediRqdetailDAO(); //insert
		MediRqdetailDAO dao2 = new MediRqdetailDAO(); //rqst_no select
		MediRqdetailDAO dao3 = new MediRqdetailDAO(); // r.* select
		MediRqdetailDAO dao4 = new MediRqdetailDAO(); //예상대기인원수 호출용
		
		
		mediRqdetailDTO InDto = new mediRqdetailDTO();
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
		
		System.out.println("파라미터로 구성한 InsertDto = "+InDto.toString());
		dao1.tmrInsert(InDto); 
		
		
		
		
		// 결과페이지 출력을 위한 부분_가장최근 insert된 rqstNo 리턴하는 메소드 호출
		rqstNo = dao2.getHotRqstNo(sicId);
		
		// 결과페이지 출력을 위한 부분_신청 상세내용 가져와서 넘기기
		dto = dao3.selectOne(rqstNo);
		
		request.setAttribute("dto", dto); //결과 페이지 출력을 위해 
		
		
		String path ="aView/chorong/rq_done.jsp"; 
		return path;
		
		
	}

}
