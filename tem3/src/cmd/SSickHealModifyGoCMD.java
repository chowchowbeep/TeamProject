package cmd;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import lastdto.healthInfoDTO;
import leedy.sickHealthModifyDAO;

public class SSickHealModifyGoCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		healthInfoDTO dto = new healthInfoDTO();
		sickHealthModifyDAO dao = new sickHealthModifyDAO();
		
		
		
		return null;
	}

}
