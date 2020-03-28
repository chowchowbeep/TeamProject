package cmd;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import lastdto.sickMemberDTO;
import leedy.sickSignupDAO;

public class SSickSignupCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	
		
		sickMemberDTO dto = new sickMemberDTO();
		sickSignupDAO dao = new sickSignupDAO();
		
		//파라미터 받아오기
		
		String sic_phone= request.getParameter("sic_phone_1")+"-"+request.getParameter("sic_phone_2")+"-"
				+request.getParameter("sic_phone_3");
		
		
		dto.setSicId(request.getParameter("sic_id"));
		dto.setSicPw(request.getParameter("sic_pw"));
		dto.setSicName(request.getParameter("sic_name"));
		dto.setSicPhone(sic_phone);
		System.out.println(dto.toString());
		
		int r=dao.sickInsert(dto);
		
		//인덱스페이지에서 버튼 눌렀을 때
		return "redirect:ToLoginPage.do";
	}

}
