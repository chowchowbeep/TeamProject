package cmd;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import kty.Medi_reserveDAO;
import lastdto.mediRqstDTO;

public class HMediReserveCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//(예약)진료신청 현황 리스트 페이지 로 이동
		String path ="aView/taeyoung/medi_reserve.jsp"; //
		Medi_reserveDAO dao = new Medi_reserveDAO();
		List<mediRqstDTO> list = dao.selectList();
		request.setAttribute("list", list);
		return path;
	}

}
