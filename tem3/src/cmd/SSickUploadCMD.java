package cmd;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;

public class SSickUploadCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setAttribute("sic_id", request.getParameter("sic_id"));
		request.setAttribute("hos_id", request.getParameter("hos_id"));
		
		String path ="/aView/leedy/sick_upload.jsp"; //S35 기록물 업로드 페이지
		
		return path;
	}

}
