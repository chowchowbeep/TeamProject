package cmd;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import kcr.MediRqdetailDAO;
import net.sf.json.JSONObject;

public class SGetWaitingCntCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String hosId = request.getParameter("hosId"); //
		int rqstNo = Integer.parseInt(request.getParameter("rqstNo"));
		System.out.println(hosId+", "+rqstNo);
		
		MediRqdetailDAO dao = new MediRqdetailDAO();
		JSONObject jsonObj = new JSONObject();

		// 예상대기인원수 표시 프로시저 콜 //수정필요
		// ajax로 값 출력할 경우 커맨드 분리??
		int noOfWaiting = dao.getNoOfWaiting(hosId, rqstNo);
		jsonObj.put("noOfWaiting", noOfWaiting);

		return "ajax:" + jsonObj.toString();
	}

}
