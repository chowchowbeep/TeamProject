package cmd;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import kcr.InfoForRequestDAO;
import lastdto.DocuFileNInfoDTO;

public class SDcryDetailCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int dcryNo = Integer.parseInt(request.getParameter("dcryNo"));
		InfoForRequestDAO dao = new InfoForRequestDAO();
		DocuFileNInfoDTO dto = new DocuFileNInfoDTO();
		
		dto = dao.getDcry(dcryNo);
		
		request.setAttribute("dto", dto);
		
		String path ="/aView/chorong/dcryDetail.jsp";
		
		return path;
	}

}
