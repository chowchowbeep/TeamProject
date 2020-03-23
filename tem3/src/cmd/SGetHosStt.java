package cmd;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import kcr.InfoForRequestDAO;
import net.sf.json.JSONObject;

public class SGetHosStt implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String hosId = request.getParameter("hosId");
		//System.out.println("=====ajax요청시 넘기는 데이터: "+hosId+"=======");
		
		InfoForRequestDAO dao = new InfoForRequestDAO();
		JSONObject jsonObj = new JSONObject();
		
		String bizStt = dao.getHosNow(hosId);
		System.out.println(bizStt);
		if(bizStt.equals("Y")) {
			//System.out.println("=======1차통과=======");
			jsonObj.put("TmrOk", "Ok");
		} else { 
			//System.out.println("=======접수불가=======");
			jsonObj.put("TmrOk", "NotOk");
		}
		String result = jsonObj.toString();
		System.out.println(result);
		return "ajax:" + result;
	}

}
