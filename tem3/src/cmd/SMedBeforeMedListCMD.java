package cmd;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;

public class SMedBeforeMedListCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
//		String id = request.getParameter("id"); 
		String id = "sic1"; // 가상의 파라미터 

		request.setAttribute("id", id);
		request.setAttribute("doneStatus", "before");
		
		String path = "aView/chorong/medList.jsp";
		return path;
	}

}
