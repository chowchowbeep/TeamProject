package cmd;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import kcr.InfoForRequestDAO;
import lastdto.mediRqstDTO;
import net.sf.json.JSONArray;

public class SGetUnselectableTimeAjaxCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String hosId = request.getParameter("hosId");
		String artrNo = request.getParameter("artrNo");
		String selectedDt = request.getParameter("selectedDt");
		System.out.println(hosId + ", " + artrNo + ", " + selectedDt);
		
		InfoForRequestDAO dao = new InfoForRequestDAO();
		

		return "ajax:" + JSONArray.fromObject(unselectableTimeList);
	}

}
