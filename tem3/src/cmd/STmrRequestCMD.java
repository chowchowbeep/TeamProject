package cmd;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;

public class STmrRequestCMD implements Command {
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		// S28,29통합 진료신청페이지로 이동
		
		// 병원 상세정보 페이지에서 파라미터로 가져오는 값 //세션으로 수정
		String sidId = request.getParameter("sicId");
		
		//getParameter()호출없이 그대로 받아서 페이지에 출력할 
		//hosId, hosName, hosAdd, hosBizTime은 ${param.name} 사용
		
		
		request.setAttribute("id", sidId);
		request.setAttribute("rqType", "Tmr");//진료신청페이지에서 접수인지, 예약인지에 따라 정보를 다르게 표시할 수 있도록
	

		String path ="aView/chorong/request.jsp"; //S28 당일접수 신청 페이지
		return path;
	}

}
