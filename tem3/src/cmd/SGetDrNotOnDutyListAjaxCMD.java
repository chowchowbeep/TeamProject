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

public class SGetDrNotOnDutyListAjaxCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String hosId = request.getParameter("hosId");
		System.out.println(hosId);

		InfoForRequestDAO dao = new InfoForRequestDAO();
		List<artrScheduleDTO> list = new ArrayList<>();

		list = dao.getDrNotOnDutyList(hosId);

		return "ajax:" + JSONArray.fromObject(list);
	}

}
