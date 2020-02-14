package cmd;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;

public class SSickHealModifyCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//S19 건강정보 수정 페이지
		String path ="aView/leedy/sick_healModify.jsp"; //
		
		return path;
	}

}
