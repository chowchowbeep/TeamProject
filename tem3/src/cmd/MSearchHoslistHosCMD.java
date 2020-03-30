package cmd;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import kimmj.hosDAO;
import lastdto.hosJoinMemberDTO;

public class MSearchHoslistHosCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String hosId = request.getParameter("hosId");
		System.out.println(hosId);
		hosDAO dao = new hosDAO();
		hosJoinMemberDTO dto = new hosJoinMemberDTO();
		dto = dao.selectone(hosId);

		request.setAttribute("dto", dto);
		request.setAttribute("hosId", hosId);
		
		String path ="aView/kimmj/master-search-hoslist-hos.jsp"; //병원회원 정보 검색결과 상세 페이지
		return path;
	}

}
