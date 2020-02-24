package cmd;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import kcrDAO.MediRqdetailDAO;
import lastdto.mediRqdetailDTO;

public class SRqDetailCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// S21 진료신청현황 상세/취소 페이지(접수/예약)

		// 나중에 세션값 받아오는 것으로 수정할 것
		String sicId = request.getParameter("id");	
		int rqstNo = Integer.parseInt(request.getParameter("rqstNo"));

		MediRqdetailDAO dao1 = new MediRqdetailDAO();
		MediRqdetailDAO dao2 = new MediRqdetailDAO();
		mediRqdetailDTO dto = new mediRqdetailDTO();
		
		dto = dao1.selectOne(rqstNo);// 단건조회

		System.out.println("받아온 단건: "+ dto.toString());
		
		
		// 예상대기인원수 표시 프로시저 콜 //수정필요 
		// ajax로 값 출력할 경우 커맨드 분리??
		int noOfWaiting =dao2.getNoOfWaiting(dto.getHosId(), dto.getRqstNo());
		
		
		request.setAttribute("id", sicId); //추후수정__ 세션으로
		request.setAttribute("dto", dto); // 결과 페이지 출력을 위해
		request.setAttribute("noOfWaiting", noOfWaiting);
		
		
		String path = "aView/chorong/rq_detail.jsp";

		return path;

	}

}
