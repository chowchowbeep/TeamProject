package cmd;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import lastdto.sickMemberDTO;
import leedy.sickMemModifyDAO;
import leedy.sickSignupDAO;

public class SSickMemberModifyGoCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		sickMemberDTO dto = new sickMemberDTO();
		sickMemModifyDAO dao = new sickMemModifyDAO();
		
		//파라미터 받아오기
		
		dto.setSicPw(request.getParameter("sic_pw"));
		dto.setSicPhone(request.getParameter("sic_phone"));
		System.out.println(dto.toString());
		
		int r = dao.sickMemUpdate(dto);
		
		
		//인덱스페이지에서 버튼 눌렀을 때
		
		return "aView/taeyoung/logintest.jsp";
	}

}
