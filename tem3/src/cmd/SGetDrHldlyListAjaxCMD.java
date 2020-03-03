package cmd;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import kcrDAO.InfoForRequestDAO;
import lastdto.artrScheduleDTO;
import net.sf.json.JSONArray;

public class SGetDrHldlyListAjaxCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int artrNo = Integer.parseInt(request.getParameter("artrNo"));
		System.out.println(artrNo);
		
		InfoForRequestDAO dao = new InfoForRequestDAO();
		List<artrScheduleDTO> list = new ArrayList<>();
		
		list = dao.drHldyList(artrNo); //db값 받아옴

		return "ajax:" + JSONArray.fromObject(list);
	}

}
