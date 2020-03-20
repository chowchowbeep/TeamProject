
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
import net.sf.json.JSONArray;

public class SMedListAjaxCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// S27 진료신청현황 리스트(전체) 페이지

		
		// 로그인중인 아이디를 받아오도록// 나중에 세션으로 수정
		String id = request.getParameter("id"); // 가상의 파라미터
		String type = request.getParameter("type");
		String firstIndex = request.getParameter("firstIndex");
		String lastIndex = request.getParameter("lastIndex");
		String doneStatus = request.getParameter("doneStatus");
		System.out.println("파라미터:  "+ id+", "+type+", "+firstIndex+", "+lastIndex+", "+doneStatus);
		
		MediRqListItemDAO dao = new MediRqListItemDAO();
		List<mediRqListItemDTO> list = new ArrayList<>();
		list = dao.selectAll(id, type, firstIndex, lastIndex, doneStatus);
		
		request.setAttribute("list", list);
		request.setAttribute("id", id);

		return "ajax:"+JSONArray.fromObject(list);
	}

}
