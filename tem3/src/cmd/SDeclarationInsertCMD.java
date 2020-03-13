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

		// 나중에 세션값 받아오는 것으로 수정할 것
		String sicId = request.getParameter("id");
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

		request.setAttribute("id", sicId); // 추후수정__ 세션으로

		String path = "redirect:SMedADoneList.do";

		return path;
	}

}
