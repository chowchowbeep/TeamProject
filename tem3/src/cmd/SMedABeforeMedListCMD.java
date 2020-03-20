
package cmd;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import kcr.MediRqListItemDAO;
import lastdto.mediRqListItemDTO;

public class SMedABeforeMedListCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// S27 진료신청현황 리스트(전체) 페이지

		// String id = request.getParameter("id");
		// 로그인중인 아이디를 받아오도록// 나중에 세션으로 수정
		String id = "sic1"; // 가상의 파라미터

		String type = "all";

		MediRqListItemDAO dao = new MediRqListItemDAO();
		List<mediRqListItemDTO> list = new ArrayList<>();
//		list = dao.selectAll(id, type);
		
		
		request.setAttribute("list", list);
		request.setAttribute("id", id);

		String path = "aView/chorong/med_AbeforeMedList.jsp";

		return path;
	}

}
