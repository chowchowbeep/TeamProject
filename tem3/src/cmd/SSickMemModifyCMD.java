package cmd;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import kjr.sicMemberDAO;
import lastdto.sickMemberDTO;
import leedy.sickMemberDAO;

public class SSickMemModifyCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String id = (String)request.getSession().getAttribute("sic_id");

		sickMemberDTO dto;
		sickMemberDAO dao = new sickMemberDAO();

		dto = dao.select(id);
		request.setAttribute("dto", dto);

		String path = "aView/leedy/sick_memModify.jsp"; // S3 회원정보 수정 페이지

		return path;
	}

}
