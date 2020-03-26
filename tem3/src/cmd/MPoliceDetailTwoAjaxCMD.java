package cmd;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import kimmj.decDAO;
import lastdto.declarationDTO;
import net.sf.json.JSONArray;

public class MPoliceDetailTwoAjaxCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		decDAO dao = new decDAO();
		String p_no = request.getParameter("p_no");
		String hos_id = request.getParameter("hos_id");
		int decyn = dao.getprd(p_no, hos_id);
		

		String path ="ajax:" + JSONArray.fromObject(decyn);
		return path;
	}

}
