package cmd;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import kty.ArtrDAO;
import lastdto.artrInfoDTO;

public class HDoctorAddCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String path ="aView/taeyoung/doctor_add.jsp"; //
		artrInfoDTO dto = new artrInfoDTO();
		//
		dto.setArtrName(request.getParameter("artrName"));
		dto.setArtrSub(request.getParameter("artrSub"));

		ArtrDAO dao = new ArtrDAO();
		dao.insert(dto);
		return path;
	}

}
