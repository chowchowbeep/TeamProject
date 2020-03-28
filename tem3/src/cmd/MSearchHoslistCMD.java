package cmd;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import kimmj.hosDAO;
import lastdto.hosJoinMemberDTO;

public class MSearchHoslistCMD implements Command {
      
	@Override  
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String name = "";
		String phone = "";
		String memStatus = "";
		hosDAO dao = new hosDAO();
		name = (String)request.getParameter("name");
		phone = (String)request.getParameter("phone");
		memStatus = (String)request.getParameter("memStatus");
		
		ArrayList<hosJoinMemberDTO> list = dao.search(memStatus, name, phone);
		request.setAttribute("list", list);
		
		String path ="aView/kimmj/master-search-hoslist.jsp"; //
		return path;
	}
   
}
