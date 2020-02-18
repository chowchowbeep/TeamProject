package cmd;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import kcrDAO.MediRqstDAO;
import lastdto.mediRqstDTO;

public class SInsertResCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		// 예약신청
		// 나중에 세션값 받아오는 것으로 수정할 것
		
		
		String path = "/SRqDone.do";
		return path;
	}

}
