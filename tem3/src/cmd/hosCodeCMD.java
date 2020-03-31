package cmd;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import command.Command;
import kjr.CodeDAO;
import kjr.HHospitalProfileDAO;
import kjr.HealthInfoDAO;
import lastdto.hosMemberDTO;
import lastdto.seachCodeJoinDTO;
import net.sf.json.JSONArray;

public class hosCodeCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String path="/aView/kjr/hosCodeModify.jsp";
		HttpSession session = request.getSession(true);
		String sessionId = (String)session.getAttribute("memberId") ;//세션에서 회원 id를 당겨와서 넣어야함 *현재 임시로 아이디 입력
		String hosId = sessionId;
		CodeDAO dao = new CodeDAO();
		HealthInfoDAO hInfo= new HealthInfoDAO();
		
		ArrayList<seachCodeJoinDTO> list = dao.selectAll();
		
		CodeDAO codeDao = new CodeDAO();
		ArrayList<seachCodeJoinDTO> hosCodes = codeDao.selectAll(hosId);//검색코드정보
		ArrayList<String> codeList = new ArrayList<String>();
		for(seachCodeJoinDTO dto : hosCodes) {
			String code = dto.getCode();
			codeList.add(code);
			System.out.println(code);
		}
		
		JSONArray hosCode = JSONArray.fromObject(codeList);
		request.setAttribute("list",list);//코드 전체리스트
		request.setAttribute("hosCode",hosCode);//회원이선택한 코드 전체리스트 
		return path;
	}

}
