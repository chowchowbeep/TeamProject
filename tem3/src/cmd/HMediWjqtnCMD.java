package cmd;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import kty.Medi_wjqtnDAO;
import lastdto.mediRqstDTO;

public class HMediWjqtnCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String path ="aView/taeyoung/medi_wjqtn.jsp"; //(당일접수)진료신청 현황 리스트 페이지 로 이동
		Medi_wjqtnDAO dao = new Medi_wjqtnDAO();
		List<mediRqstDTO> list = dao.selectList();
		request.setAttribute("list", list);
		return path;
	}
}
