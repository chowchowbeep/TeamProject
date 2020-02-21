package cmd;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import kcrDAO.MediRqdetailDAO;
import lastdto.mediRqdetailDTO;

public class SResRequestCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		mediRqdetailDTO dto = new mediRqdetailDTO();
		MediRqdetailDAO dao = new MediRqdetailDAO();
		
		// S8 병원정보 상세조회 페이지로부터 병원id를 파라미터로 받아야해요 // 나중에 수정
		// String hosId = request.getParameter("hosId");
		String hosId = "hos1"; //임시 파라미터
		
		// dto = dao.selectOne(hosId);
		
		
		//선택가능한 날짜와 시간을 프로시저를 통해 받아오기
		
		
		
		// 예약신청할 병원정보를 출력하기 위함
		
		// request.setAttribute("", ); //선택가능한 날짜와 시간
		// request.setAttribute("", ); //진료가능시간
		//영업중 상태에서만 hos_state bizstate_y) 접수가능(c:if로 신청폼 표시 제어)
		
		
		//병원정보(병원id, 병원명, 진료의사 및 진료과목, 현재영업정보hos_stt의 biz_stt)
		request.setAttribute("dto", dto);
		
		String path ="aView/chorong/res_request.jsp"; //S24 예약신청 페이지
		
		return path;
	}

}
