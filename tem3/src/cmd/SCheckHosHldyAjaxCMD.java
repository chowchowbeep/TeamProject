package cmd;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import kcr.InfoForRequestDAO;
import lastdto.hosScheduleDTO;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class SCheckHosHldyAjaxCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String hosId = request.getParameter("hosId");
		String selectedDt = request.getParameter("selectedDt");
		boolean checkHosHldy;
		
		System.out.println("at cmd"+hosId+","+selectedDt);
		
		InfoForRequestDAO dao = new InfoForRequestDAO();
		JSONObject jsonObj = new JSONObject();
		
		checkHosHldy = dao.checkHosHldy(hosId, selectedDt); 
		
		jsonObj.put("checkHosHldy", checkHosHldy);
		String isHosHldy = jsonObj.toString();
		
		System.out.println("병원휴일?"+checkHosHldy);

		return "ajax:" + isHosHldy;
	}

}
