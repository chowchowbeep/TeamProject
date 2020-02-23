package command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import lastdto.declarationDTO;

public class SDeclarationCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 나중에 세션값 받아오는 것으로 수정할 것
		String sicId = request.getParameter("id");		
		String hosId = request.getParameter("hosId");
		String decCont = request.getParameter("decCont");
		
		declarationDTO dto = new declarationDTO();
		
		dto.setSicId(sicId);
		dto.setHosId(hosId);
		dto.setDecCont(decCont);
		
		System.out.println("declaration.jsp에서 받아온 값: "+dto.toString());
		
		request.setAttribute("id", sicId); // 추후수정__ 세션으로

		String path = "aView/chorong/SRqDetail.do";

		return path;
	}

}
