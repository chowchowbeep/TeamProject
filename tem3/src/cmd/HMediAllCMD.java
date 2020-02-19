package cmd;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import kty.Medi_allDAO;
import lastdto.mediListDTO;

public class HMediAllCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		 //(전체)진료신청 현황 리스트 페이지 로 이동
		String path ="aView/taeyoung/medi_all.jsp"; 
		Medi_allDAO dao = new Medi_allDAO();
		List<mediListDTO> list = dao.selectList();
		request.setAttribute("list", list);
		return path;
	}

}
