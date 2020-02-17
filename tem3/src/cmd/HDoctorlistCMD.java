package cmd;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import dto.artrInfoDTO;
import kty.ArtrDao;

public class HDoctorlistCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String path ="aView/taeyoung/doctor_list.jsp"; //
		ArtrDao dao = new ArtrDao();
		List<artrInfoDTO> list = dao.selectList();
		request.setAttribute("list", list);
		return path;
	}

}
