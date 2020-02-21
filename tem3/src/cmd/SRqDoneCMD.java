package cmd;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;

public class SRqDoneCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		//S29 진료신청 완료 페이지(접수/예약)
		
		
		String path ="aView/chorong/rq_done.jsp"; 
		
		return path;
	}

}
