package cmd;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;

public class SMedDoneListCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 진료이력리스트 페이지로 이동
		
		String sicId = (String) request.getSession().getAttribute("memberId");
		
		request.setAttribute("doneStatus", "after");
		
		String path = "aView/chorong/medList.jsp";
		return path;
	}

}
