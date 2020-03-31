package kjr;

import java.io.IOException;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import command.Command;

public class sicCodeUpdate implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String path ="SSickMain.do";
		HttpSession session = request.getSession(true);
		String sessionId = (String)session.getAttribute("memberId") ;//세션에서 회원 id를 당겨와서 넣어야함 *현재 임시로 아이디 입력
		String sicId = sessionId;
//		String HSTCS[] = request.getParameterValues("HSTCS");//사용안함
		String CHRDIS[] = request.getParameterValues("CHRDIS");
		String MEDI[] = request.getParameterValues("MEDI");
		String bdp = request.getParameter("BDP");
		String ALLRGY[] = request.getParameterValues("ALLRGY");
		String chrdis=Arrays.toString(CHRDIS);
		String medi=Arrays.toString(MEDI);
		String allrgy=Arrays.toString(ALLRGY);
		HealthInfoDAO dao = new HealthInfoDAO();
		dao.delete(sicId);
		dao.insert(sicId,chrdis,medi,bdp,allrgy);
		
		System.out.println("================"+sicId+chrdis+medi+bdp+allrgy+"=================================");
		return path;
	}

}
