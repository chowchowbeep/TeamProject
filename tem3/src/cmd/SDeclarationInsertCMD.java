package cmd;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import kcr.DeclarationDAO;
import lastdto.declarationDTO;

public class SDeclarationInsertCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 병원신고 처리

		String sicId = (String) request.getSession().getAttribute("memberId");
		String hosId = request.getParameter("hosId");
		String decCont = request.getParameter("decCont");

		declarationDTO dto = new declarationDTO();
		DeclarationDAO dao = new DeclarationDAO();

		dto.setSicId(sicId);
		dto.setHosId(hosId);
		dto.setDecCont(decCont);
		
		System.out.println("==================");
		System.out.println("declaration.jsp에서 받아온 값: " + dto.toString());
		System.out.println("==================");
		
		dao.declaration(dto);

		String path = "redirect:SMedDoneList.do";

		return path;
	}

}
