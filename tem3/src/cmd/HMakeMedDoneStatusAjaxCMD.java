package cmd;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import kcr.MediRqdetailDAO;
import net.sf.json.JSONObject;

public class HMakeMedDoneStatusAjaxCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int rqstNo = Integer.parseInt(request.getParameter("rqstNo"));
		System.out.println("=====at HMakeMedDoneStatusAjaxCMD, rqstNo: "+rqstNo+"=======");
		
		MediRqdetailDAO dao = new MediRqdetailDAO();
		JSONObject jsonObj = new JSONObject();
		
		int ok = dao.MakeMedDoneStatus(rqstNo);
		jsonObj.put("ok", ok);
		String result = jsonObj.toString();
		System.out.println(result);
		return "ajax:" + result;
	}

}
