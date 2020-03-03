package cmd;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import kcrDAO.InfoForRequestDAO;
import lastdto.mediRqstDTO;
import net.sf.json.JSONArray;

public class SGetUnselectableTime implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String hosId = request.getParameter("hosId");
		String resDt = request.getParameter("resDt");
		int artrNo = Integer.parseInt(request.getParameter("artrNo"));
		System.out.println(hosId + ", " + resDt);
		
		InfoForRequestDAO dao = new InfoForRequestDAO();
		
		String[] unselectableTimeList = dao.getUnselectableTime(hosId, resDt, artrNo); //db값 받아옴

		return "ajax:" + JSONArray.fromObject(unselectableTimeList);
	}

}
