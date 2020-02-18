package kjr.ajax;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import kjr.CateDAO;
import kjr.LocaSechDAO;
import lastdto.cApaDTO;
import lastdto.locaSechDTO;
import net.sf.json.JSONArray;

public class CategoriAjaxCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String wd = request.getParameter("Code");
		System.out.println(wd);
		CateDAO catedao = new CateDAO();
		ArrayList<cApaDTO> list = null; 
		
		if(wd.equals("apa")) {
			list = catedao.apaSelect();
		}else if(wd.equals("sub")){
			list = catedao.subSelect();
		}else if(wd.equals("tema")){
			list = catedao.temaSelect();
		}
		return "ajax:" + JSONArray.fromObject(list);
	}

}
