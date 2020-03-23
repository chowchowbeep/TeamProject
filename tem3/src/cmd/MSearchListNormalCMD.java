package cmd;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import kimmj.normalDAO;
import lastdto.sickJoinMemberDTO;

public class MSearchListNormalCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
//		String sicId = (request.getParameter("sic_id"));
		String sicId = "sic1";
		normalDAO dao = new normalDAO();
		sickJoinMemberDTO dto = new sickJoinMemberDTO();
		dto = dao.selectone(sicId);
		System.out.println("at cmd"+dto.toString());
		
		request.setAttribute("dto", dto);
		request.setAttribute("sicId", sicId);

		
		
		String path ="aView/kimmj/master-search-list-normal.jsp";  //M2 일반회원 정보 검색	 결과 상세 페이지
		
		
		return path;
	}

}
