package kjr.ajax;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import command.Command;
import lastdto.hosSttDTO;
import kjr.HosSttDAO;
import net.sf.json.JSONArray;

public class HosSttAjaxCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("aa");
		HttpSession session = request.getSession(true);
		String sessionId = (String)session.getAttribute("memberId"); 
		String hosId =sessionId; 
		String bizStt = request.getParameter("bizStt");
		System.out.println(bizStt);
		if(bizStt.equals("startBtn")) {
			bizStt = "Y";
		}else {
			bizStt = "N";
		}
		hosSttDTO dto = new hosSttDTO();
		dto.setHosId(hosId);
		dto.setBizStt(bizStt);
		//update 작업 
		HosSttDAO dao = new HosSttDAO();
		boolean checkUpdate = dao.Update(dto);
		
		
		
		return "ajax:" + JSONArray.fromObject(checkUpdate);
	}

}
