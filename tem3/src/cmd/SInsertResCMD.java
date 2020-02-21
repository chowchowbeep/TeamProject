package cmd;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import kcrDAO.MediRqdetailDAO;
import lastdto.mediRqdetailDTO;
import lastdto.mediRqstDTO;

public class SInsertResCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 예약신청 입력처리 로직

		MediRqdetailDAO dao = new MediRqdetailDAO();
		mediRqstDTO InDto = new mediRqstDTO();
		mediRqdetailDTO dto = new mediRqdetailDTO();

		int dcNo = 0;
		int drNo = 0;
		String sicId = null;
		int rqstNo = 0;
		Date resDttm;

		// 나중에 세션값 받아오는 것으로 수정할 것
		sicId = request.getParameter("id");
		InDto.setSicId(sicId);

		InDto.setHosId(request.getParameter("hosId"));

		
		int resDttmH = Integer.parseInt(request.getParameter("hour"));
		int resDttmM = Integer.parseInt(request.getParameter("minute"));
				
		// 형변환하여 데이트타입으로 넘어가도록 수정
		// InDto.setResDttm(resDttmH + resDttmM);
		
		drNo = Integer.parseInt(request.getParameter("artrNo"));
		InDto.setArtrNo(drNo);

		// 기록물 값이 선택되지 않고 파라미터를 get할 때 발생하는 Exception처리
		try {
			
			dcNo = Integer.parseInt(request.getParameter("dcryNo"));
			InDto.setDcryNo(dcNo);
		} catch (NumberFormatException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}

		InDto.setMsg(request.getParameter("msg"));

		System.out.println("파라미터로 구성한 InsertDto" + InDto.toString());
		dao.resInsert(InDto);

		// 결과페이지 출력을 위한 부분_가장최근 insert된 rqstNo 리턴하는 메소드 호출
		rqstNo = dao.getHotRqstNo(sicId);

		// 결과페이지 출력을 위한 부분_신청 상세내용 가져와서 넘기기
		dto = dao.selectOne(rqstNo);
		

		request.setAttribute("dto", dto);

		String path = "aView/chorong/rq_done.jsp";
		return path;
	}

}
