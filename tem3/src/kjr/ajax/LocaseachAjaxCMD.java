package kjr.ajax;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import kjr.LocaSechDAO;
import lastdto.locaSechDTO;
import net.sf.json.JSONArray;

public class LocaseachAjaxCMD implements Command  {
	
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String wd = request.getParameter("pCode");
		String cate = request.getParameter("cate");
		LocaSechDAO loacadao = new LocaSechDAO();
		ArrayList<locaSechDTO> list; 
		list = loacadao.select(wd,cate);
		
		return "ajax:" + JSONArray.fromObject(list);
	}
	
	
}
