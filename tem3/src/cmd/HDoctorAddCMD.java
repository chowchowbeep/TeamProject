package cmd;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import dto.ApprenticeDoctorDto;
import kty.ArtrDao;

public class HDoctorAddCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String path ="aView/taeyoung/doctor_add.jsp"; //
		ArtrDao dao = new ArtrDao();
		List<ApprenticeDoctorDto> list = dao.selectList();
		request.setAttribute("list", list);
		return path;
	}

}
