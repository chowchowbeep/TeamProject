package cmd;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import kcr.MediRqListItemDAO;
import net.sf.json.JSONObject;

public class SMedListPagingCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("id"); // 가상의 파라미터
		String type = request.getParameter("type");
		String doneStatus = request.getParameter("doneStatus");
		System.out.println("타입파라미터;"+type+", 진료완료여부"+doneStatus+ ", id:"+id);
		
		MediRqListItemDAO dao = new MediRqListItemDAO();
		JSONObject jsonObj = new JSONObject();

		int totalDataRows = dao.cntAll(id, type, doneStatus);
		jsonObj.put("totalDataRows", totalDataRows);

		return "ajax:" + jsonObj.toString();
	}

}
