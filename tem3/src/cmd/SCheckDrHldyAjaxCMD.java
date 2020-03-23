package cmd;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import kcr.InfoForRequestDAO;
import lastdto.artrScheduleDTO;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class SCheckDrHldyAjaxCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String artrNo = request.getParameter("artrNo");
		String selectedDt = request.getParameter("selectedDt");
		boolean checkDrHldy;
		
		System.out.println("at cmd"+artrNo+","+selectedDt);
		
		InfoForRequestDAO dao = new InfoForRequestDAO();
		JSONObject jsonObj = new JSONObject();
		
		checkDrHldy = dao.checkDrHldy(artrNo, selectedDt); 
		
		jsonObj.put("checkDrHldy", checkDrHldy);
		String isDrHldy = jsonObj.toString();
		
		System.out.println("의사휴일?"+isDrHldy);

		return "ajax:" + isDrHldy;
	}

}
