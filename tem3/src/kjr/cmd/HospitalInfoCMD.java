package kjr.cmd;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;

public class HospitalInfoCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String path ="aView/kjr/hospital_info.jsp"; //병원 상세페이지로 이동
		String hosId;
		hosId=request.getParameter("hosId");
		System.out.println(hosId);
		
		return path;
	}

}
