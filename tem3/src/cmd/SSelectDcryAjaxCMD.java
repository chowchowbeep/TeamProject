package cmd;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import kcr.InfoForRequestDAO;
import lastdto.DocuFileNInfoDTO;
import net.sf.json.JSONArray;

public class SSelectDcryAjaxCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String sicId = (String)request.getSession().getAttribute("memberId");
		
		List<DocuFileNInfoDTO> list = new ArrayList<>();
		InfoForRequestDAO dao = new InfoForRequestDAO();
		list = dao.getDcryList(sicId);
		
		String path ="ajax:"+ JSONArray.fromObject(list);
		
		return path;
	}

}
