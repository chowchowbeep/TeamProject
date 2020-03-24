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
		dto.setSicId(request.getParameter("sic_id"));
		System.out.println(dto.toString());
		
		
		//수정된 회원정보 DB에 넘기고 dto 통째로 넘겨서 화면에 뿌림
		int r = dao.sickMemUpdate(dto);
		request.setAttribute("dto", dto);
		
		
		//인덱스페이지에서 버튼 눌렀을 때
		
		return "redirect:SSickMemCheck.do";
	}

}
