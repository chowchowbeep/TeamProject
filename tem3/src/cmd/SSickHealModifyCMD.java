package cmd;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import lastdto.healthInfoDTO;
import leedy.sickHealthModifyDAO;

public class SSickHealModifyCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String id = (String)request.getSession().getAttribute("sic_id");
		
		healthInfoDTO dto;
		sickHealthModifyDAO dao = new sickHealthModifyDAO();
		
		
	
		
		String path ="aView/leedy/sick_healModify.jsp"; //건강정보 수정 페이지
		
		return path;
	}

}
