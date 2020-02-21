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
		
		//S8 병원정보 상세조회 페이지로부터 병원id를 파라미터로 받아야해요
		
		String hosId = null;
				
		request.setAttribute("hosId", hosId);
		
		String path ="aView/chorong/tmr_request.jsp"; //S28 당일접수 신청 페이지
		
		return path;
	}

}
