package cmd;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import kimmj.normalDAO;
import lastdto.sickJoinMemberDTO;

public class MSearchListCMD implements Command {
	
	@Override   
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String name = "";
		String phone = "";
		String memStatus = "";
		normalDAO dao = new normalDAO();
		name = (String)request.getParameter("name");
		phone = (String)request.getParameter("phone");
		memStatus = (String)request.getParameter("memStatus");
	
		ArrayList<sickJoinMemberDTO> list = dao.search(memStatus, name, phone);
		request.setAttribute("list", list);

		String path ="aView/kimmj/master-search-list.jsp";  //M2 회원검색결과(일반회원) 페이지로 이동
		return path;
   
	}

}
