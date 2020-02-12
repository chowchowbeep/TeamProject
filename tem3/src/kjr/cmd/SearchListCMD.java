package kjr.cmd;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;

public class SearchListCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String path ="aView/kjr/search_list.jsp"; //병원 검색결과 페이지로 이동
		String hosName;
		hosName=request.getParameter("hosName");
		
		System.out.println("병원명 = "+hosName);
		
		//병원명으로 검색한 병원리스트 조회하는 dao 필요!
		return path;
	}

}
