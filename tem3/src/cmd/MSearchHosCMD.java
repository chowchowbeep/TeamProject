package cmd;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;

public class MSearchHosCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String path ="aView/kimmj/master-search-hos.jsp";  //M2 회원검색(일반회원) 페이지로 이동
		
		
		return path;
	}

}
