package cmd;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import kcrDAO.InfoForRequestDAO;
import lastdto.artrInfoDTO;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class SGetDrForTmrAjaxCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String hosId = request.getParameter("hosId");
		System.out.println("=====ajax요청시 넘기는 데이터: "+hosId+"=======");

		InfoForRequestDAO dao = new InfoForRequestDAO();
		List<artrInfoDTO> list = new ArrayList<artrInfoDTO>();
		
		list = dao.getArtrInfoForTmr(hosId); //db값 받아옴

		return "ajax:" + JSONArray.fromObject(list);
	}

}
