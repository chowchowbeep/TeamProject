package cmd;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;

public class STmrDetailCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//S21 진료신청현황 상세/취소 페이지(당일접수)
		String path ="aView/chorong/tmr_detail.jsp"; //
		
		return path;

	}

}
