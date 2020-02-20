package cmd;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import leedy.hosSignupDAO;

public class HHospitalMemberBizNoCheckActionCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		hosSignupDAO dao = new hosSignupDAO();
		
		String biz = request.getParameter("hos_bizno");
		boolean b = dao.isBizChk(biz);
		
		request.setAttribute("bizChk", b);
		request.setAttribute("hos_bizno", biz);
		
		return "aView/leedy/bizNoChkForm.jsp";
	}

}
