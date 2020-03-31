package cmd;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import kcr.MediRqdetailDAO;
import net.sf.json.JSONObject;

public class HGetMedDoneOkAjaxCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int rqstNo = Integer.parseInt(request.getParameter("rqstNo"));
		System.out.println("=====at HGetMedDoneOkCMD, rqstNo: "+rqstNo+"=======");
		
		MediRqdetailDAO dao = new MediRqdetailDAO();
		JSONObject jsonObj = new JSONObject();
		
		String mcttStt = dao.getHosNow(rqstNo);
		System.out.println(mcttStt);
		jsonObj.put("mcttStt", mcttStt);
		String result = jsonObj.toString();
		System.out.println(result);
		return "ajax:" + result;
	}

}
