package cmd;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import lastdto.artrInfoDTO;
import kty.ArtrDAO;

public class HDoctorlistCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String hosId = (String) request.getSession().getAttribute("memberId");
		String path ="aView/taeyoung/doctor_list.jsp"; //의사리스트 페이지로 이동
		ArtrDAO dao = new ArtrDAO();
		List<artrInfoDTO> list = dao.selectList(hosId);
		request.setAttribute("list", list);
		return path;
	}

}
