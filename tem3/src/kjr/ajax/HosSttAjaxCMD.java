package kjr.ajax;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import kjr.ReviewDAO;
import lastdto.reviewDTO;
import net.sf.json.JSONArray;

public class HosSttAjaxCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String hosId ="hos2"; //세션에서 hosId 받아오는거 추가
		
		//update 작업 
		//boolean checkInsert = dao.insert(dto);
		
		
		
		return "ajax:" ;//+ JSONArray.fromObject(list);
	}

}
