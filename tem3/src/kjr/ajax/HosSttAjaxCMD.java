package kjr.ajax;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import lastdto.hosSttDTO;
import kjr.HosSttDAO;
import net.sf.json.JSONArray;

public class HosSttAjaxCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("?????????????????????????????뭐야 안넘어가냐?");
		String hosId ="hos3"; //세션에서 hosId 받아오는거 추가
		String bizStt = request.getParameter("bizStt");
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
