package cmd;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;

public class SHospitalInfoCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String path ="aView/kjr/hospital_info.jsp"; //S8 병원정보 상세조회 페이지
		String hosId = request.getParameter("hosId");
		System.out.println("shospital인포~~ "+hosId);
		return path;
	}

}
