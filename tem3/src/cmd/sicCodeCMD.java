package cmd;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import command.Command;
import kjr.CodeDAO;
import kjr.HealthInfoDAO;
import lastdto.seachCodeJoinDTO;
import net.sf.json.JSONArray;

public class sicCodeCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String path="/aView/kjr/SicCodeModify.jsp";
		HttpSession session = request.getSession(true);
		String sessionId = (String)session.getAttribute("memberId") ;//세션에서 회원 id를 당겨와서 넣어야함 *현재 임시로 아이디 입력
		String sicId = sessionId;
		CodeDAO dao = new CodeDAO();
		HealthInfoDAO hInfo= new HealthInfoDAO();
		
		ArrayList<seachCodeJoinDTO> list = dao.selectAll();
		ArrayList<String> codeList = hInfo.selectCode(sessionId);//회원이 선택한 코드 리스트 
		
		JSONArray sicCode = JSONArray.fromObject(codeList);
		request.setAttribute("list",list);//코드 전체리스트
		request.setAttribute("sicCode",sicCode);//회원이선택한 코드 전체리스트 
		return path;
	}

}
