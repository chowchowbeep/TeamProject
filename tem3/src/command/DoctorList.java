package command;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.ApprenticeDoctorDto;
import kty.ArtrDao;

public class DoctorList implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ArtrDao dao = new ArtrDao();
		List<ApprenticeDoctorDto> list = dao.selectList();
		request.setAttribute("list", list);
		return "aView/taeyoung/doctor_list.jsp";
	}

}
