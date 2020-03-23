package cmd;

import java.io.IOException;
import java.util.List;

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
		String path ="aView/kimmj/master-search-hoslist.jsp"; //
		hosDAO dao = new hosDAO();
		List<hosJoinMemberDTO> list = dao.select();
		request.setAttribute("list", list);
		return path;
	}
   
}
